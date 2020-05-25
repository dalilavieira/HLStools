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

// SystemVerilog created from zlaswp_bb_B4_stall_region
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_bb_B4_stall_region (
    input wire [63:0] in_lm7_zlaswp_avm_readdata,
    input wire [0:0] in_lm7_zlaswp_avm_writeack,
    input wire [0:0] in_lm7_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm7_zlaswp_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_20_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_21_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked163,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm248_zlaswp_avm_readdata,
    input wire [0:0] in_lm248_zlaswp_avm_writeack,
    input wire [0:0] in_lm248_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm248_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm7_zlaswp_avm_address,
    output wire [0:0] out_lm7_zlaswp_avm_enable,
    output wire [0:0] out_lm7_zlaswp_avm_read,
    output wire [0:0] out_lm7_zlaswp_avm_write,
    output wire [63:0] out_lm7_zlaswp_avm_writedata,
    output wire [7:0] out_lm7_zlaswp_avm_byteenable,
    output wire [0:0] out_lm7_zlaswp_avm_burstcount,
    output wire [0:0] out_masked209,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm269_zlaswp_avm_readdata,
    input wire [0:0] in_lm269_zlaswp_avm_writeack,
    input wire [0:0] in_lm269_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm269_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm248_zlaswp_avm_address,
    output wire [0:0] out_lm248_zlaswp_avm_enable,
    output wire [0:0] out_lm248_zlaswp_avm_read,
    output wire [0:0] out_lm248_zlaswp_avm_write,
    output wire [63:0] out_lm248_zlaswp_avm_writedata,
    output wire [7:0] out_lm248_zlaswp_avm_byteenable,
    output wire [0:0] out_lm248_zlaswp_avm_burstcount,
    input wire [63:0] in_memdep_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_zlaswp_avm_writeack,
    input wire [0:0] in_memdep_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm269_zlaswp_avm_address,
    output wire [0:0] out_lm269_zlaswp_avm_enable,
    output wire [0:0] out_lm269_zlaswp_avm_read,
    output wire [0:0] out_lm269_zlaswp_avm_write,
    output wire [63:0] out_lm269_zlaswp_avm_writedata,
    output wire [7:0] out_lm269_zlaswp_avm_byteenable,
    output wire [0:0] out_lm269_zlaswp_avm_burstcount,
    input wire [63:0] in_lm2810_zlaswp_avm_readdata,
    input wire [0:0] in_lm2810_zlaswp_avm_writeack,
    input wire [0:0] in_lm2810_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm2810_zlaswp_avm_readdatavalid,
    output wire [63:0] out_memdep_zlaswp_avm_address,
    output wire [0:0] out_memdep_zlaswp_avm_enable,
    output wire [0:0] out_memdep_zlaswp_avm_read,
    output wire [0:0] out_memdep_zlaswp_avm_write,
    output wire [63:0] out_memdep_zlaswp_avm_writedata,
    output wire [7:0] out_memdep_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_zlaswp_avm_burstcount,
    input wire [63:0] in_memdep_31_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_31_zlaswp_avm_writeack,
    input wire [0:0] in_memdep_31_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_31_zlaswp_avm_readdatavalid,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [63:0] in_memdep_38_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_38_zlaswp_avm_writeack,
    input wire [0:0] in_memdep_38_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_38_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm2810_zlaswp_avm_address,
    output wire [0:0] out_lm2810_zlaswp_avm_enable,
    output wire [0:0] out_lm2810_zlaswp_avm_read,
    output wire [0:0] out_lm2810_zlaswp_avm_write,
    output wire [63:0] out_lm2810_zlaswp_avm_writedata,
    output wire [7:0] out_lm2810_zlaswp_avm_byteenable,
    output wire [0:0] out_lm2810_zlaswp_avm_burstcount,
    input wire [63:0] in_memdep_46_zlaswp_avm_readdata,
    input wire [0:0] in_memdep_46_zlaswp_avm_writeack,
    input wire [0:0] in_memdep_46_zlaswp_avm_waitrequest,
    input wire [0:0] in_memdep_46_zlaswp_avm_readdatavalid,
    output wire [63:0] out_memdep_31_zlaswp_avm_address,
    output wire [0:0] out_memdep_31_zlaswp_avm_enable,
    output wire [0:0] out_memdep_31_zlaswp_avm_read,
    output wire [0:0] out_memdep_31_zlaswp_avm_write,
    output wire [63:0] out_memdep_31_zlaswp_avm_writedata,
    output wire [7:0] out_memdep_31_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_31_zlaswp_avm_burstcount,
    output wire [0:0] out_lsu_memdep_31_o_active,
    output wire [63:0] out_memdep_38_zlaswp_avm_address,
    output wire [0:0] out_memdep_38_zlaswp_avm_enable,
    output wire [0:0] out_memdep_38_zlaswp_avm_read,
    output wire [0:0] out_memdep_38_zlaswp_avm_write,
    output wire [63:0] out_memdep_38_zlaswp_avm_writedata,
    output wire [7:0] out_memdep_38_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_38_zlaswp_avm_burstcount,
    output wire [0:0] out_lsu_memdep_38_o_active,
    output wire [63:0] out_memdep_46_zlaswp_avm_address,
    output wire [0:0] out_memdep_46_zlaswp_avm_enable,
    output wire [0:0] out_memdep_46_zlaswp_avm_read,
    output wire [0:0] out_memdep_46_zlaswp_avm_write,
    output wire [63:0] out_memdep_46_zlaswp_avm_writedata,
    output wire [7:0] out_memdep_46_zlaswp_avm_byteenable,
    output wire [0:0] out_memdep_46_zlaswp_avm_burstcount,
    output wire [0:0] out_lsu_memdep_46_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1102_q;
    wire [31:0] c_i32_1107_q;
    wire [31:0] c_i32_1111_q;
    wire [31:0] c_i32_31106_q;
    wire [31:0] c_i32_undef105_q;
    wire [6:0] c_i7_1110_q;
    wire [6:0] c_i7_31108_q;
    wire [32:0] i_add16_zlaswp10_a;
    wire [32:0] i_add16_zlaswp10_b;
    logic [32:0] i_add16_zlaswp10_o;
    wire [32:0] i_add16_zlaswp10_q;
    wire [32:0] i_add21_zlaswp20_a;
    wire [32:0] i_add21_zlaswp20_b;
    logic [32:0] i_add21_zlaswp20_o;
    wire [32:0] i_add21_zlaswp20_q;
    wire [32:0] i_add29_zlaswp56_a;
    wire [32:0] i_add29_zlaswp56_b;
    logic [32:0] i_add29_zlaswp56_o;
    wire [32:0] i_add29_zlaswp56_q;
    wire [1:0] i_cleanups_shl204_zlaswp3_vt_join_q;
    wire [0:0] i_cleanups_shl204_zlaswp3_vt_select_1_b;
    wire [33:0] i_cmp18_zlaswp16_a;
    wire [33:0] i_cmp18_zlaswp16_b;
    logic [33:0] i_cmp18_zlaswp16_o;
    wire [0:0] i_cmp18_zlaswp16_n;
    wire [0:0] i_first_cleanup205_xor_or_zlaswp34_q;
    wire [7:0] i_fpga_indvars_iv_next_zlaswp40_a;
    wire [7:0] i_fpga_indvars_iv_next_zlaswp40_b;
    logic [7:0] i_fpga_indvars_iv_next_zlaswp40_o;
    wire [7:0] i_fpga_indvars_iv_next_zlaswp40_q;
    wire [32:0] i_inc_zlaswp98_a;
    wire [32:0] i_inc_zlaswp98_b;
    logic [32:0] i_inc_zlaswp98_o;
    wire [32:0] i_inc_zlaswp98_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_dest_data_out_20_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm248_zlaswp53_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm248_zlaswp53_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm269_zlaswp60_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm269_zlaswp60_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm269_zlaswp60_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm2810_zlaswp72_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm7_zlaswp35_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm7_zlaswp35_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_lsu_memdep_31_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_lsu_memdep_38_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_lsu_memdep_46_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_lsu_memdep_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_zlaswp69_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_feedback_stall_out_53;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_feedback_stall_out_54;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_feedback_stall_out_55;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_feedback_stall_out_56;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_feedback_stall_out_49;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_valid_out;
    wire [6:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_feedback_out_53;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_feedback_valid_out_53;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_feedback_out_54;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_feedback_valid_out_54;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_feedback_out_55;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_feedback_valid_out_55;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_feedback_out_56;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_feedback_valid_out_56;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_feedback_valid_out_49;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_feedback_valid_out_57;
    wire [0:0] i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_valid_out;
    wire [0:0] i_masked209_zlaswp101_qi;
    reg [0:0] i_masked209_zlaswp101_q;
    wire [0:0] i_next_cleanups208_zlaswp47_s;
    reg [1:0] i_next_cleanups208_zlaswp47_q;
    wire [0:0] i_notcmp197_zlaswp44_q;
    wire [0:0] i_or207_zlaswp46_q;
    wire [0:0] i_phi_decision153_xor154_and_i0_zlaswp43_q;
    wire [0:0] i_phi_decision153_xor_and_i0_zlaswp25_qi;
    reg [0:0] i_phi_decision153_xor_and_i0_zlaswp25_q;
    wire [0:0] i_reduction_zlaswp_0_zlaswp29_q;
    wire [0:0] i_reduction_zlaswp_11_zlaswp66_q;
    wire [0:0] i_reduction_zlaswp_12_zlaswp67_qi;
    reg [0:0] i_reduction_zlaswp_12_zlaswp67_q;
    wire [0:0] i_reduction_zlaswp_13_zlaswp68_q;
    wire [0:0] i_reduction_zlaswp_17_zlaswp79_q;
    wire [0:0] i_reduction_zlaswp_19_zlaswp80_q;
    wire [0:0] i_reduction_zlaswp_1_zlaswp31_q;
    wire [0:0] i_reduction_zlaswp_20_zlaswp81_qi;
    reg [0:0] i_reduction_zlaswp_20_zlaswp81_q;
    wire [0:0] i_reduction_zlaswp_21_zlaswp82_q;
    wire [0:0] i_reduction_zlaswp_22_zlaswp85_q;
    wire [0:0] i_reduction_zlaswp_23_zlaswp86_q;
    wire [0:0] i_reduction_zlaswp_24_zlaswp87_q;
    wire [0:0] i_reduction_zlaswp_25_zlaswp88_qi;
    reg [0:0] i_reduction_zlaswp_25_zlaswp88_q;
    wire [0:0] i_reduction_zlaswp_26_zlaswp89_q;
    wire [0:0] i_reduction_zlaswp_28_zlaswp92_q;
    wire [0:0] i_reduction_zlaswp_29_zlaswp93_q;
    wire [0:0] i_reduction_zlaswp_2_zlaswp33_q;
    wire [0:0] i_reduction_zlaswp_30_zlaswp94_qi;
    reg [0:0] i_reduction_zlaswp_30_zlaswp94_q;
    wire [0:0] i_reduction_zlaswp_31_zlaswp95_q;
    wire [0:0] i_reduction_zlaswp_3_zlaswp50_q;
    wire [0:0] i_reduction_zlaswp_4_zlaswp51_q;
    wire [0:0] i_reduction_zlaswp_5_zlaswp52_q;
    wire [0:0] i_reduction_zlaswp_9_zlaswp65_q;
    wire [0:0] i_storemerge71_replace_phi_zlaswp8_s;
    reg [31:0] i_storemerge71_replace_phi_zlaswp8_q;
    wire [31:0] i_unnamed_zlaswp12_q;
    wire [0:0] i_unnamed_zlaswp26_q;
    wire [0:0] i_xor206_zlaswp2_q;
    wire [31:0] bgTrunc_i_add16_zlaswp10_sel_x_b;
    wire [31:0] bgTrunc_i_add21_zlaswp20_sel_x_b;
    wire [31:0] bgTrunc_i_add29_zlaswp56_sel_x_b;
    wire [6:0] bgTrunc_i_fpga_indvars_iv_next_zlaswp40_sel_x_b;
    wire [31:0] bgTrunc_i_inc_zlaswp98_sel_x_b;
    wire [63:0] bgTrunc_i_mul20_zlaswp18_sel_x_in;
    wire [31:0] bgTrunc_i_mul20_zlaswp18_sel_x_b;
    wire [64:0] i_add_ptr_zlaswp0_add_x_a;
    wire [64:0] i_add_ptr_zlaswp0_add_x_b;
    logic [64:0] i_add_ptr_zlaswp0_add_x_o;
    wire [64:0] i_add_ptr_zlaswp0_add_x_q;
    wire [127:0] i_add_ptr_zlaswp0_mult_extender_x_q;
    wire [59:0] i_add_ptr_zlaswp0_mult_multconst_x_q;
    wire [63:0] i_add_ptr_zlaswp0_trunc_sel_x_b;
    wire [63:0] i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx23_zlaswp0_add_x_a;
    wire [64:0] i_arrayidx23_zlaswp0_add_x_b;
    logic [64:0] i_arrayidx23_zlaswp0_add_x_o;
    wire [64:0] i_arrayidx23_zlaswp0_add_x_q;
    wire [127:0] i_arrayidx23_zlaswp0_mult_extender_x_q;
    wire [63:0] i_arrayidx23_zlaswp0_trunc_sel_x_b;
    wire [63:0] i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx31_zlaswp0_add_x_a;
    wire [64:0] i_arrayidx31_zlaswp0_add_x_b;
    logic [64:0] i_arrayidx31_zlaswp0_add_x_o;
    wire [64:0] i_arrayidx31_zlaswp0_add_x_q;
    wire [127:0] i_arrayidx31_zlaswp0_mult_extender_x_q;
    wire [63:0] i_arrayidx31_zlaswp0_trunc_sel_x_b;
    wire [63:0] i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup205_zlaswp1_sel_x_b;
    wire [63:0] i_idx_neg_zlaswp13_sel_x_b;
    wire [63:0] i_idxprom22_zlaswp21_sel_x_b;
    wire [63:0] i_idxprom30_zlaswp57_sel_x_b;
    wire [0:0] i_lm248_toi1_intcast22_zlaswp54_sel_x_b;
    wire [0:0] i_lm269_toi1_intcast_zlaswp61_sel_x_b;
    wire [0:0] i_lm2810_toi1_intcast_zlaswp73_sel_x_b;
    wire [0:0] i_lm7_toi1_intcast20_zlaswp36_sel_x_b;
    wire [64:0] i_r32_zlaswp0_add_x_a;
    wire [64:0] i_r32_zlaswp0_add_x_b;
    logic [64:0] i_r32_zlaswp0_add_x_o;
    wire [64:0] i_r32_zlaswp0_add_x_q;
    wire [63:0] i_r32_zlaswp0_c_i64_41_x_q;
    wire [63:0] i_r32_zlaswp0_trunc_sel_x_b;
    wire [64:0] i_r_zlaswp0_add_x_a;
    wire [64:0] i_r_zlaswp0_add_x_b;
    logic [64:0] i_r_zlaswp0_add_x_o;
    wire [64:0] i_r_zlaswp0_add_x_q;
    wire [63:0] i_r_zlaswp0_trunc_sel_x_b;
    wire [0:0] zlaswp_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] zlaswp_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_exitcond_zlaswp38_cmp_nsign_q;
    wire [63:0] i_mul20_zlaswp18_sums_join_0_q;
    wire [50:0] i_mul20_zlaswp18_sums_align_1_q;
    wire [50:0] i_mul20_zlaswp18_sums_align_1_qint;
    wire [64:0] i_mul20_zlaswp18_sums_result_add_0_0_a;
    wire [64:0] i_mul20_zlaswp18_sums_result_add_0_0_b;
    logic [64:0] i_mul20_zlaswp18_sums_result_add_0_0_o;
    wire [64:0] i_mul20_zlaswp18_sums_result_add_0_0_q;
    wire [35:0] i_add_ptr_zlaswp0_mult_x_sums_align_0_q;
    wire [35:0] i_add_ptr_zlaswp0_mult_x_sums_align_0_qint;
    wire [57:0] i_add_ptr_zlaswp0_mult_x_sums_join_1_q;
    wire [39:0] i_add_ptr_zlaswp0_mult_x_sums_align_2_q;
    wire [39:0] i_add_ptr_zlaswp0_mult_x_sums_align_2_qint;
    wire [27:0] i_add_ptr_zlaswp0_mult_x_sums_align_3_q;
    wire [27:0] i_add_ptr_zlaswp0_mult_x_sums_align_3_qint;
    wire [67:0] i_add_ptr_zlaswp0_mult_x_sums_join_4_q;
    wire [68:0] i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_a;
    wire [68:0] i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_b;
    logic [68:0] i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_o;
    wire [68:0] i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx23_zlaswp0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx23_zlaswp0_mult_x_sums_align_0_qint;
    wire [57:0] i_arrayidx23_zlaswp0_mult_x_sums_join_1_q;
    wire [39:0] i_arrayidx23_zlaswp0_mult_x_sums_align_2_q;
    wire [39:0] i_arrayidx23_zlaswp0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx23_zlaswp0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx23_zlaswp0_mult_x_sums_align_3_qint;
    wire [67:0] i_arrayidx23_zlaswp0_mult_x_sums_join_4_q;
    wire [68:0] i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_a;
    wire [68:0] i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_b;
    logic [68:0] i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_o;
    wire [68:0] i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx31_zlaswp0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx31_zlaswp0_mult_x_sums_align_0_qint;
    wire [57:0] i_arrayidx31_zlaswp0_mult_x_sums_join_1_q;
    wire [39:0] i_arrayidx31_zlaswp0_mult_x_sums_align_2_q;
    wire [39:0] i_arrayidx31_zlaswp0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx31_zlaswp0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx31_zlaswp0_mult_x_sums_align_3_qint;
    wire [67:0] i_arrayidx31_zlaswp0_mult_x_sums_join_4_q;
    wire [68:0] i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_a;
    wire [68:0] i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_b;
    logic [68:0] i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_o;
    wire [68:0] i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid396_i_cleanups_shl204_zlaswp0_shift_x_q;
    wire [0:0] leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_s;
    reg [1:0] leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_q;
    wire [12:0] i_add_ptr_zlaswp0_mult_x_im0_shift0_q;
    wire [12:0] i_add_ptr_zlaswp0_mult_x_im0_shift0_qint;
    wire [20:0] i_add_ptr_zlaswp0_mult_x_im3_shift0_q;
    wire [20:0] i_add_ptr_zlaswp0_mult_x_im3_shift0_qint;
    wire [20:0] i_add_ptr_zlaswp0_mult_x_im6_shift0_q;
    wire [20:0] i_add_ptr_zlaswp0_mult_x_im6_shift0_qint;
    wire [20:0] i_add_ptr_zlaswp0_mult_x_im9_shift0_q;
    wire [20:0] i_add_ptr_zlaswp0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx23_zlaswp0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx23_zlaswp0_mult_x_im0_shift0_qint;
    wire [20:0] i_arrayidx23_zlaswp0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx23_zlaswp0_mult_x_im3_shift0_qint;
    wire [20:0] i_arrayidx23_zlaswp0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx23_zlaswp0_mult_x_im6_shift0_qint;
    wire [20:0] i_arrayidx23_zlaswp0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx23_zlaswp0_mult_x_im9_shift0_qint;
    wire [12:0] i_arrayidx31_zlaswp0_mult_x_im0_shift0_q;
    wire [12:0] i_arrayidx31_zlaswp0_mult_x_im0_shift0_qint;
    wire [20:0] i_arrayidx31_zlaswp0_mult_x_im3_shift0_q;
    wire [20:0] i_arrayidx31_zlaswp0_mult_x_im3_shift0_qint;
    wire [20:0] i_arrayidx31_zlaswp0_mult_x_im6_shift0_q;
    wire [20:0] i_arrayidx31_zlaswp0_mult_x_im6_shift0_qint;
    wire [20:0] i_arrayidx31_zlaswp0_mult_x_im9_shift0_q;
    wire [20:0] i_arrayidx31_zlaswp0_mult_x_im9_shift0_qint;
    wire i_mul20_zlaswp18_im0_cma_reset;
    wire [13:0] i_mul20_zlaswp18_im0_cma_a0;
    wire [13:0] i_mul20_zlaswp18_im0_cma_c0;
    wire [27:0] i_mul20_zlaswp18_im0_cma_s0;
    wire [27:0] i_mul20_zlaswp18_im0_cma_qq;
    wire [27:0] i_mul20_zlaswp18_im0_cma_q;
    wire i_mul20_zlaswp18_im0_cma_ena0;
    wire i_mul20_zlaswp18_im0_cma_ena1;
    wire i_mul20_zlaswp18_im0_cma_ena2;
    wire i_mul20_zlaswp18_im8_cma_reset;
    wire [17:0] i_mul20_zlaswp18_im8_cma_a0;
    wire [17:0] i_mul20_zlaswp18_im8_cma_c0;
    wire [35:0] i_mul20_zlaswp18_im8_cma_s0;
    wire [35:0] i_mul20_zlaswp18_im8_cma_qq;
    wire [35:0] i_mul20_zlaswp18_im8_cma_q;
    wire i_mul20_zlaswp18_im8_cma_ena0;
    wire i_mul20_zlaswp18_im8_cma_ena1;
    wire i_mul20_zlaswp18_im8_cma_ena2;
    wire i_mul20_zlaswp18_ma3_cma_reset;
    wire [13:0] i_mul20_zlaswp18_ma3_cma_a0;
    wire [17:0] i_mul20_zlaswp18_ma3_cma_c0;
    wire [13:0] i_mul20_zlaswp18_ma3_cma_a1;
    wire [17:0] i_mul20_zlaswp18_ma3_cma_c1;
    wire [32:0] i_mul20_zlaswp18_ma3_cma_s0;
    wire [32:0] i_mul20_zlaswp18_ma3_cma_qq;
    wire [32:0] i_mul20_zlaswp18_ma3_cma_q;
    wire i_mul20_zlaswp18_ma3_cma_ena0;
    wire i_mul20_zlaswp18_ma3_cma_ena1;
    wire i_mul20_zlaswp18_ma3_cma_ena2;
    wire [13:0] i_mul20_zlaswp18_bs2_merged_bit_select_b;
    wire [17:0] i_mul20_zlaswp18_bs2_merged_bit_select_c;
    wire [13:0] i_mul20_zlaswp18_bs1_merged_bit_select_b;
    wire [17:0] i_mul20_zlaswp18_bs1_merged_bit_select_c;
    wire [9:0] i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_e;
    wire [0:0] redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in;
    wire redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in;
    wire redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_in;
    wire [0:0] redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out;
    wire redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out;
    wire redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_out;
    reg [0:0] redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_q;
    reg [0:0] redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_q;
    reg [0:0] redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_q;
    reg [0:0] redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_q;
    reg [0:0] redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q;
    wire [0:0] redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_in;
    wire redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_in;
    wire redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_data_in;
    wire [0:0] redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_out;
    wire redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_out;
    wire redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_data_out;
    wire [0:0] redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_in;
    wire redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_in;
    wire redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_data_in;
    wire [0:0] redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_out;
    wire redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_out;
    wire redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_data_out;
    wire [0:0] redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_in;
    wire redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_in;
    wire redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_data_in;
    wire [0:0] redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_out;
    wire redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_out;
    wire redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_data_out;
    reg [63:0] redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_q;
    wire [0:0] redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_in;
    wire redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_in;
    wire redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_data_in;
    wire [0:0] redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_out;
    wire redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_out;
    wire redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_data_out;
    reg [63:0] redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_q;
    reg [63:0] redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_q;
    reg [31:0] redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_q;
    wire [0:0] redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_in;
    wire redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_in;
    wire redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_data_in;
    wire [0:0] redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_out;
    wire redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_out;
    wire redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_data_out;
    wire [0:0] redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_in;
    wire redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_in;
    wire redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_data_in;
    wire [0:0] redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_out;
    wire redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_out;
    wire redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_data_out;
    wire [0:0] redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_in;
    wire redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_in;
    wire redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_data_in;
    wire [0:0] redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_out;
    wire redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_out;
    wire redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_data_out;
    wire [0:0] redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_in;
    wire redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_in;
    wire redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_data_in;
    wire [0:0] redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_out;
    wire redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_out;
    wire redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_data_out;
    reg [0:0] redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_q;
    reg [0:0] redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_q;
    reg [0:0] redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_q;
    wire [0:0] redist16_i_or207_zlaswp46_q_32_fifo_valid_in;
    wire redist16_i_or207_zlaswp46_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_or207_zlaswp46_q_32_fifo_stall_in;
    wire redist16_i_or207_zlaswp46_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_i_or207_zlaswp46_q_32_fifo_data_in;
    wire [0:0] redist16_i_or207_zlaswp46_q_32_fifo_valid_out;
    wire redist16_i_or207_zlaswp46_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_or207_zlaswp46_q_32_fifo_stall_out;
    wire redist16_i_or207_zlaswp46_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_i_or207_zlaswp46_q_32_fifo_data_out;
    wire [0:0] redist17_i_or207_zlaswp46_q_63_fifo_valid_in;
    wire redist17_i_or207_zlaswp46_q_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_or207_zlaswp46_q_63_fifo_stall_in;
    wire redist17_i_or207_zlaswp46_q_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_or207_zlaswp46_q_63_fifo_data_in;
    wire [0:0] redist17_i_or207_zlaswp46_q_63_fifo_valid_out;
    wire redist17_i_or207_zlaswp46_q_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_or207_zlaswp46_q_63_fifo_stall_out;
    wire redist17_i_or207_zlaswp46_q_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_or207_zlaswp46_q_63_fifo_data_out;
    wire [0:0] redist18_i_masked209_zlaswp101_q_94_fifo_valid_in;
    wire redist18_i_masked209_zlaswp101_q_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_masked209_zlaswp101_q_94_fifo_stall_in;
    wire redist18_i_masked209_zlaswp101_q_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_masked209_zlaswp101_q_94_fifo_data_in;
    wire [0:0] redist18_i_masked209_zlaswp101_q_94_fifo_valid_out;
    wire redist18_i_masked209_zlaswp101_q_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_masked209_zlaswp101_q_94_fifo_stall_out;
    wire redist18_i_masked209_zlaswp101_q_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_masked209_zlaswp101_q_94_fifo_data_out;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_q;
    reg [0:0] redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_in;
    wire redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_in;
    wire redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_data_in;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_out;
    wire redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_out;
    wire redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_data_out;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_data_out;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_in;
    wire redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_in;
    wire redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_data_in;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_out;
    wire redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_out;
    wire redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_data_out;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_q;
    wire [0:0] redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_in;
    wire redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_in;
    wire redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_data_in;
    wire [0:0] redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_out;
    wire redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_out;
    wire redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_data_out;
    wire [0:0] redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_in;
    wire redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_in;
    wire redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_data_in;
    wire [0:0] redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_out;
    wire redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_out;
    wire redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm248_zlaswp53_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm248_zlaswp53_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm269_zlaswp60_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm269_zlaswp60_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm2810_zlaswp72_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm2810_zlaswp72_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm7_zlaswp35_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm7_zlaswp35_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_31_zlaswp83_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_31_zlaswp83_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_38_zlaswp90_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_46_zlaswp96_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_zlaswp69_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_zlaswp69_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going200_zlaswp4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going200_zlaswp4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_b;
    wire [6:0] bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_q;
    wire [6:0] bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_zlaswp_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_zlaswp_B4_merge_reg_aunroll_x_b;
    wire [27:0] bubble_join_i_mul20_zlaswp18_im0_cma_q;
    wire [27:0] bubble_select_i_mul20_zlaswp18_im0_cma_b;
    wire [35:0] bubble_join_i_mul20_zlaswp18_im8_cma_q;
    wire [35:0] bubble_select_i_mul20_zlaswp18_im8_cma_b;
    wire [32:0] bubble_join_i_mul20_zlaswp18_ma3_cma_q;
    wire [32:0] bubble_select_i_mul20_zlaswp18_ma3_cma_b;
    wire [0:0] bubble_join_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_q;
    wire [0:0] bubble_select_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b;
    wire [63:0] bubble_join_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_q;
    wire [63:0] bubble_select_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_b;
    wire [63:0] bubble_join_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_q;
    wire [63:0] bubble_select_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_b;
    wire [63:0] bubble_join_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_q;
    wire [63:0] bubble_select_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_b;
    wire [63:0] bubble_join_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_q;
    wire [63:0] bubble_select_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_b;
    wire [0:0] bubble_join_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_q;
    wire [0:0] bubble_select_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_b;
    wire [0:0] bubble_join_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_q;
    wire [0:0] bubble_select_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_b;
    wire [0:0] bubble_join_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_q;
    wire [0:0] bubble_select_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_b;
    wire [0:0] bubble_join_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_q;
    wire [0:0] bubble_select_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_b;
    wire [0:0] bubble_join_redist16_i_or207_zlaswp46_q_32_fifo_q;
    wire [0:0] bubble_select_redist16_i_or207_zlaswp46_q_32_fifo_b;
    wire [0:0] bubble_join_redist17_i_or207_zlaswp46_q_63_fifo_q;
    wire [0:0] bubble_select_redist17_i_or207_zlaswp46_q_63_fifo_b;
    wire [0:0] bubble_join_redist18_i_masked209_zlaswp101_q_94_fifo_q;
    wire [0:0] bubble_select_redist18_i_masked209_zlaswp101_q_94_fifo_b;
    wire [0:0] bubble_join_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_q;
    wire [0:0] bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b;
    wire [0:0] bubble_join_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_q;
    wire [0:0] bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_b;
    wire [0:0] bubble_join_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_q;
    wire [0:0] bubble_select_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_b;
    wire [31:0] bubble_join_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_q;
    wire [31:0] bubble_select_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_b;
    wire [31:0] bubble_join_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_q;
    wire [31:0] bubble_select_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_b;
    reg [0:0] SE_i_cmp18_zlaswp16_R_v_0;
    wire [0:0] SE_i_cmp18_zlaswp16_v_s_0;
    wire [0:0] SE_i_cmp18_zlaswp16_s_tv_0;
    wire [0:0] SE_i_cmp18_zlaswp16_backEN;
    wire [0:0] SE_i_cmp18_zlaswp16_and0;
    wire [0:0] SE_i_cmp18_zlaswp16_backStall;
    wire [0:0] SE_i_cmp18_zlaswp16_V0;
    wire [0:0] SE_i_first_cleanup205_xor_or_zlaswp34_wireValid;
    wire [0:0] SE_i_first_cleanup205_xor_or_zlaswp34_and0;
    wire [0:0] SE_i_first_cleanup205_xor_or_zlaswp34_and1;
    wire [0:0] SE_i_first_cleanup205_xor_or_zlaswp34_and2;
    wire [0:0] SE_i_first_cleanup205_xor_or_zlaswp34_backStall;
    wire [0:0] SE_i_first_cleanup205_xor_or_zlaswp34_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_V0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_and0;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm248_zlaswp53_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm248_zlaswp53_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm248_zlaswp53_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm248_zlaswp53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm248_zlaswp53_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm269_zlaswp60_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm269_zlaswp60_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm269_zlaswp60_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm269_zlaswp60_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm269_zlaswp60_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm269_zlaswp60_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_and1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_zlaswp69_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg2;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg2;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed2;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg3;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg4;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg4;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed4;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg5;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg5;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed5;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or2;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or4;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V2;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V4;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V5;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall;
    reg [0:0] SE_i_masked209_zlaswp101_R_v_0;
    wire [0:0] SE_i_masked209_zlaswp101_v_s_0;
    wire [0:0] SE_i_masked209_zlaswp101_s_tv_0;
    wire [0:0] SE_i_masked209_zlaswp101_backEN;
    wire [0:0] SE_i_masked209_zlaswp101_and0;
    wire [0:0] SE_i_masked209_zlaswp101_backStall;
    wire [0:0] SE_i_masked209_zlaswp101_V0;
    reg [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0;
    wire [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_v_s_0;
    wire [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_s_tv_0;
    wire [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_backEN;
    wire [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_and0;
    wire [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_backStall;
    wire [0:0] SE_i_phi_decision153_xor_and_i0_zlaswp25_V0;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_wireStall;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_StallValid;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_toReg0;
    reg [0:0] SE_i_reduction_zlaswp_0_zlaswp29_fromReg0;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_consumed0;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_toReg1;
    reg [0:0] SE_i_reduction_zlaswp_0_zlaswp29_fromReg1;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_consumed1;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_and0;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_or0;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_backStall;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_V0;
    wire [0:0] SE_i_reduction_zlaswp_0_zlaswp29_V1;
    reg [0:0] SE_i_reduction_zlaswp_12_zlaswp67_R_v_0;
    wire [0:0] SE_i_reduction_zlaswp_12_zlaswp67_v_s_0;
    wire [0:0] SE_i_reduction_zlaswp_12_zlaswp67_s_tv_0;
    wire [0:0] SE_i_reduction_zlaswp_12_zlaswp67_backEN;
    wire [0:0] SE_i_reduction_zlaswp_12_zlaswp67_and0;
    wire [0:0] SE_i_reduction_zlaswp_12_zlaswp67_backStall;
    wire [0:0] SE_i_reduction_zlaswp_12_zlaswp67_V0;
    wire [0:0] SE_i_reduction_zlaswp_19_zlaswp80_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_19_zlaswp80_and0;
    wire [0:0] SE_i_reduction_zlaswp_19_zlaswp80_backStall;
    wire [0:0] SE_i_reduction_zlaswp_19_zlaswp80_V0;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_wireStall;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_StallValid;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_toReg0;
    reg [0:0] SE_i_reduction_zlaswp_1_zlaswp31_fromReg0;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_consumed0;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_toReg1;
    reg [0:0] SE_i_reduction_zlaswp_1_zlaswp31_fromReg1;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_consumed1;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_and0;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_and1;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_or0;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_backStall;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_V0;
    wire [0:0] SE_i_reduction_zlaswp_1_zlaswp31_V1;
    reg [0:0] SE_i_reduction_zlaswp_20_zlaswp81_R_v_0;
    wire [0:0] SE_i_reduction_zlaswp_20_zlaswp81_v_s_0;
    wire [0:0] SE_i_reduction_zlaswp_20_zlaswp81_s_tv_0;
    wire [0:0] SE_i_reduction_zlaswp_20_zlaswp81_backEN;
    wire [0:0] SE_i_reduction_zlaswp_20_zlaswp81_and0;
    wire [0:0] SE_i_reduction_zlaswp_20_zlaswp81_backStall;
    wire [0:0] SE_i_reduction_zlaswp_20_zlaswp81_V0;
    wire [0:0] SE_i_reduction_zlaswp_23_zlaswp86_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_23_zlaswp86_and0;
    wire [0:0] SE_i_reduction_zlaswp_23_zlaswp86_and1;
    wire [0:0] SE_i_reduction_zlaswp_23_zlaswp86_and2;
    wire [0:0] SE_i_reduction_zlaswp_23_zlaswp86_backStall;
    wire [0:0] SE_i_reduction_zlaswp_23_zlaswp86_V0;
    reg [0:0] SE_i_reduction_zlaswp_25_zlaswp88_R_v_0;
    wire [0:0] SE_i_reduction_zlaswp_25_zlaswp88_v_s_0;
    wire [0:0] SE_i_reduction_zlaswp_25_zlaswp88_s_tv_0;
    wire [0:0] SE_i_reduction_zlaswp_25_zlaswp88_backEN;
    wire [0:0] SE_i_reduction_zlaswp_25_zlaswp88_and0;
    wire [0:0] SE_i_reduction_zlaswp_25_zlaswp88_backStall;
    wire [0:0] SE_i_reduction_zlaswp_25_zlaswp88_V0;
    wire [0:0] SE_i_reduction_zlaswp_28_zlaswp92_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_28_zlaswp92_and0;
    wire [0:0] SE_i_reduction_zlaswp_28_zlaswp92_and1;
    wire [0:0] SE_i_reduction_zlaswp_28_zlaswp92_backStall;
    wire [0:0] SE_i_reduction_zlaswp_28_zlaswp92_V0;
    reg [0:0] SE_i_reduction_zlaswp_30_zlaswp94_R_v_0;
    wire [0:0] SE_i_reduction_zlaswp_30_zlaswp94_v_s_0;
    wire [0:0] SE_i_reduction_zlaswp_30_zlaswp94_s_tv_0;
    wire [0:0] SE_i_reduction_zlaswp_30_zlaswp94_backEN;
    wire [0:0] SE_i_reduction_zlaswp_30_zlaswp94_and0;
    wire [0:0] SE_i_reduction_zlaswp_30_zlaswp94_backStall;
    wire [0:0] SE_i_reduction_zlaswp_30_zlaswp94_V0;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_wireStall;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_StallValid;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_toReg0;
    reg [0:0] SE_i_reduction_zlaswp_3_zlaswp50_fromReg0;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_consumed0;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_toReg1;
    reg [0:0] SE_i_reduction_zlaswp_3_zlaswp50_fromReg1;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_consumed1;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_and0;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_or0;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_backStall;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_V0;
    wire [0:0] SE_i_reduction_zlaswp_3_zlaswp50_V1;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_wireStall;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_StallValid;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_toReg0;
    reg [0:0] SE_i_reduction_zlaswp_4_zlaswp51_fromReg0;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_consumed0;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_toReg1;
    reg [0:0] SE_i_reduction_zlaswp_4_zlaswp51_fromReg1;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_consumed1;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_and0;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_and1;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_or0;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_backStall;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_V0;
    wire [0:0] SE_i_reduction_zlaswp_4_zlaswp51_V1;
    wire [0:0] SE_i_reduction_zlaswp_9_zlaswp65_wireValid;
    wire [0:0] SE_i_reduction_zlaswp_9_zlaswp65_and0;
    wire [0:0] SE_i_reduction_zlaswp_9_zlaswp65_and1;
    wire [0:0] SE_i_reduction_zlaswp_9_zlaswp65_backStall;
    wire [0:0] SE_i_reduction_zlaswp_9_zlaswp65_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_wireStall;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_StallValid;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_toReg0;
    reg [0:0] SE_i_arrayidx23_zlaswp0_add_x_fromReg0;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_consumed0;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_toReg1;
    reg [0:0] SE_i_arrayidx23_zlaswp0_add_x_fromReg1;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_consumed1;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_toReg2;
    reg [0:0] SE_i_arrayidx23_zlaswp0_add_x_fromReg2;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_consumed2;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_toReg3;
    reg [0:0] SE_i_arrayidx23_zlaswp0_add_x_fromReg3;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_consumed3;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_and0;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_or0;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_or1;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_or2;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_backStall;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_V0;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_V1;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_V2;
    wire [0:0] SE_i_arrayidx23_zlaswp0_add_x_V3;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_wireValid;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_wireStall;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_StallValid;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_toReg0;
    reg [0:0] SE_i_arrayidx31_zlaswp0_add_x_fromReg0;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_consumed0;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_toReg1;
    reg [0:0] SE_i_arrayidx31_zlaswp0_add_x_fromReg1;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_consumed1;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_toReg2;
    reg [0:0] SE_i_arrayidx31_zlaswp0_add_x_fromReg2;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_consumed2;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_toReg3;
    reg [0:0] SE_i_arrayidx31_zlaswp0_add_x_fromReg3;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_consumed3;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_and0;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_or0;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_or1;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_or2;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_backStall;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_V0;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_V1;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_V2;
    wire [0:0] SE_i_arrayidx31_zlaswp0_add_x_V3;
    wire [0:0] SE_i_lm269_toi1_intcast_zlaswp61_sel_x_wireValid;
    wire [0:0] SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall;
    wire [0:0] SE_i_lm269_toi1_intcast_zlaswp61_sel_x_V0;
    wire [0:0] SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_wireValid;
    wire [0:0] SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall;
    wire [0:0] SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_V0;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg7;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg7;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed7;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg8;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg8;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed8;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg9;
    reg [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg9;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed9;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or6;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or7;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_or8;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V6;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V7;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V8;
    wire [0:0] SE_out_zlaswp_B4_merge_reg_aunroll_x_V9;
    wire [0:0] SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_V0;
    reg [0:0] SE_i_mul20_zlaswp18_im0_cma_R_s_0;
    reg [0:0] SE_i_mul20_zlaswp18_im0_cma_R_s_1;
    reg [0:0] SE_i_mul20_zlaswp18_im0_cma_R_v_0;
    reg [0:0] SE_i_mul20_zlaswp18_im0_cma_R_v_1;
    reg [0:0] SE_i_mul20_zlaswp18_im0_cma_R_v_2;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_v_s_0;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_backEN;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_and0;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_or0;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_or1;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_backStall;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_V0;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_V1;
    wire [0:0] SE_i_mul20_zlaswp18_im0_cma_V2;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireStall;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg0;
    reg [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg1;
    reg [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg2;
    reg [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg2;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed2;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or0;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or1;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V0;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V1;
    wire [0:0] SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V2;
    reg [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0;
    reg [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_v_s_0;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_0;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_1;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backEN;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_or0;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backStall;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_V0;
    wire [0:0] SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_V1;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_v_s_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_s_tv_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backEN;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backStall;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_V0;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_v_s_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_s_tv_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backEN;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backStall;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_V0;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_v_s_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_s_tv_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backEN;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backStall;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_V0;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8;
    reg [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_1;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_2;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_3;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_4;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_5;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_6;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_7;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_8;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_9;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or1;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or2;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or3;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or4;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or5;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or6;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or7;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or8;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backStall;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V0;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V1;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V2;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V3;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V4;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V5;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V6;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V7;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V8;
    wire [0:0] SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V9;
    reg [0:0] SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_V0;
    reg [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_or0;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_or1;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V0;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V1;
    wire [0:0] SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V2;
    reg [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_or0;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V0;
    wire [0:0] SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V1;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and0;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and1;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and2;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and3;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall;
    wire [0:0] SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_V0;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and0;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and1;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and2;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and3;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall;
    wire [0:0] SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_V0;
    reg [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_v_s_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_s_tv_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backEN;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backStall;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_V0;
    reg [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_v_s_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_s_tv_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backEN;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backStall;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_V0;
    reg [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_v_s_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_s_tv_0;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backEN;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backStall;
    wire [0:0] SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_V0;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg2;
    reg [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg2;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed2;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_or0;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_or1;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_backStall;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V0;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V1;
    wire [0:0] SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V2;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireStall;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_StallValid;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_toReg0;
    reg [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg0;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed0;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_toReg1;
    reg [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg1;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed1;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_or0;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_backStall;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_V0;
    wire [0:0] SE_out_redist17_i_or207_zlaswp46_q_63_fifo_V1;
    wire [0:0] SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid;
    wire [0:0] SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_backStall;
    wire [0:0] SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_V0;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and0;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and1;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and2;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and3;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall;
    wire [0:0] SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_V0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1;
    reg [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_2;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_or0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_or1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backStall;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V0;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V1;
    wire [0:0] SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireStall;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg0;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg1;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg2;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg3;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg3;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed3;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg4;
    reg [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg4;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed4;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or3;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_backStall;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V0;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V1;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V2;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V3;
    wire [0:0] SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V4;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_StallValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg0;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg1;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg2;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_or0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_or1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V2;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_StallValid;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_toReg0;
    reg [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_toReg1;
    reg [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed1;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_or0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_backStall;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_V0;
    wire [0:0] SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_V1;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_V0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0;
    reg [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_v_s_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_1;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backEN;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_or0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backStall;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_V0;
    wire [0:0] SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_V1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_wireValid;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and0;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and1;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and2;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and3;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall;
    wire [0:0] SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_V0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and0;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and1;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and2;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and3;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall;
    wire [0:0] SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_V0;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_wireValid;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_backStall;
    wire [0:0] SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_V0;
    wire [0:0] SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_and0;
    wire [0:0] SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_and1;
    wire [0:0] SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_in;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_out;
    wire bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_i_valid;
    reg [0:0] SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid;
    reg [0:0] SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_data0;
    wire [0:0] SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backStall;
    wire [0:0] SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V;
    wire [0:0] SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_D0;
    wire [0:0] SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_i_valid;
    reg [0:0] SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid;
    reg [0:0] SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_data0;
    wire [0:0] SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backStall;
    wire [0:0] SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_V;
    wire [0:0] SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_D0;
    wire [0:0] SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_D1;
    wire [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_i_valid;
    reg [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid;
    wire [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_and0;
    reg [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data0;
    reg [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data1;
    wire [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall;
    wire [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_V;
    wire [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_D0;
    wire [0:0] SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_D1;
    wire [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_i_valid;
    reg [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid;
    wire [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_and0;
    reg [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data0;
    reg [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data1;
    wire [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall;
    wire [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_V;
    wire [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_D0;
    wire [0:0] SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_D1;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_i_valid;
    reg [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid;
    reg [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_data0;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backStall;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_V;
    wire [0:0] SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_D1;


    // SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99(STALLENABLE,742)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_V0 = SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall = i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_and0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V2;
    assign SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V1 & SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_and0;

    // i_r32_zlaswp0_c_i64_41_x(CONSTANT,297)
    assign i_r32_zlaswp0_c_i64_41_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_add_ptr_zlaswp0_mult_multconst_x(CONSTANT,261)
    assign i_add_ptr_zlaswp0_mult_multconst_x_q = $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);

    // bubble_select_i_mul20_zlaswp18_ma3_cma(BITSELECT,599)
    assign bubble_select_i_mul20_zlaswp18_ma3_cma_b = $unsigned(bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_data_out[32:0]);

    // i_mul20_zlaswp18_sums_align_1(BITSHIFT,334)@99
    assign i_mul20_zlaswp18_sums_align_1_qint = { bubble_select_i_mul20_zlaswp18_ma3_cma_b, 18'b000000000000000000 };
    assign i_mul20_zlaswp18_sums_align_1_q = i_mul20_zlaswp18_sums_align_1_qint[50:0];

    // bubble_select_i_mul20_zlaswp18_im0_cma(BITSELECT,593)
    assign bubble_select_i_mul20_zlaswp18_im0_cma_b = $unsigned(bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_data_out[27:0]);

    // bubble_select_i_mul20_zlaswp18_im8_cma(BITSELECT,596)
    assign bubble_select_i_mul20_zlaswp18_im8_cma_b = $unsigned(bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_data_out[35:0]);

    // i_mul20_zlaswp18_sums_join_0(BITJOIN,333)@99
    assign i_mul20_zlaswp18_sums_join_0_q = {bubble_select_i_mul20_zlaswp18_im0_cma_b, bubble_select_i_mul20_zlaswp18_im8_cma_b};

    // i_mul20_zlaswp18_sums_result_add_0_0(ADD,336)@99
    assign i_mul20_zlaswp18_sums_result_add_0_0_a = {1'b0, i_mul20_zlaswp18_sums_join_0_q};
    assign i_mul20_zlaswp18_sums_result_add_0_0_b = {14'b00000000000000, i_mul20_zlaswp18_sums_align_1_q};
    assign i_mul20_zlaswp18_sums_result_add_0_0_o = $unsigned(i_mul20_zlaswp18_sums_result_add_0_0_a) + $unsigned(i_mul20_zlaswp18_sums_result_add_0_0_b);
    assign i_mul20_zlaswp18_sums_result_add_0_0_q = i_mul20_zlaswp18_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul20_zlaswp18_sel_x(BITSELECT,230)@99
    assign bgTrunc_i_mul20_zlaswp18_sel_x_in = i_mul20_zlaswp18_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul20_zlaswp18_sel_x_b = bgTrunc_i_mul20_zlaswp18_sel_x_in[31:0];

    // SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0(STALLREG,1162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid <= SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backStall & (SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid | SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_i_valid);

            if (SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_data0 <= bgTrunc_i_mul20_zlaswp18_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_i_valid = SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backStall = SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid | ~ (SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V = SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid : SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_i_valid;

    assign SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_D0 = SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_r_data0 : bgTrunc_i_mul20_zlaswp18_sel_x_b;

    // redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0(REG,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_q <= $unsigned(SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_D0);
        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55(BITJOIN,491)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_q = i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55(BITSELECT,492)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_q[31:0]);

    // i_add29_zlaswp56(ADD,23)@100
    assign i_add29_zlaswp56_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_b};
    assign i_add29_zlaswp56_b = {1'b0, redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_q};
    assign i_add29_zlaswp56_o = $unsigned(i_add29_zlaswp56_a) + $unsigned(i_add29_zlaswp56_b);
    assign i_add29_zlaswp56_q = i_add29_zlaswp56_o[32:0];

    // bgTrunc_i_add29_zlaswp56_sel_x(BITSELECT,227)@100
    assign bgTrunc_i_add29_zlaswp56_sel_x_b = i_add29_zlaswp56_q[31:0];

    // i_idxprom30_zlaswp57_sel_x(BITSELECT,291)@100
    assign i_idxprom30_zlaswp57_sel_x_b = $unsigned({{32{bgTrunc_i_add29_zlaswp56_sel_x_b[31]}}, bgTrunc_i_add29_zlaswp56_sel_x_b[31:0]});

    // i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select(BITSELECT,418)@100
    assign i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_b = i_idxprom30_zlaswp57_sel_x_b[63:54];
    assign i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_c = i_idxprom30_zlaswp57_sel_x_b[53:36];
    assign i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_d = i_idxprom30_zlaswp57_sel_x_b[35:18];
    assign i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_e = i_idxprom30_zlaswp57_sel_x_b[17:0];

    // i_arrayidx31_zlaswp0_mult_x_im0_shift0(BITSHIFT,407)@100
    assign i_arrayidx31_zlaswp0_mult_x_im0_shift0_qint = { i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx31_zlaswp0_mult_x_im0_shift0_q = i_arrayidx31_zlaswp0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx31_zlaswp0_mult_x_sums_align_3(BITSHIFT,388)@100
    assign i_arrayidx31_zlaswp0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx31_zlaswp0_mult_x_im0_shift0_q}, 14'b00000000000000 };
    assign i_arrayidx31_zlaswp0_mult_x_sums_align_3_q = i_arrayidx31_zlaswp0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx31_zlaswp0_mult_x_im6_shift0(BITSHIFT,409)@100
    assign i_arrayidx31_zlaswp0_mult_x_im6_shift0_qint = { i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx31_zlaswp0_mult_x_im6_shift0_q = i_arrayidx31_zlaswp0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx31_zlaswp0_mult_x_sums_align_2(BITSHIFT,387)@100
    assign i_arrayidx31_zlaswp0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx31_zlaswp0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx31_zlaswp0_mult_x_sums_align_2_q = i_arrayidx31_zlaswp0_mult_x_sums_align_2_qint[39:0];

    // i_arrayidx31_zlaswp0_mult_x_sums_join_4(BITJOIN,389)@100
    assign i_arrayidx31_zlaswp0_mult_x_sums_join_4_q = {i_arrayidx31_zlaswp0_mult_x_sums_align_3_q, i_arrayidx31_zlaswp0_mult_x_sums_align_2_q};

    // i_arrayidx31_zlaswp0_mult_x_im3_shift0(BITSHIFT,408)@100
    assign i_arrayidx31_zlaswp0_mult_x_im3_shift0_qint = { i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx31_zlaswp0_mult_x_im3_shift0_q = i_arrayidx31_zlaswp0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx31_zlaswp0_mult_x_sums_align_0(BITSHIFT,385)@100
    assign i_arrayidx31_zlaswp0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx31_zlaswp0_mult_x_im3_shift0_q}, 14'b00000000000000 };
    assign i_arrayidx31_zlaswp0_mult_x_sums_align_0_q = i_arrayidx31_zlaswp0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx31_zlaswp0_mult_x_im9_shift0(BITSHIFT,410)@100
    assign i_arrayidx31_zlaswp0_mult_x_im9_shift0_qint = { i_arrayidx31_zlaswp0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx31_zlaswp0_mult_x_im9_shift0_q = i_arrayidx31_zlaswp0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx31_zlaswp0_mult_x_sums_join_1(BITJOIN,386)@100
    assign i_arrayidx31_zlaswp0_mult_x_sums_join_1_q = {i_arrayidx31_zlaswp0_mult_x_sums_align_0_q, {1'b0, i_arrayidx31_zlaswp0_mult_x_im9_shift0_q}};

    // i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0(ADD,390)@100
    assign i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx31_zlaswp0_mult_x_sums_join_1_q};
    assign i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx31_zlaswp0_mult_x_sums_join_4_q};
    assign i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_q = i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_o[68:0];

    // i_arrayidx31_zlaswp0_mult_extender_x(BITJOIN,280)@100
    assign i_arrayidx31_zlaswp0_mult_extender_x_q = {i_add_ptr_zlaswp0_mult_multconst_x_q, i_arrayidx31_zlaswp0_mult_x_sums_result_add_0_0_q[67:0]};

    // i_arrayidx31_zlaswp0_trunc_sel_x(BITSELECT,282)@100
    assign i_arrayidx31_zlaswp0_trunc_sel_x_b = i_arrayidx31_zlaswp0_mult_extender_x_q[63:0];

    // redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx31_zlaswp0_trunc_sel_x_b);
        end
    end

    // c_i32_1107(CONSTANT,11)
    assign c_i32_1107_q = $unsigned(32'b11111111111111111111111111111111);

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3(STALLENABLE,1053)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_out;

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4(STALLENABLE,1055)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14(BLACKBOX,47)@100
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_0 thei_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11(STALLENABLE,673)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_backStall = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_wireValid = i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_valid_out & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_and0;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11(BLACKBOX,45)@100
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_unnamed_30_zlaswp0 thei_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11(BITJOIN,503)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_q = i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11(BITSELECT,504)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_q[31:0]);

    // i_unnamed_zlaswp12(LOGICAL,117)@100
    assign i_unnamed_zlaswp12_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_b ^ c_i32_1107_q;

    // i_idx_neg_zlaswp13_sel_x(BITSELECT,289)@100
    assign i_idx_neg_zlaswp13_sel_x_b = $unsigned({{32{i_unnamed_zlaswp12_q[31]}}, i_unnamed_zlaswp12_q[31:0]});

    // i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select(BITSELECT,416)@100
    assign i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_b = i_idx_neg_zlaswp13_sel_x_b[63:54];
    assign i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_c = i_idx_neg_zlaswp13_sel_x_b[53:36];
    assign i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_d = i_idx_neg_zlaswp13_sel_x_b[35:18];
    assign i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_e = i_idx_neg_zlaswp13_sel_x_b[17:0];

    // i_add_ptr_zlaswp0_mult_x_im0_shift0(BITSHIFT,399)@100
    assign i_add_ptr_zlaswp0_mult_x_im0_shift0_qint = { i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_add_ptr_zlaswp0_mult_x_im0_shift0_q = i_add_ptr_zlaswp0_mult_x_im0_shift0_qint[12:0];

    // i_add_ptr_zlaswp0_mult_x_sums_align_3(BITSHIFT,352)@100
    assign i_add_ptr_zlaswp0_mult_x_sums_align_3_qint = { {1'b0, i_add_ptr_zlaswp0_mult_x_im0_shift0_q}, 14'b00000000000000 };
    assign i_add_ptr_zlaswp0_mult_x_sums_align_3_q = i_add_ptr_zlaswp0_mult_x_sums_align_3_qint[27:0];

    // i_add_ptr_zlaswp0_mult_x_im6_shift0(BITSHIFT,401)@100
    assign i_add_ptr_zlaswp0_mult_x_im6_shift0_qint = { i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_add_ptr_zlaswp0_mult_x_im6_shift0_q = i_add_ptr_zlaswp0_mult_x_im6_shift0_qint[20:0];

    // i_add_ptr_zlaswp0_mult_x_sums_align_2(BITSHIFT,351)@100
    assign i_add_ptr_zlaswp0_mult_x_sums_align_2_qint = { {1'b0, i_add_ptr_zlaswp0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_add_ptr_zlaswp0_mult_x_sums_align_2_q = i_add_ptr_zlaswp0_mult_x_sums_align_2_qint[39:0];

    // i_add_ptr_zlaswp0_mult_x_sums_join_4(BITJOIN,353)@100
    assign i_add_ptr_zlaswp0_mult_x_sums_join_4_q = {i_add_ptr_zlaswp0_mult_x_sums_align_3_q, i_add_ptr_zlaswp0_mult_x_sums_align_2_q};

    // i_add_ptr_zlaswp0_mult_x_im3_shift0(BITSHIFT,400)@100
    assign i_add_ptr_zlaswp0_mult_x_im3_shift0_qint = { i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_add_ptr_zlaswp0_mult_x_im3_shift0_q = i_add_ptr_zlaswp0_mult_x_im3_shift0_qint[20:0];

    // i_add_ptr_zlaswp0_mult_x_sums_align_0(BITSHIFT,349)@100
    assign i_add_ptr_zlaswp0_mult_x_sums_align_0_qint = { {1'b0, i_add_ptr_zlaswp0_mult_x_im3_shift0_q}, 14'b00000000000000 };
    assign i_add_ptr_zlaswp0_mult_x_sums_align_0_q = i_add_ptr_zlaswp0_mult_x_sums_align_0_qint[35:0];

    // i_add_ptr_zlaswp0_mult_x_im9_shift0(BITSHIFT,402)@100
    assign i_add_ptr_zlaswp0_mult_x_im9_shift0_qint = { i_add_ptr_zlaswp0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_add_ptr_zlaswp0_mult_x_im9_shift0_q = i_add_ptr_zlaswp0_mult_x_im9_shift0_qint[20:0];

    // i_add_ptr_zlaswp0_mult_x_sums_join_1(BITJOIN,350)@100
    assign i_add_ptr_zlaswp0_mult_x_sums_join_1_q = {i_add_ptr_zlaswp0_mult_x_sums_align_0_q, {1'b0, i_add_ptr_zlaswp0_mult_x_im9_shift0_q}};

    // i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0(ADD,354)@100
    assign i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_add_ptr_zlaswp0_mult_x_sums_join_1_q};
    assign i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_b = {1'b0, i_add_ptr_zlaswp0_mult_x_sums_join_4_q};
    assign i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_o = $unsigned(i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_a) + $unsigned(i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_b);
    assign i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_q = i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_o[68:0];

    // i_add_ptr_zlaswp0_mult_extender_x(BITJOIN,260)@100
    assign i_add_ptr_zlaswp0_mult_extender_x_q = {i_add_ptr_zlaswp0_mult_multconst_x_q, i_add_ptr_zlaswp0_mult_x_sums_result_add_0_0_q[67:0]};

    // i_add_ptr_zlaswp0_trunc_sel_x(BITSELECT,262)@100
    assign i_add_ptr_zlaswp0_trunc_sel_x_b = i_add_ptr_zlaswp0_mult_extender_x_q[63:0];

    // bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14(BITJOIN,509)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_q = i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14(BITSELECT,510)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_q[63:0]);

    // i_add_ptr_zlaswp0_add_x(ADD,254)@100
    assign i_add_ptr_zlaswp0_add_x_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_p1024s_struct_type_3_s_a78142_zlaswp14_b};
    assign i_add_ptr_zlaswp0_add_x_b = {1'b0, i_add_ptr_zlaswp0_trunc_sel_x_b};
    assign i_add_ptr_zlaswp0_add_x_o = $unsigned(i_add_ptr_zlaswp0_add_x_a) + $unsigned(i_add_ptr_zlaswp0_add_x_b);
    assign i_add_ptr_zlaswp0_add_x_q = i_add_ptr_zlaswp0_add_x_o[64:0];

    // i_add_ptr_zlaswp0_dupName_0_trunc_sel_x(BITSELECT,263)@100
    assign i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b = i_add_ptr_zlaswp0_add_x_q[63:0];

    // redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0(REG,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_q <= $unsigned(i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b);
        end
    end

    // i_arrayidx31_zlaswp0_add_x(ADD,274)@101
    assign i_arrayidx31_zlaswp0_add_x_a = {1'b0, redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx31_zlaswp0_add_x_b = {1'b0, redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx31_zlaswp0_add_x_o = $unsigned(i_arrayidx31_zlaswp0_add_x_a) + $unsigned(i_arrayidx31_zlaswp0_add_x_b);
    assign i_arrayidx31_zlaswp0_add_x_q = i_arrayidx31_zlaswp0_add_x_o[64:0];

    // i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x(BITSELECT,283)@101
    assign i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b = i_arrayidx31_zlaswp0_add_x_q[63:0];

    // i_r32_zlaswp0_add_x(ADD,296)@101
    assign i_r32_zlaswp0_add_x_a = {1'b0, i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b};
    assign i_r32_zlaswp0_add_x_b = {1'b0, i_r32_zlaswp0_c_i64_41_x_q};
    assign i_r32_zlaswp0_add_x_o = $unsigned(i_r32_zlaswp0_add_x_a) + $unsigned(i_r32_zlaswp0_add_x_b);
    assign i_r32_zlaswp0_add_x_q = i_r32_zlaswp0_add_x_o[64:0];

    // i_r32_zlaswp0_trunc_sel_x(BITSELECT,299)@101
    assign i_r32_zlaswp0_trunc_sel_x_b = i_r32_zlaswp0_add_x_q[63:0];

    // bubble_join_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo(BITJOIN,646)
    assign bubble_join_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_q = redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_data_out;

    // bubble_select_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo(BITSELECT,647)
    assign bubble_select_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_b = $unsigned(bubble_join_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91(STALLENABLE,733)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_wireValid = i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_valid_out;

    // SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3(STALLENABLE,908)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_s_tv_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backEN & SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_V;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_v_s_0;
            end

        end
    end

    // SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0(STALLENABLE,894)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_s_tv_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V2;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1(STALLENABLE,895)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_s_tv_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backEN & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2(STALLENABLE,896)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_s_tv_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backEN & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_V0;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3(STALLENABLE,897)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_s_tv_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backEN & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pipeline_keep_going200_zlaswp4(BITJOIN,539)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going200_zlaswp4_q = i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going200_zlaswp4(BITSELECT,540)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going200_zlaswp4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going200_zlaswp4_q[0:0]);

    // redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going200_zlaswp4_b);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_q <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2(REG,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_q <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_1_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_q <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_2_q);
        end
    end

    // redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN == 1'b1)
        begin
            redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q <= $unsigned(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_q);
        end
    end

    // SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41(STALLENABLE,745)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_wireValid = i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg(STALLFIFO,1146)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_in = SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100(STALLENABLE,679)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid = i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0(BITJOIN,567)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_q = i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0(BITSELECT,568)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_q[1:0]);

    // i_first_cleanup205_zlaswp1_sel_x(BITSELECT,288)@101
    assign i_first_cleanup205_zlaswp1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b[0:0];

    // i_xor206_zlaswp2(LOGICAL,119)@101
    assign i_xor206_zlaswp2_q = i_first_cleanup205_zlaswp1_sel_x_b ^ VCC_q;

    // i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100(BLACKBOX,48)@101
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_21_0@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_source_p1024s_stA000000Zs_unnamed_34_zlaswp0 thei_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100 (
        .in_predicate_in(i_xor206_zlaswp2_q),
        .in_src_data_in_21_0(redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_V0),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_intel_reserved_ffwd_21_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100(STALLENABLE,678)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_V0 = SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall = i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V4;
    assign SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_wireValid = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V0 & SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_and0;

    // bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37(BITJOIN,573)
    assign bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_q = i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37(BITSELECT,574)
    assign bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_b = $unsigned(bubble_join_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_q[6:0]);

    // i_exitcond_zlaswp38_cmp_nsign(LOGICAL,321)@101
    assign i_exitcond_zlaswp38_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_b[6:6]));

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8(STALLENABLE,1063)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_backStall = i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42(STALLENABLE,661)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed1 = (~ (SE_i_masked209_zlaswp101_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_and0 = i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_wireValid = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_V0 & SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_and0;

    // i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42(BLACKBOX,39)@101
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_0 thei_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_V0),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42(BITJOIN,485)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_q = i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42(BITSELECT,486)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_q[0:0]);

    // i_phi_decision153_xor154_and_i0_zlaswp43(LOGICAL,91)@101
    assign i_phi_decision153_xor154_and_i0_zlaswp43_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_b & i_exitcond_zlaswp38_cmp_nsign_q;

    // i_notcmp197_zlaswp44(LOGICAL,89)@101
    assign i_notcmp197_zlaswp44_q = i_phi_decision153_xor154_and_i0_zlaswp43_q ^ VCC_q;

    // i_or207_zlaswp46(LOGICAL,90)@101
    assign i_or207_zlaswp46_q = i_notcmp197_zlaswp44_q | i_xor206_zlaswp2_q;

    // i_llvm_fpga_mem_lm269_zlaswp60(BLACKBOX,50)@101
    // in in_i_stall@20000000
    // out out_lm269_zlaswp_avm_address@20000000
    // out out_lm269_zlaswp_avm_burstcount@20000000
    // out out_lm269_zlaswp_avm_byteenable@20000000
    // out out_lm269_zlaswp_avm_enable@20000000
    // out out_lm269_zlaswp_avm_read@20000000
    // out out_lm269_zlaswp_avm_write@20000000
    // out out_lm269_zlaswp_avm_writedata@20000000
    // out out_o_readdata@133
    // out out_o_stall@20000000
    // out out_o_valid@133
    zlaswp_i_llvm_fpga_mem_lm269_0 thei_llvm_fpga_mem_lm269_zlaswp60 (
        .in_flush(in_flush),
        .in_i_address(i_r32_zlaswp0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_zlaswp_2_zlaswp33_q),
        .in_i_predicate(i_or207_zlaswp46_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm269_zlaswp60_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm269_zlaswp60_V0),
        .in_lm269_zlaswp_avm_readdata(in_lm269_zlaswp_avm_readdata),
        .in_lm269_zlaswp_avm_readdatavalid(in_lm269_zlaswp_avm_readdatavalid),
        .in_lm269_zlaswp_avm_waitrequest(in_lm269_zlaswp_avm_waitrequest),
        .in_lm269_zlaswp_avm_writeack(in_lm269_zlaswp_avm_writeack),
        .out_lm269_zlaswp_avm_address(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_address),
        .out_lm269_zlaswp_avm_burstcount(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_burstcount),
        .out_lm269_zlaswp_avm_byteenable(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_byteenable),
        .out_lm269_zlaswp_avm_enable(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_enable),
        .out_lm269_zlaswp_avm_read(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_read),
        .out_lm269_zlaswp_avm_write(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_write),
        .out_lm269_zlaswp_avm_writedata(i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm269_zlaswp60_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm269_zlaswp60_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm269_zlaswp60_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm269_zlaswp60(BITJOIN,516)
    assign bubble_join_i_llvm_fpga_mem_lm269_zlaswp60_q = i_llvm_fpga_mem_lm269_zlaswp60_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm269_zlaswp60(BITSELECT,517)
    assign bubble_select_i_llvm_fpga_mem_lm269_zlaswp60_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm269_zlaswp60_q[31:0]);

    // redist16_i_or207_zlaswp46_q_32_fifo(STALLFIFO,466)
    assign redist16_i_or207_zlaswp46_q_32_fifo_valid_in = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V5;
    assign redist16_i_or207_zlaswp46_q_32_fifo_stall_in = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_backStall;
    assign redist16_i_or207_zlaswp46_q_32_fifo_data_in = i_or207_zlaswp46_q;
    assign redist16_i_or207_zlaswp46_q_32_fifo_valid_in_bitsignaltemp = redist16_i_or207_zlaswp46_q_32_fifo_valid_in[0];
    assign redist16_i_or207_zlaswp46_q_32_fifo_stall_in_bitsignaltemp = redist16_i_or207_zlaswp46_q_32_fifo_stall_in[0];
    assign redist16_i_or207_zlaswp46_q_32_fifo_valid_out[0] = redist16_i_or207_zlaswp46_q_32_fifo_valid_out_bitsignaltemp;
    assign redist16_i_or207_zlaswp46_q_32_fifo_stall_out[0] = redist16_i_or207_zlaswp46_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_i_or207_zlaswp46_q_32_fifo (
        .valid_in(redist16_i_or207_zlaswp46_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_or207_zlaswp46_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_or207_zlaswp46_q),
        .valid_out(redist16_i_or207_zlaswp46_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_or207_zlaswp46_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_or207_zlaswp46_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist16_i_or207_zlaswp46_q_32_fifo(BITJOIN,628)
    assign bubble_join_redist16_i_or207_zlaswp46_q_32_fifo_q = redist16_i_or207_zlaswp46_q_32_fifo_data_out;

    // bubble_select_redist16_i_or207_zlaswp46_q_32_fifo(BITSELECT,629)
    assign bubble_select_redist16_i_or207_zlaswp46_q_32_fifo_b = $unsigned(bubble_join_redist16_i_or207_zlaswp46_q_32_fifo_q[0:0]);

    // bubble_join_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo(BITJOIN,625)
    assign bubble_join_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_q = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_data_out;

    // bubble_select_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo(BITSELECT,626)
    assign bubble_select_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_b = $unsigned(bubble_join_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_lm7_zlaswp35(BITJOIN,522)
    assign bubble_join_i_llvm_fpga_mem_lm7_zlaswp35_q = i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm7_zlaswp35(BITSELECT,523)
    assign bubble_select_i_llvm_fpga_mem_lm7_zlaswp35_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm7_zlaswp35_q[31:0]);

    // i_lm7_toi1_intcast20_zlaswp36_sel_x(BITSELECT,295)@133
    assign i_lm7_toi1_intcast20_zlaswp36_sel_x_b = bubble_select_i_llvm_fpga_mem_lm7_zlaswp35_b[0:0];

    // i_reduction_zlaswp_13_zlaswp68(LOGICAL,96)@133
    assign i_reduction_zlaswp_13_zlaswp68_q = i_lm7_toi1_intcast20_zlaswp36_sel_x_b | bubble_select_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_b;

    // bubble_join_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo(BITJOIN,604)
    assign bubble_join_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_q = redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_data_out;

    // bubble_select_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo(BITSELECT,605)
    assign bubble_select_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_zlaswp69(BLACKBOX,56)@133
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_zlaswp_avm_address@20000000
    // out out_memdep_zlaswp_avm_burstcount@20000000
    // out out_memdep_zlaswp_avm_byteenable@20000000
    // out out_memdep_zlaswp_avm_enable@20000000
    // out out_memdep_zlaswp_avm_read@20000000
    // out out_memdep_zlaswp_avm_write@20000000
    // out out_memdep_zlaswp_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@164
    // out out_o_writeack@164
    zlaswp_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_zlaswp69 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_b),
        .in_i_dependence(i_reduction_zlaswp_13_zlaswp68_q),
        .in_i_predicate(bubble_select_redist16_i_or207_zlaswp46_q_32_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_zlaswp69_backStall),
        .in_i_valid(SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_lm269_zlaswp60_b),
        .in_memdep_zlaswp_avm_readdata(in_memdep_zlaswp_avm_readdata),
        .in_memdep_zlaswp_avm_readdatavalid(in_memdep_zlaswp_avm_readdatavalid),
        .in_memdep_zlaswp_avm_waitrequest(in_memdep_zlaswp_avm_waitrequest),
        .in_memdep_zlaswp_avm_writeack(in_memdep_zlaswp_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_zlaswp69_out_lsu_memdep_o_active),
        .out_memdep_zlaswp_avm_address(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_address),
        .out_memdep_zlaswp_avm_burstcount(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_burstcount),
        .out_memdep_zlaswp_avm_byteenable(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_byteenable),
        .out_memdep_zlaswp_avm_enable(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_enable),
        .out_memdep_zlaswp_avm_read(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_read),
        .out_memdep_zlaswp_avm_write(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_write),
        .out_memdep_zlaswp_avm_writedata(i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_zlaswp69_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_zlaswp69_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_zlaswp69_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_or207_zlaswp46_q_63_fifo(STALLFIFO,467)
    assign redist17_i_or207_zlaswp46_q_63_fifo_valid_in = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V2;
    assign redist17_i_or207_zlaswp46_q_63_fifo_stall_in = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_backStall;
    assign redist17_i_or207_zlaswp46_q_63_fifo_data_in = bubble_select_redist16_i_or207_zlaswp46_q_32_fifo_b;
    assign redist17_i_or207_zlaswp46_q_63_fifo_valid_in_bitsignaltemp = redist17_i_or207_zlaswp46_q_63_fifo_valid_in[0];
    assign redist17_i_or207_zlaswp46_q_63_fifo_stall_in_bitsignaltemp = redist17_i_or207_zlaswp46_q_63_fifo_stall_in[0];
    assign redist17_i_or207_zlaswp46_q_63_fifo_valid_out[0] = redist17_i_or207_zlaswp46_q_63_fifo_valid_out_bitsignaltemp;
    assign redist17_i_or207_zlaswp46_q_63_fifo_stall_out[0] = redist17_i_or207_zlaswp46_q_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_or207_zlaswp46_q_63_fifo (
        .valid_in(redist17_i_or207_zlaswp46_q_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_or207_zlaswp46_q_63_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist16_i_or207_zlaswp46_q_32_fifo_b),
        .valid_out(redist17_i_or207_zlaswp46_q_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_or207_zlaswp46_q_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_or207_zlaswp46_q_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32(BITJOIN,558)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_q = i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32(BITSELECT,559)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30(BITJOIN,549)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_q = i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30(BITSELECT,550)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_q[0:0]);

    // i_reduction_zlaswp_3_zlaswp50(LOGICAL,112)@101
    assign i_reduction_zlaswp_3_zlaswp50_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27(BITJOIN,555)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_q = i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27(BITSELECT,556)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_q[0:0]);

    // i_reduction_zlaswp_4_zlaswp51(LOGICAL,113)@101
    assign i_reduction_zlaswp_4_zlaswp51_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_b | i_reduction_zlaswp_3_zlaswp50_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28(BITJOIN,561)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_q = i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28(BITSELECT,562)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_q[0:0]);

    // i_reduction_zlaswp_5_zlaswp52(LOGICAL,114)@101
    assign i_reduction_zlaswp_5_zlaswp52_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_b | i_reduction_zlaswp_4_zlaswp51_q;

    // i_llvm_fpga_mem_lm2810_zlaswp72(BLACKBOX,51)@101
    // in in_i_stall@20000000
    // out out_lm2810_zlaswp_avm_address@20000000
    // out out_lm2810_zlaswp_avm_burstcount@20000000
    // out out_lm2810_zlaswp_avm_byteenable@20000000
    // out out_lm2810_zlaswp_avm_enable@20000000
    // out out_lm2810_zlaswp_avm_read@20000000
    // out out_lm2810_zlaswp_avm_write@20000000
    // out out_lm2810_zlaswp_avm_writedata@20000000
    // out out_o_readdata@133
    // out out_o_stall@20000000
    // out out_o_valid@133
    zlaswp_i_llvm_fpga_mem_lm2810_0 thei_llvm_fpga_mem_lm2810_zlaswp72 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_zlaswp_5_zlaswp52_q),
        .in_i_predicate(i_or207_zlaswp46_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_V0),
        .in_lm2810_zlaswp_avm_readdata(in_lm2810_zlaswp_avm_readdata),
        .in_lm2810_zlaswp_avm_readdatavalid(in_lm2810_zlaswp_avm_readdatavalid),
        .in_lm2810_zlaswp_avm_waitrequest(in_lm2810_zlaswp_avm_waitrequest),
        .in_lm2810_zlaswp_avm_writeack(in_lm2810_zlaswp_avm_writeack),
        .out_lm2810_zlaswp_avm_address(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_address),
        .out_lm2810_zlaswp_avm_burstcount(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_burstcount),
        .out_lm2810_zlaswp_avm_byteenable(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_byteenable),
        .out_lm2810_zlaswp_avm_enable(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_enable),
        .out_lm2810_zlaswp_avm_read(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_read),
        .out_lm2810_zlaswp_avm_write(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_write),
        .out_lm2810_zlaswp_avm_writedata(i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm2810_zlaswp72_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm2810_zlaswp72_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm2810_zlaswp72_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm2810_zlaswp72(BITJOIN,519)
    assign bubble_join_i_llvm_fpga_mem_lm2810_zlaswp72_q = i_llvm_fpga_mem_lm2810_zlaswp72_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm2810_zlaswp72(BITSELECT,520)
    assign bubble_select_i_llvm_fpga_mem_lm2810_zlaswp72_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm2810_zlaswp72_q[31:0]);

    // bubble_join_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo(BITJOIN,649)
    assign bubble_join_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_q = redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_data_out;

    // bubble_select_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo(BITSELECT,650)
    assign bubble_select_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_b = $unsigned(bubble_join_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_q[31:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97(STALLENABLE,735)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_wireValid = i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_46_zlaswp96(BITJOIN,532)
    assign bubble_join_i_llvm_fpga_mem_memdep_46_zlaswp96_q = i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96(BITSELECT,533)
    assign bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_46_zlaswp96_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97(BLACKBOX,76)@195
    // in in_stall_in@20000000
    // out out_data_out@196
    // out out_feedback_out_56@20000000
    // out out_feedback_valid_out_56@20000000
    // out out_stall_out@20000000
    // out out_valid_out@196
    zlaswp_i_llvm_fpga_push_i1_memdep_phi47_push56_0 thei_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_b),
        .in_feedback_stall_in_56(i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_feedback_stall_out_56),
        .in_keep_going200(redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_V0),
        .out_data_out(),
        .out_feedback_out_56(i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_feedback_out_56),
        .out_feedback_valid_out_56(i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_feedback_valid_out_56),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96(STALLENABLE,981)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall = i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_and0 = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_V1 & SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_and0;

    // SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96(STALLENABLE,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed0 = (~ (SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid) | SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall) & SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid) | SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_StallValid = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall & SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_toReg0 = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_StallValid & SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_toReg1 = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_StallValid & SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_or0 = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_consumed1 & SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_V0 = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_V1 = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_wireValid = i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_valid;

    // bubble_join_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo(BITJOIN,616)
    assign bubble_join_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_q = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_data_out;

    // bubble_select_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo(BITSELECT,617)
    assign bubble_select_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_b = $unsigned(bubble_join_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_31_zlaswp83(BITJOIN,525)
    assign bubble_join_i_llvm_fpga_mem_memdep_31_zlaswp83_q = i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_31_zlaswp83(BITSELECT,526)
    assign bubble_select_i_llvm_fpga_mem_memdep_31_zlaswp83_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_31_zlaswp83_q[0:0]);

    // i_reduction_zlaswp_31_zlaswp95(LOGICAL,111)@164
    assign i_reduction_zlaswp_31_zlaswp95_q = bubble_select_i_llvm_fpga_mem_memdep_31_zlaswp83_b | bubble_select_redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_b;

    // bubble_join_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo(BITJOIN,610)
    assign bubble_join_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_q = redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_data_out;

    // bubble_select_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo(BITSELECT,611)
    assign bubble_select_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_46_zlaswp96(BLACKBOX,55)@164
    // in in_i_stall@20000000
    // out out_lsu_memdep_46_o_active@20000000
    // out out_memdep_46_zlaswp_avm_address@20000000
    // out out_memdep_46_zlaswp_avm_burstcount@20000000
    // out out_memdep_46_zlaswp_avm_byteenable@20000000
    // out out_memdep_46_zlaswp_avm_enable@20000000
    // out out_memdep_46_zlaswp_avm_read@20000000
    // out out_memdep_46_zlaswp_avm_write@20000000
    // out out_memdep_46_zlaswp_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@195
    // out out_o_writeack@195
    zlaswp_i_llvm_fpga_mem_memdep_46_0 thei_llvm_fpga_mem_memdep_46_zlaswp96 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_b),
        .in_i_dependence(i_reduction_zlaswp_31_zlaswp95_q),
        .in_i_predicate(bubble_select_redist17_i_or207_zlaswp46_q_63_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall),
        .in_i_valid(SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_V0),
        .in_i_writedata(bubble_select_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_b),
        .in_memdep_46_zlaswp_avm_readdata(in_memdep_46_zlaswp_avm_readdata),
        .in_memdep_46_zlaswp_avm_readdatavalid(in_memdep_46_zlaswp_avm_readdatavalid),
        .in_memdep_46_zlaswp_avm_waitrequest(in_memdep_46_zlaswp_avm_waitrequest),
        .in_memdep_46_zlaswp_avm_writeack(in_memdep_46_zlaswp_avm_writeack),
        .out_lsu_memdep_46_o_active(i_llvm_fpga_mem_memdep_46_zlaswp96_out_lsu_memdep_46_o_active),
        .out_memdep_46_zlaswp_avm_address(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_address),
        .out_memdep_46_zlaswp_avm_burstcount(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_burstcount),
        .out_memdep_46_zlaswp_avm_byteenable(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_byteenable),
        .out_memdep_46_zlaswp_avm_enable(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_enable),
        .out_memdep_46_zlaswp_avm_read(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_read),
        .out_memdep_46_zlaswp_avm_write(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_write),
        .out_memdep_46_zlaswp_avm_writedata(i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64(BITJOIN,552)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_q = i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64(BITSELECT,553)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_q[0:0]);

    // i_reduction_zlaswp_28_zlaswp92(LOGICAL,107)@101
    assign i_reduction_zlaswp_28_zlaswp92_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77(BITJOIN,546)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_q = i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77(BITSELECT,547)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75(BITJOIN,564)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_q = i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75(BITSELECT,565)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_q[0:0]);

    // i_reduction_zlaswp_17_zlaswp79(LOGICAL,97)@101
    assign i_reduction_zlaswp_17_zlaswp79_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_b;

    // i_reduction_zlaswp_29_zlaswp93(LOGICAL,108)@101
    assign i_reduction_zlaswp_29_zlaswp93_q = i_reduction_zlaswp_17_zlaswp79_q | i_reduction_zlaswp_28_zlaswp92_q;

    // i_reduction_zlaswp_30_zlaswp94(LOGICAL,110)@101 + 1
    assign i_reduction_zlaswp_30_zlaswp94_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_b | i_reduction_zlaswp_29_zlaswp93_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_zlaswp_30_zlaswp94_delay ( .xin(i_reduction_zlaswp_30_zlaswp94_qi), .xout(i_reduction_zlaswp_30_zlaswp94_q), .ena(SE_i_reduction_zlaswp_30_zlaswp94_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6(STALLENABLE,1059)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19(BLACKBOX,44)@100
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_0 thei_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_dest_data_out_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19(STALLENABLE,671)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_backStall = SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_and0 = i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_wireValid = SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_and0;

    // SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0(STALLENABLE,874)
    // Valid signal propagation
    assign SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_V0 = SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx23_zlaswp0_add_x_backStall & SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_v_s_0 = SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_V0;
    // Backward Stall generation
    assign SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0 & SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19(BITJOIN,500)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_q = i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_out_dest_data_out_15_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19(BITSELECT,501)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_q[31:0]);

    // i_add21_zlaswp20(ADD,22)@100
    assign i_add21_zlaswp20_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_b};
    assign i_add21_zlaswp20_b = {1'b0, redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_q};
    assign i_add21_zlaswp20_o = $unsigned(i_add21_zlaswp20_a) + $unsigned(i_add21_zlaswp20_b);
    assign i_add21_zlaswp20_q = i_add21_zlaswp20_o[32:0];

    // bgTrunc_i_add21_zlaswp20_sel_x(BITSELECT,226)@100
    assign bgTrunc_i_add21_zlaswp20_sel_x_b = i_add21_zlaswp20_q[31:0];

    // i_idxprom22_zlaswp21_sel_x(BITSELECT,290)@100
    assign i_idxprom22_zlaswp21_sel_x_b = $unsigned({{32{bgTrunc_i_add21_zlaswp20_sel_x_b[31]}}, bgTrunc_i_add21_zlaswp20_sel_x_b[31:0]});

    // i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select(BITSELECT,417)@100
    assign i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_b = i_idxprom22_zlaswp21_sel_x_b[63:54];
    assign i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_c = i_idxprom22_zlaswp21_sel_x_b[53:36];
    assign i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_d = i_idxprom22_zlaswp21_sel_x_b[35:18];
    assign i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_e = i_idxprom22_zlaswp21_sel_x_b[17:0];

    // i_arrayidx23_zlaswp0_mult_x_im0_shift0(BITSHIFT,403)@100
    assign i_arrayidx23_zlaswp0_mult_x_im0_shift0_qint = { i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_b, 3'b000 };
    assign i_arrayidx23_zlaswp0_mult_x_im0_shift0_q = i_arrayidx23_zlaswp0_mult_x_im0_shift0_qint[12:0];

    // i_arrayidx23_zlaswp0_mult_x_sums_align_3(BITSHIFT,370)@100
    assign i_arrayidx23_zlaswp0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx23_zlaswp0_mult_x_im0_shift0_q}, 14'b00000000000000 };
    assign i_arrayidx23_zlaswp0_mult_x_sums_align_3_q = i_arrayidx23_zlaswp0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx23_zlaswp0_mult_x_im6_shift0(BITSHIFT,405)@100
    assign i_arrayidx23_zlaswp0_mult_x_im6_shift0_qint = { i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_d, 3'b000 };
    assign i_arrayidx23_zlaswp0_mult_x_im6_shift0_q = i_arrayidx23_zlaswp0_mult_x_im6_shift0_qint[20:0];

    // i_arrayidx23_zlaswp0_mult_x_sums_align_2(BITSHIFT,369)@100
    assign i_arrayidx23_zlaswp0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx23_zlaswp0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx23_zlaswp0_mult_x_sums_align_2_q = i_arrayidx23_zlaswp0_mult_x_sums_align_2_qint[39:0];

    // i_arrayidx23_zlaswp0_mult_x_sums_join_4(BITJOIN,371)@100
    assign i_arrayidx23_zlaswp0_mult_x_sums_join_4_q = {i_arrayidx23_zlaswp0_mult_x_sums_align_3_q, i_arrayidx23_zlaswp0_mult_x_sums_align_2_q};

    // i_arrayidx23_zlaswp0_mult_x_im3_shift0(BITSHIFT,404)@100
    assign i_arrayidx23_zlaswp0_mult_x_im3_shift0_qint = { i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_c, 3'b000 };
    assign i_arrayidx23_zlaswp0_mult_x_im3_shift0_q = i_arrayidx23_zlaswp0_mult_x_im3_shift0_qint[20:0];

    // i_arrayidx23_zlaswp0_mult_x_sums_align_0(BITSHIFT,367)@100
    assign i_arrayidx23_zlaswp0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx23_zlaswp0_mult_x_im3_shift0_q}, 14'b00000000000000 };
    assign i_arrayidx23_zlaswp0_mult_x_sums_align_0_q = i_arrayidx23_zlaswp0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx23_zlaswp0_mult_x_im9_shift0(BITSHIFT,406)@100
    assign i_arrayidx23_zlaswp0_mult_x_im9_shift0_qint = { i_arrayidx23_zlaswp0_mult_x_bs1_merged_bit_select_e, 3'b000 };
    assign i_arrayidx23_zlaswp0_mult_x_im9_shift0_q = i_arrayidx23_zlaswp0_mult_x_im9_shift0_qint[20:0];

    // i_arrayidx23_zlaswp0_mult_x_sums_join_1(BITJOIN,368)@100
    assign i_arrayidx23_zlaswp0_mult_x_sums_join_1_q = {i_arrayidx23_zlaswp0_mult_x_sums_align_0_q, {1'b0, i_arrayidx23_zlaswp0_mult_x_im9_shift0_q}};

    // i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0(ADD,372)@100
    assign i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx23_zlaswp0_mult_x_sums_join_1_q};
    assign i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx23_zlaswp0_mult_x_sums_join_4_q};
    assign i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_q = i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_o[68:0];

    // i_arrayidx23_zlaswp0_mult_extender_x(BITJOIN,270)@100
    assign i_arrayidx23_zlaswp0_mult_extender_x_q = {i_add_ptr_zlaswp0_mult_multconst_x_q, i_arrayidx23_zlaswp0_mult_x_sums_result_add_0_0_q[67:0]};

    // i_arrayidx23_zlaswp0_trunc_sel_x(BITSELECT,272)@100
    assign i_arrayidx23_zlaswp0_trunc_sel_x_b = i_arrayidx23_zlaswp0_mult_extender_x_q[63:0];

    // redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0(REG,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_q <= $unsigned(i_arrayidx23_zlaswp0_trunc_sel_x_b);
        end
    end

    // i_arrayidx23_zlaswp0_add_x(ADD,264)@101
    assign i_arrayidx23_zlaswp0_add_x_a = {1'b0, redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx23_zlaswp0_add_x_b = {1'b0, redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_q};
    assign i_arrayidx23_zlaswp0_add_x_o = $unsigned(i_arrayidx23_zlaswp0_add_x_a) + $unsigned(i_arrayidx23_zlaswp0_add_x_b);
    assign i_arrayidx23_zlaswp0_add_x_q = i_arrayidx23_zlaswp0_add_x_o[64:0];

    // i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x(BITSELECT,273)@101
    assign i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b = i_arrayidx23_zlaswp0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm248_zlaswp53(BLACKBOX,49)@101
    // in in_i_stall@20000000
    // out out_lm248_zlaswp_avm_address@20000000
    // out out_lm248_zlaswp_avm_burstcount@20000000
    // out out_lm248_zlaswp_avm_byteenable@20000000
    // out out_lm248_zlaswp_avm_enable@20000000
    // out out_lm248_zlaswp_avm_read@20000000
    // out out_lm248_zlaswp_avm_write@20000000
    // out out_lm248_zlaswp_avm_writedata@20000000
    // out out_o_readdata@133
    // out out_o_stall@20000000
    // out out_o_valid@133
    zlaswp_i_llvm_fpga_mem_lm248_0 thei_llvm_fpga_mem_lm248_zlaswp53 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_zlaswp_5_zlaswp52_q),
        .in_i_predicate(i_or207_zlaswp46_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm248_zlaswp53_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm248_zlaswp53_V0),
        .in_lm248_zlaswp_avm_readdata(in_lm248_zlaswp_avm_readdata),
        .in_lm248_zlaswp_avm_readdatavalid(in_lm248_zlaswp_avm_readdatavalid),
        .in_lm248_zlaswp_avm_waitrequest(in_lm248_zlaswp_avm_waitrequest),
        .in_lm248_zlaswp_avm_writeack(in_lm248_zlaswp_avm_writeack),
        .out_lm248_zlaswp_avm_address(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_address),
        .out_lm248_zlaswp_avm_burstcount(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_burstcount),
        .out_lm248_zlaswp_avm_byteenable(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_byteenable),
        .out_lm248_zlaswp_avm_enable(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_enable),
        .out_lm248_zlaswp_avm_read(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_read),
        .out_lm248_zlaswp_avm_write(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_write),
        .out_lm248_zlaswp_avm_writedata(i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm248_zlaswp53_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm248_zlaswp53_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm248_zlaswp53(STALLENABLE,680)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm248_zlaswp53_V0 = SE_in_i_llvm_fpga_mem_lm248_zlaswp53_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm248_zlaswp53_backStall = i_llvm_fpga_mem_lm248_zlaswp53_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm248_zlaswp53_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm248_zlaswp53_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V1;
    assign SE_in_i_llvm_fpga_mem_lm248_zlaswp53_and1 = SE_i_reduction_zlaswp_4_zlaswp51_V0 & SE_in_i_llvm_fpga_mem_lm248_zlaswp53_and0;
    assign SE_in_i_llvm_fpga_mem_lm248_zlaswp53_wireValid = SE_i_arrayidx23_zlaswp0_add_x_V0 & SE_in_i_llvm_fpga_mem_lm248_zlaswp53_and1;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75(STALLENABLE,713)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed0 = (~ (SE_i_reduction_zlaswp_19_zlaswp80_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed1 = (~ (SE_i_reduction_zlaswp_28_zlaswp92_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77(STALLENABLE,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed1 = (~ (SE_i_reduction_zlaswp_23_zlaswp86_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_wireValid = i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_valid_out;

    // SE_i_reduction_zlaswp_9_zlaswp65(STALLENABLE,774)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_9_zlaswp65_V0 = SE_i_reduction_zlaswp_9_zlaswp65_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_9_zlaswp65_backStall = SE_i_reduction_zlaswp_12_zlaswp67_backStall | ~ (SE_i_reduction_zlaswp_9_zlaswp65_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_9_zlaswp65_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_V1;
    assign SE_i_reduction_zlaswp_9_zlaswp65_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V2 & SE_i_reduction_zlaswp_9_zlaswp65_and0;
    assign SE_i_reduction_zlaswp_9_zlaswp65_wireValid = SE_i_reduction_zlaswp_0_zlaswp29_V0 & SE_i_reduction_zlaswp_9_zlaswp65_and1;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62(STALLENABLE,699)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed0 = (~ (SE_i_reduction_zlaswp_23_zlaswp86_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed1 = (~ (SE_i_reduction_zlaswp_9_zlaswp65_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_wireValid = i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64(STALLENABLE,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed0 = (~ (SE_i_reduction_zlaswp_23_zlaswp86_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed1 = (~ (SE_i_reduction_zlaswp_28_zlaswp92_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed2 = (~ (SE_i_reduction_zlaswp_9_zlaswp65_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_wireValid = i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_valid_out;

    // SE_i_reduction_zlaswp_23_zlaswp86(STALLENABLE,762)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_23_zlaswp86_V0 = SE_i_reduction_zlaswp_23_zlaswp86_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_23_zlaswp86_backStall = SE_i_reduction_zlaswp_25_zlaswp88_backStall | ~ (SE_i_reduction_zlaswp_23_zlaswp86_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_23_zlaswp86_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V0;
    assign SE_i_reduction_zlaswp_23_zlaswp86_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V1 & SE_i_reduction_zlaswp_23_zlaswp86_and0;
    assign SE_i_reduction_zlaswp_23_zlaswp86_and2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_V0 & SE_i_reduction_zlaswp_23_zlaswp86_and1;
    assign SE_i_reduction_zlaswp_23_zlaswp86_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_V1 & SE_i_reduction_zlaswp_23_zlaswp86_and2;

    // SE_i_reduction_zlaswp_25_zlaswp88(STALLENABLE,764)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_25_zlaswp88_V0 = SE_i_reduction_zlaswp_25_zlaswp88_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_zlaswp_25_zlaswp88_s_tv_0 = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_out & SE_i_reduction_zlaswp_25_zlaswp88_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_zlaswp_25_zlaswp88_backEN = ~ (SE_i_reduction_zlaswp_25_zlaswp88_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_zlaswp_25_zlaswp88_and0 = SE_i_reduction_zlaswp_23_zlaswp86_V0 & SE_i_reduction_zlaswp_25_zlaswp88_backEN;
    assign SE_i_reduction_zlaswp_25_zlaswp88_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V2 & SE_i_reduction_zlaswp_25_zlaswp88_and0;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_25_zlaswp88_backStall = ~ (SE_i_reduction_zlaswp_25_zlaswp88_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_25_zlaswp88_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_zlaswp_25_zlaswp88_backEN == 1'b0)
            begin
                SE_i_reduction_zlaswp_25_zlaswp88_R_v_0 <= SE_i_reduction_zlaswp_25_zlaswp88_R_v_0 & SE_i_reduction_zlaswp_25_zlaswp88_s_tv_0;
            end
            else
            begin
                SE_i_reduction_zlaswp_25_zlaswp88_R_v_0 <= SE_i_reduction_zlaswp_25_zlaswp88_v_s_0;
            end

        end
    end

    // SE_i_reduction_zlaswp_20_zlaswp81(STALLENABLE,759)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_20_zlaswp81_V0 = SE_i_reduction_zlaswp_20_zlaswp81_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_zlaswp_20_zlaswp81_s_tv_0 = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_out & SE_i_reduction_zlaswp_20_zlaswp81_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_zlaswp_20_zlaswp81_backEN = ~ (SE_i_reduction_zlaswp_20_zlaswp81_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_zlaswp_20_zlaswp81_and0 = SE_i_reduction_zlaswp_19_zlaswp80_V0 & SE_i_reduction_zlaswp_20_zlaswp81_backEN;
    assign SE_i_reduction_zlaswp_20_zlaswp81_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V1 & SE_i_reduction_zlaswp_20_zlaswp81_and0;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_20_zlaswp81_backStall = ~ (SE_i_reduction_zlaswp_20_zlaswp81_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_20_zlaswp81_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_zlaswp_20_zlaswp81_backEN == 1'b0)
            begin
                SE_i_reduction_zlaswp_20_zlaswp81_R_v_0 <= SE_i_reduction_zlaswp_20_zlaswp81_R_v_0 & SE_i_reduction_zlaswp_20_zlaswp81_s_tv_0;
            end
            else
            begin
                SE_i_reduction_zlaswp_20_zlaswp81_R_v_0 <= SE_i_reduction_zlaswp_20_zlaswp81_v_s_0;
            end

        end
    end

    // SE_i_reduction_zlaswp_0_zlaswp29(STALLENABLE,752)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_0_zlaswp29_fromReg0 <= '0;
            SE_i_reduction_zlaswp_0_zlaswp29_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_zlaswp_0_zlaswp29_fromReg0 <= SE_i_reduction_zlaswp_0_zlaswp29_toReg0;
            // Successor 1
            SE_i_reduction_zlaswp_0_zlaswp29_fromReg1 <= SE_i_reduction_zlaswp_0_zlaswp29_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_zlaswp_0_zlaswp29_consumed0 = (~ (SE_i_reduction_zlaswp_9_zlaswp65_backStall) & SE_i_reduction_zlaswp_0_zlaswp29_wireValid) | SE_i_reduction_zlaswp_0_zlaswp29_fromReg0;
    assign SE_i_reduction_zlaswp_0_zlaswp29_consumed1 = (~ (SE_i_reduction_zlaswp_1_zlaswp31_backStall) & SE_i_reduction_zlaswp_0_zlaswp29_wireValid) | SE_i_reduction_zlaswp_0_zlaswp29_fromReg1;
    // Consuming
    assign SE_i_reduction_zlaswp_0_zlaswp29_StallValid = SE_i_reduction_zlaswp_0_zlaswp29_backStall & SE_i_reduction_zlaswp_0_zlaswp29_wireValid;
    assign SE_i_reduction_zlaswp_0_zlaswp29_toReg0 = SE_i_reduction_zlaswp_0_zlaswp29_StallValid & SE_i_reduction_zlaswp_0_zlaswp29_consumed0;
    assign SE_i_reduction_zlaswp_0_zlaswp29_toReg1 = SE_i_reduction_zlaswp_0_zlaswp29_StallValid & SE_i_reduction_zlaswp_0_zlaswp29_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_0_zlaswp29_or0 = SE_i_reduction_zlaswp_0_zlaswp29_consumed0;
    assign SE_i_reduction_zlaswp_0_zlaswp29_wireStall = ~ (SE_i_reduction_zlaswp_0_zlaswp29_consumed1 & SE_i_reduction_zlaswp_0_zlaswp29_or0);
    assign SE_i_reduction_zlaswp_0_zlaswp29_backStall = SE_i_reduction_zlaswp_0_zlaswp29_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_0_zlaswp29_V0 = SE_i_reduction_zlaswp_0_zlaswp29_wireValid & ~ (SE_i_reduction_zlaswp_0_zlaswp29_fromReg0);
    assign SE_i_reduction_zlaswp_0_zlaswp29_V1 = SE_i_reduction_zlaswp_0_zlaswp29_wireValid & ~ (SE_i_reduction_zlaswp_0_zlaswp29_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_0_zlaswp29_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V0;
    assign SE_i_reduction_zlaswp_0_zlaswp29_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V0 & SE_i_reduction_zlaswp_0_zlaswp29_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28(STALLENABLE,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg3 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed0 = (~ (SE_i_reduction_zlaswp_0_zlaswp29_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed1 = (~ (SE_i_reduction_zlaswp_20_zlaswp81_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed2 = (~ (SE_i_reduction_zlaswp_25_zlaswp88_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed3 = (~ (SE_i_reduction_zlaswp_4_zlaswp51_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_toReg3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_consumed3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_or2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_wireValid = i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27(STALLENABLE,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed0 = (~ (SE_i_reduction_zlaswp_0_zlaswp29_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed1 = (~ (SE_i_reduction_zlaswp_23_zlaswp86_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed2 = (~ (SE_i_reduction_zlaswp_4_zlaswp51_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_wireValid = i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_valid_out;

    // SE_i_reduction_zlaswp_4_zlaswp51(STALLENABLE,772)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_4_zlaswp51_fromReg0 <= '0;
            SE_i_reduction_zlaswp_4_zlaswp51_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_zlaswp_4_zlaswp51_fromReg0 <= SE_i_reduction_zlaswp_4_zlaswp51_toReg0;
            // Successor 1
            SE_i_reduction_zlaswp_4_zlaswp51_fromReg1 <= SE_i_reduction_zlaswp_4_zlaswp51_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_zlaswp_4_zlaswp51_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm248_zlaswp53_backStall) & SE_i_reduction_zlaswp_4_zlaswp51_wireValid) | SE_i_reduction_zlaswp_4_zlaswp51_fromReg0;
    assign SE_i_reduction_zlaswp_4_zlaswp51_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_backStall) & SE_i_reduction_zlaswp_4_zlaswp51_wireValid) | SE_i_reduction_zlaswp_4_zlaswp51_fromReg1;
    // Consuming
    assign SE_i_reduction_zlaswp_4_zlaswp51_StallValid = SE_i_reduction_zlaswp_4_zlaswp51_backStall & SE_i_reduction_zlaswp_4_zlaswp51_wireValid;
    assign SE_i_reduction_zlaswp_4_zlaswp51_toReg0 = SE_i_reduction_zlaswp_4_zlaswp51_StallValid & SE_i_reduction_zlaswp_4_zlaswp51_consumed0;
    assign SE_i_reduction_zlaswp_4_zlaswp51_toReg1 = SE_i_reduction_zlaswp_4_zlaswp51_StallValid & SE_i_reduction_zlaswp_4_zlaswp51_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_4_zlaswp51_or0 = SE_i_reduction_zlaswp_4_zlaswp51_consumed0;
    assign SE_i_reduction_zlaswp_4_zlaswp51_wireStall = ~ (SE_i_reduction_zlaswp_4_zlaswp51_consumed1 & SE_i_reduction_zlaswp_4_zlaswp51_or0);
    assign SE_i_reduction_zlaswp_4_zlaswp51_backStall = SE_i_reduction_zlaswp_4_zlaswp51_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_4_zlaswp51_V0 = SE_i_reduction_zlaswp_4_zlaswp51_wireValid & ~ (SE_i_reduction_zlaswp_4_zlaswp51_fromReg0);
    assign SE_i_reduction_zlaswp_4_zlaswp51_V1 = SE_i_reduction_zlaswp_4_zlaswp51_wireValid & ~ (SE_i_reduction_zlaswp_4_zlaswp51_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_4_zlaswp51_and0 = SE_i_reduction_zlaswp_3_zlaswp50_V1;
    assign SE_i_reduction_zlaswp_4_zlaswp51_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_V2 & SE_i_reduction_zlaswp_4_zlaswp51_and0;
    assign SE_i_reduction_zlaswp_4_zlaswp51_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_V3 & SE_i_reduction_zlaswp_4_zlaswp51_and1;

    // SE_i_reduction_zlaswp_19_zlaswp80(STALLENABLE,757)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_19_zlaswp80_V0 = SE_i_reduction_zlaswp_19_zlaswp80_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_19_zlaswp80_backStall = SE_i_reduction_zlaswp_20_zlaswp81_backStall | ~ (SE_i_reduction_zlaswp_19_zlaswp80_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_19_zlaswp80_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_V0;
    assign SE_i_reduction_zlaswp_19_zlaswp80_wireValid = SE_i_reduction_zlaswp_3_zlaswp50_V0 & SE_i_reduction_zlaswp_19_zlaswp80_and0;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30(STALLENABLE,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed0 = (~ (SE_i_reduction_zlaswp_1_zlaswp31_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed1 = (~ (SE_i_reduction_zlaswp_28_zlaswp92_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed2 = (~ (SE_i_reduction_zlaswp_3_zlaswp50_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_wireValid = i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_valid_out;

    // SE_i_reduction_zlaswp_3_zlaswp50(STALLENABLE,771)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_3_zlaswp50_fromReg0 <= '0;
            SE_i_reduction_zlaswp_3_zlaswp50_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_zlaswp_3_zlaswp50_fromReg0 <= SE_i_reduction_zlaswp_3_zlaswp50_toReg0;
            // Successor 1
            SE_i_reduction_zlaswp_3_zlaswp50_fromReg1 <= SE_i_reduction_zlaswp_3_zlaswp50_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_zlaswp_3_zlaswp50_consumed0 = (~ (SE_i_reduction_zlaswp_19_zlaswp80_backStall) & SE_i_reduction_zlaswp_3_zlaswp50_wireValid) | SE_i_reduction_zlaswp_3_zlaswp50_fromReg0;
    assign SE_i_reduction_zlaswp_3_zlaswp50_consumed1 = (~ (SE_i_reduction_zlaswp_4_zlaswp51_backStall) & SE_i_reduction_zlaswp_3_zlaswp50_wireValid) | SE_i_reduction_zlaswp_3_zlaswp50_fromReg1;
    // Consuming
    assign SE_i_reduction_zlaswp_3_zlaswp50_StallValid = SE_i_reduction_zlaswp_3_zlaswp50_backStall & SE_i_reduction_zlaswp_3_zlaswp50_wireValid;
    assign SE_i_reduction_zlaswp_3_zlaswp50_toReg0 = SE_i_reduction_zlaswp_3_zlaswp50_StallValid & SE_i_reduction_zlaswp_3_zlaswp50_consumed0;
    assign SE_i_reduction_zlaswp_3_zlaswp50_toReg1 = SE_i_reduction_zlaswp_3_zlaswp50_StallValid & SE_i_reduction_zlaswp_3_zlaswp50_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_3_zlaswp50_or0 = SE_i_reduction_zlaswp_3_zlaswp50_consumed0;
    assign SE_i_reduction_zlaswp_3_zlaswp50_wireStall = ~ (SE_i_reduction_zlaswp_3_zlaswp50_consumed1 & SE_i_reduction_zlaswp_3_zlaswp50_or0);
    assign SE_i_reduction_zlaswp_3_zlaswp50_backStall = SE_i_reduction_zlaswp_3_zlaswp50_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_3_zlaswp50_V0 = SE_i_reduction_zlaswp_3_zlaswp50_wireValid & ~ (SE_i_reduction_zlaswp_3_zlaswp50_fromReg0);
    assign SE_i_reduction_zlaswp_3_zlaswp50_V1 = SE_i_reduction_zlaswp_3_zlaswp50_wireValid & ~ (SE_i_reduction_zlaswp_3_zlaswp50_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_3_zlaswp50_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V2;
    assign SE_i_reduction_zlaswp_3_zlaswp50_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V3 & SE_i_reduction_zlaswp_3_zlaswp50_and0;

    // SE_i_reduction_zlaswp_12_zlaswp67(STALLENABLE,754)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_12_zlaswp67_V0 = SE_i_reduction_zlaswp_12_zlaswp67_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_zlaswp_12_zlaswp67_s_tv_0 = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_out & SE_i_reduction_zlaswp_12_zlaswp67_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_zlaswp_12_zlaswp67_backEN = ~ (SE_i_reduction_zlaswp_12_zlaswp67_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_zlaswp_12_zlaswp67_and0 = SE_i_reduction_zlaswp_9_zlaswp65_V0 & SE_i_reduction_zlaswp_12_zlaswp67_backEN;
    assign SE_i_reduction_zlaswp_12_zlaswp67_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V0 & SE_i_reduction_zlaswp_12_zlaswp67_and0;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_12_zlaswp67_backStall = ~ (SE_i_reduction_zlaswp_12_zlaswp67_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_12_zlaswp67_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_zlaswp_12_zlaswp67_backEN == 1'b0)
            begin
                SE_i_reduction_zlaswp_12_zlaswp67_R_v_0 <= SE_i_reduction_zlaswp_12_zlaswp67_R_v_0 & SE_i_reduction_zlaswp_12_zlaswp67_s_tv_0;
            end
            else
            begin
                SE_i_reduction_zlaswp_12_zlaswp67_R_v_0 <= SE_i_reduction_zlaswp_12_zlaswp67_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32(STALLENABLE,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg3 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed0 = (~ (SE_i_reduction_zlaswp_12_zlaswp67_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed1 = (~ (SE_i_reduction_zlaswp_1_zlaswp31_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed2 = (~ (SE_i_reduction_zlaswp_30_zlaswp94_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed3 = (~ (SE_i_reduction_zlaswp_3_zlaswp50_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_toReg3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_consumed3 & SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_or2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V3 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_wireValid = i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_valid_out;

    // SE_i_reduction_zlaswp_28_zlaswp92(STALLENABLE,766)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_28_zlaswp92_V0 = SE_i_reduction_zlaswp_28_zlaswp92_wireValid;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_28_zlaswp92_backStall = SE_i_reduction_zlaswp_30_zlaswp94_backStall | ~ (SE_i_reduction_zlaswp_28_zlaswp92_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_28_zlaswp92_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V1;
    assign SE_i_reduction_zlaswp_28_zlaswp92_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_V1 & SE_i_reduction_zlaswp_28_zlaswp92_and0;
    assign SE_i_reduction_zlaswp_28_zlaswp92_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_V1 & SE_i_reduction_zlaswp_28_zlaswp92_and1;

    // SE_i_reduction_zlaswp_30_zlaswp94(STALLENABLE,769)
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_30_zlaswp94_V0 = SE_i_reduction_zlaswp_30_zlaswp94_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_zlaswp_30_zlaswp94_s_tv_0 = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_out & SE_i_reduction_zlaswp_30_zlaswp94_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_zlaswp_30_zlaswp94_backEN = ~ (SE_i_reduction_zlaswp_30_zlaswp94_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_zlaswp_30_zlaswp94_and0 = SE_i_reduction_zlaswp_28_zlaswp92_V0 & SE_i_reduction_zlaswp_30_zlaswp94_backEN;
    assign SE_i_reduction_zlaswp_30_zlaswp94_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V2 & SE_i_reduction_zlaswp_30_zlaswp94_and0;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_30_zlaswp94_backStall = ~ (SE_i_reduction_zlaswp_30_zlaswp94_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_30_zlaswp94_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_zlaswp_30_zlaswp94_backEN == 1'b0)
            begin
                SE_i_reduction_zlaswp_30_zlaswp94_R_v_0 <= SE_i_reduction_zlaswp_30_zlaswp94_R_v_0 & SE_i_reduction_zlaswp_30_zlaswp94_s_tv_0;
            end
            else
            begin
                SE_i_reduction_zlaswp_30_zlaswp94_R_v_0 <= SE_i_reduction_zlaswp_30_zlaswp94_v_s_0;
            end

        end
    end

    // redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo(STALLFIFO,459)
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_in = SE_i_reduction_zlaswp_30_zlaswp94_V0;
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_in = SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall;
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_data_in = i_reduction_zlaswp_30_zlaswp94_q;
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_in_bitsignaltemp = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_in[0];
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_in_bitsignaltemp = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_in[0];
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_out[0] = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_out_bitsignaltemp;
    assign redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_out[0] = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo (
        .valid_in(redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_zlaswp_30_zlaswp94_q),
        .valid_out(redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm248_zlaswp53(BITJOIN,513)
    assign bubble_join_i_llvm_fpga_mem_lm248_zlaswp53_q = i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm248_zlaswp53(BITSELECT,514)
    assign bubble_select_i_llvm_fpga_mem_lm248_zlaswp53_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm248_zlaswp53_q[31:0]);

    // redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo(STALLFIFO,483)
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V2;
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_in = SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall;
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_data_in = bubble_select_i_llvm_fpga_mem_lm248_zlaswp53_b;
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_in_bitsignaltemp = redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_in[0];
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_in_bitsignaltemp = redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_in[0];
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_out[0] = redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_out_bitsignaltemp;
    assign redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_out[0] = redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo (
        .valid_in(redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_lm248_zlaswp53_b),
        .valid_out(redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo(STALLENABLE,913)
    // Valid signal propagation
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_V0 = SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall = i_llvm_fpga_mem_memdep_46_zlaswp96_out_o_stall | ~ (SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and0 = redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_valid_out;
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and1 = redist11_i_reduction_zlaswp_30_zlaswp94_q_63_fifo_valid_out & SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and0;
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and2 = redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_out & SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and1;
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and3 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_V1 & SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and2;
    assign SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_wireValid = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_V1 & SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_and3;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84(STALLENABLE,731)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_wireValid = i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84(BLACKBOX,74)@164
    // in in_stall_in@20000000
    // out out_data_out@165
    // out out_feedback_out_54@20000000
    // out out_feedback_valid_out_54@20000000
    // out out_stall_out@20000000
    // out out_valid_out@165
    zlaswp_i_llvm_fpga_push_i1_memdep_phi32_push54_0 thei_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_31_zlaswp83_b),
        .in_feedback_stall_in_54(i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_feedback_stall_out_54),
        .in_keep_going200(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_V0),
        .out_data_out(),
        .out_feedback_out_54(i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_feedback_out_54),
        .out_feedback_valid_out_54(i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_feedback_valid_out_54),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84(STALLENABLE,730)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall = i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_and0 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_wireValid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_and0;

    // SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83(STALLENABLE,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall) & SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid) | SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed1 = (~ (SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid) | SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_StallValid = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_backStall & SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_toReg0 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_StallValid & SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_toReg1 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_StallValid & SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_or0 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_consumed1 & SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_backStall = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_V0 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_V1 = SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_wireValid = i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_valid;

    // bubble_join_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo(BITJOIN,622)
    assign bubble_join_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_q = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_data_out;

    // bubble_select_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo(BITSELECT,623)
    assign bubble_select_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_b = $unsigned(bubble_join_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_q[0:0]);

    // i_lm248_toi1_intcast22_zlaswp54_sel_x(BITSELECT,292)@133
    assign i_lm248_toi1_intcast22_zlaswp54_sel_x_b = bubble_select_i_llvm_fpga_mem_lm248_zlaswp53_b[0:0];

    // i_reduction_zlaswp_21_zlaswp82(LOGICAL,101)@133
    assign i_reduction_zlaswp_21_zlaswp82_q = i_lm248_toi1_intcast22_zlaswp54_sel_x_b | bubble_select_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_b;

    // bubble_join_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo(BITJOIN,613)
    assign bubble_join_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_q = redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_data_out;

    // bubble_select_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo(BITSELECT,614)
    assign bubble_select_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_b = $unsigned(bubble_join_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_31_zlaswp83(BLACKBOX,53)@133
    // in in_i_stall@20000000
    // out out_lsu_memdep_31_o_active@20000000
    // out out_memdep_31_zlaswp_avm_address@20000000
    // out out_memdep_31_zlaswp_avm_burstcount@20000000
    // out out_memdep_31_zlaswp_avm_byteenable@20000000
    // out out_memdep_31_zlaswp_avm_enable@20000000
    // out out_memdep_31_zlaswp_avm_read@20000000
    // out out_memdep_31_zlaswp_avm_write@20000000
    // out out_memdep_31_zlaswp_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@164
    // out out_o_writeack@164
    zlaswp_i_llvm_fpga_mem_memdep_31_0 thei_llvm_fpga_mem_memdep_31_zlaswp83 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_b),
        .in_i_dependence(i_reduction_zlaswp_21_zlaswp82_q),
        .in_i_predicate(bubble_select_redist16_i_or207_zlaswp46_q_32_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_31_zlaswp83_backStall),
        .in_i_valid(SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_lm2810_zlaswp72_b),
        .in_memdep_31_zlaswp_avm_readdata(in_memdep_31_zlaswp_avm_readdata),
        .in_memdep_31_zlaswp_avm_readdatavalid(in_memdep_31_zlaswp_avm_readdatavalid),
        .in_memdep_31_zlaswp_avm_waitrequest(in_memdep_31_zlaswp_avm_waitrequest),
        .in_memdep_31_zlaswp_avm_writeack(in_memdep_31_zlaswp_avm_writeack),
        .out_lsu_memdep_31_o_active(i_llvm_fpga_mem_memdep_31_zlaswp83_out_lsu_memdep_31_o_active),
        .out_memdep_31_zlaswp_avm_address(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_address),
        .out_memdep_31_zlaswp_avm_burstcount(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_burstcount),
        .out_memdep_31_zlaswp_avm_byteenable(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_byteenable),
        .out_memdep_31_zlaswp_avm_enable(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_enable),
        .out_memdep_31_zlaswp_avm_read(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_read),
        .out_memdep_31_zlaswp_avm_write(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_write),
        .out_memdep_31_zlaswp_avm_writedata(i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lm2810_toi1_intcast_zlaswp73_sel_x(BITSELECT,294)@133
    assign i_lm2810_toi1_intcast_zlaswp73_sel_x_b = bubble_select_i_llvm_fpga_mem_lm2810_zlaswp72_b[0:0];

    // SE_out_i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74(STALLENABLE,729)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_wireValid = i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74(BLACKBOX,73)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_out_53@20000000
    // out out_feedback_valid_out_53@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    zlaswp_i_llvm_fpga_push_i1_memdep_phi28_push53_0 thei_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74 (
        .in_data_in(SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_D0),
        .in_feedback_stall_in_53(i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_feedback_stall_out_53),
        .in_keep_going200(SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_backStall),
        .in_valid_in(SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_53(i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_feedback_out_53),
        .out_feedback_valid_out_53(i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_feedback_valid_out_53),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm2810_toi1_intcast_zlaswp73_sel_x(STALLENABLE,805)
    // Valid signal propagation
    assign SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_V0 = SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_wireValid;
    // Backward Stall generation
    assign SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall = i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_stall_out | ~ (SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_wireValid = SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_V;

    // SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x(STALLREG,1165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid <= 1'b0;
            SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data0 <= 1'bx;
            SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid <= SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall & (SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid | SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_i_valid);

            if (SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data0 <= i_lm2810_toi1_intcast_zlaswp73_sel_x_b;
                SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data1 <= $unsigned(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_V1;
    assign SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_i_valid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V2 & SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_and0;
    // Stall signal propagation
    assign SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall = SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid | ~ (SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_i_valid);

    // Valid
    assign SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_V = SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid == 1'b1 ? SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid : SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_i_valid;

    // Data0
    assign SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_D0 = SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid == 1'b1 ? SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data0 : i_lm2810_toi1_intcast_zlaswp73_sel_x_b;
    // Data1
    assign SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_D1 = SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_valid == 1'b1 ? SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_r_data1 : bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b;

    // SE_out_i_llvm_fpga_mem_lm2810_zlaswp72(STALLENABLE,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg0 <= SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg1 <= SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed0 = (~ (SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid) | SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed1 = (~ (SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid) | SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_StallValid = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_backStall & SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_toReg0 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_StallValid & SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_toReg1 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_StallValid & SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_or0 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_consumed1 & SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_or0);
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_backStall = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_V0 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_V1 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid = i_llvm_fpga_mem_lm2810_zlaswp72_out_o_valid;

    // redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo(STALLFIFO,455)
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_in = SE_i_arrayidx23_zlaswp0_add_x_V1;
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_in = SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall;
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_data_in = i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b;
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_in[0];
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_in[0];
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_out[0] = redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_out[0] = redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo (
        .valid_in(redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b),
        .valid_out(redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63(STALLENABLE,723)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_wireValid = i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63(BLACKBOX,70)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    zlaswp_i_llvm_fpga_push_i1_memdep_phi21_push50_0 thei_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_D0),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_feedback_stall_out_50),
        .in_keep_going200(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_V0),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_feedback_valid_out_50),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63(STALLENABLE,722)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall = i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63(STALLREG,1163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data0 <= i_lm248_toi1_intcast22_zlaswp54_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data1 <= $unsigned(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_and0 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_i_valid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V0 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data0 : i_lm248_toi1_intcast22_zlaswp54_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_r_data1 : bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b;

    // SE_out_i_llvm_fpga_mem_lm248_zlaswp53(STALLENABLE,681)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg0 <= SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg1 <= SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg2 <= SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall) & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid) | SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed1 = (~ (SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid) | SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed2 = (~ (redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid) | SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_StallValid = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_backStall & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg0 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_StallValid & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg1 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_StallValid & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_toReg2 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_StallValid & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_or0 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_or1 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed1 & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_or0;
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm248_zlaswp53_consumed2 & SE_out_i_llvm_fpga_mem_lm248_zlaswp53_or1);
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_backStall = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V0 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V1 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V2 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm248_zlaswp53_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm248_zlaswp53_wireValid = i_llvm_fpga_mem_lm248_zlaswp53_out_o_valid;

    // i_reduction_zlaswp_19_zlaswp80(LOGICAL,98)@101
    assign i_reduction_zlaswp_19_zlaswp80_q = i_reduction_zlaswp_17_zlaswp79_q | i_reduction_zlaswp_3_zlaswp50_q;

    // i_reduction_zlaswp_20_zlaswp81(LOGICAL,100)@101 + 1
    assign i_reduction_zlaswp_20_zlaswp81_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_b | i_reduction_zlaswp_19_zlaswp80_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_zlaswp_20_zlaswp81_delay ( .xin(i_reduction_zlaswp_20_zlaswp81_qi), .xout(i_reduction_zlaswp_20_zlaswp81_q), .ena(SE_i_reduction_zlaswp_20_zlaswp81_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo(STALLFIFO,461)
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_in = SE_i_reduction_zlaswp_20_zlaswp81_V0;
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_in = SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall;
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_data_in = i_reduction_zlaswp_20_zlaswp81_q;
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_in_bitsignaltemp = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_in[0];
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_in_bitsignaltemp = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_in[0];
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_out[0] = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_out_bitsignaltemp;
    assign redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_out[0] = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo (
        .valid_in(redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_zlaswp_20_zlaswp81_q),
        .valid_out(redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo(STALLENABLE,882)
    // Valid signal propagation
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_V0 = SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall = i_llvm_fpga_mem_memdep_31_zlaswp83_out_o_stall | ~ (SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and0 = redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_valid_out;
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and1 = SE_out_i_llvm_fpga_mem_lm248_zlaswp53_V1 & SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and0;
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and2 = redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_valid_out & SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and1;
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and3 = SE_out_i_llvm_fpga_mem_lm2810_zlaswp72_V0 & SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and2;
    assign SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_wireValid = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V0 & SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_and3;

    // SE_out_redist16_i_or207_zlaswp46_q_32_fifo(STALLENABLE,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg0 <= '0;
            SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg1 <= '0;
            SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg0 <= SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg1 <= SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg1;
            // Successor 2
            SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg2 <= SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed0 = (~ (SE_out_redist13_i_reduction_zlaswp_20_zlaswp81_q_32_fifo_backStall) & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid) | SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg0;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed1 = (~ (SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall) & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid) | SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg1;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed2 = (~ (redist17_i_or207_zlaswp46_q_63_fifo_stall_out) & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid) | SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg2;
    // Consuming
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_StallValid = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_backStall & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg0 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_StallValid & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed0;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg1 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_StallValid & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed1;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_toReg2 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_StallValid & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_or0 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed0;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_or1 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed1 & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_or0;
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireStall = ~ (SE_out_redist16_i_or207_zlaswp46_q_32_fifo_consumed2 & SE_out_redist16_i_or207_zlaswp46_q_32_fifo_or1);
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_backStall = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V0 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid & ~ (SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg0);
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V1 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid & ~ (SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg1);
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V2 = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid & ~ (SE_out_redist16_i_or207_zlaswp46_q_32_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist16_i_or207_zlaswp46_q_32_fifo_wireValid = redist16_i_or207_zlaswp46_q_32_fifo_valid_out;

    // i_lm269_toi1_intcast_zlaswp61_sel_x(BITSELECT,293)@133
    assign i_lm269_toi1_intcast_zlaswp61_sel_x_b = bubble_select_i_llvm_fpga_mem_lm269_zlaswp60_b[0:0];

    // SE_out_i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78(STALLENABLE,725)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_wireValid = i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78(BLACKBOX,71)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    zlaswp_i_llvm_fpga_push_i1_memdep_phi23_push51_0 thei_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78 (
        .in_data_in(SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_D0),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_feedback_stall_out_51),
        .in_keep_going200(SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_backStall),
        .in_valid_in(SE_i_lm269_toi1_intcast_zlaswp61_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_feedback_valid_out_51),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_lm269_toi1_intcast_zlaswp61_sel_x(STALLENABLE,804)
    // Valid signal propagation
    assign SE_i_lm269_toi1_intcast_zlaswp61_sel_x_V0 = SE_i_lm269_toi1_intcast_zlaswp61_sel_x_wireValid;
    // Backward Stall generation
    assign SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall = i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_stall_out | ~ (SE_i_lm269_toi1_intcast_zlaswp61_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_lm269_toi1_intcast_zlaswp61_sel_x_wireValid = SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_V;

    // SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x(STALLREG,1164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid <= 1'b0;
            SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data0 <= 1'bx;
            SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid <= SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall & (SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid | SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_i_valid);

            if (SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data0 <= i_lm269_toi1_intcast_zlaswp61_sel_x_b;
                SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data1 <= $unsigned(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_and0 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_V1;
    assign SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_i_valid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V1 & SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_and0;
    // Stall signal propagation
    assign SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall = SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid | ~ (SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_i_valid);

    // Valid
    assign SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_V = SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid == 1'b1 ? SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid : SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_i_valid;

    // Data0
    assign SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_D0 = SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid == 1'b1 ? SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data0 : i_lm269_toi1_intcast_zlaswp61_sel_x_b;
    // Data1
    assign SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_D1 = SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_valid == 1'b1 ? SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_r_data1 : bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b;

    // SE_out_i_llvm_fpga_mem_lm269_zlaswp60(STALLENABLE,683)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg0 <= SE_out_i_llvm_fpga_mem_lm269_zlaswp60_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg1 <= SE_out_i_llvm_fpga_mem_lm269_zlaswp60_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed0 = (~ (SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid) | SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed1 = (~ (SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall) & SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid) | SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_StallValid = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_backStall & SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_toReg0 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_StallValid & SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_toReg1 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_StallValid & SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_or0 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm269_zlaswp60_consumed1 & SE_out_i_llvm_fpga_mem_lm269_zlaswp60_or0);
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_backStall = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_V0 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_V1 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm269_zlaswp60_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm269_zlaswp60_wireValid = i_llvm_fpga_mem_lm269_zlaswp60_out_o_valid;

    // redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo(STALLFIFO,451)
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_in = SE_i_arrayidx23_zlaswp0_add_x_V3;
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_in = SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall;
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_data_in = i_r_zlaswp0_trunc_sel_x_b;
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp = redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_in[0];
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp = redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_in[0];
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_out[0] = redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_out[0] = redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo (
        .valid_in(redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_r_zlaswp0_trunc_sel_x_b),
        .valid_out(redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_reduction_zlaswp_0_zlaswp29(LOGICAL,93)@101
    assign i_reduction_zlaswp_0_zlaswp29_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_b;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62(BITJOIN,543)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_q = i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62(BITSELECT,544)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_q[0:0]);

    // i_reduction_zlaswp_9_zlaswp65(LOGICAL,115)@101
    assign i_reduction_zlaswp_9_zlaswp65_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_b;

    // i_reduction_zlaswp_11_zlaswp66(LOGICAL,94)@101
    assign i_reduction_zlaswp_11_zlaswp66_q = i_reduction_zlaswp_9_zlaswp65_q | i_reduction_zlaswp_0_zlaswp29_q;

    // i_reduction_zlaswp_12_zlaswp67(LOGICAL,95)@101 + 1
    assign i_reduction_zlaswp_12_zlaswp67_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_b | i_reduction_zlaswp_11_zlaswp66_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_zlaswp_12_zlaswp67_delay ( .xin(i_reduction_zlaswp_12_zlaswp67_qi), .xout(i_reduction_zlaswp_12_zlaswp67_q), .ena(SE_i_reduction_zlaswp_12_zlaswp67_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo(STALLFIFO,462)
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_in = SE_i_reduction_zlaswp_12_zlaswp67_V0;
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_in = SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall;
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_data_in = i_reduction_zlaswp_12_zlaswp67_q;
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_in_bitsignaltemp = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_in[0];
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_in_bitsignaltemp = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_in[0];
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_out[0] = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_out_bitsignaltemp;
    assign redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_out[0] = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo (
        .valid_in(redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_zlaswp_12_zlaswp67_q),
        .valid_out(redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo(STALLENABLE,884)
    // Valid signal propagation
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_V0 = SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall = i_llvm_fpga_mem_memdep_zlaswp69_out_o_stall | ~ (SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and0 = redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_valid_out;
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and1 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V1 & SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and0;
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and2 = redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_valid_out & SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and1;
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and3 = SE_out_i_llvm_fpga_mem_lm269_zlaswp60_V0 & SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and2;
    assign SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_wireValid = SE_out_redist16_i_or207_zlaswp46_q_32_fifo_V1 & SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_and3;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76(STALLENABLE,737)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_wireValid = i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76(BLACKBOX,77)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    zlaswp_i_llvm_fpga_push_i1_memdep_phi_push49_0 thei_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_D0),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_feedback_stall_out_49),
        .in_keep_going200(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_V0),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_feedback_valid_out_49),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76(STALLENABLE,736)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall = i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76(STALLREG,1167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data0 <= i_lm7_toi1_intcast20_zlaswp36_sel_x_b;
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data1 <= $unsigned(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_and0 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_i_valid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V3 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data0 : i_lm7_toi1_intcast20_zlaswp36_sel_x_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_r_data1 : bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b;

    // SE_out_i_llvm_fpga_mem_lm7_zlaswp35(STALLENABLE,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg0 <= SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg1 <= SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg2 <= SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall) & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid) | SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed1 = (~ (SE_out_redist14_i_reduction_zlaswp_12_zlaswp67_q_32_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid) | SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed2 = (~ (redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid) | SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_StallValid = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_backStall & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg0 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_StallValid & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg1 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_StallValid & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_toReg2 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_StallValid & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_or0 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_or1 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed1 & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_or0;
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm7_zlaswp35_consumed2 & SE_out_i_llvm_fpga_mem_lm7_zlaswp35_or1);
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_backStall = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V0 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V1 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V2 = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm7_zlaswp35_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm7_zlaswp35_wireValid = i_llvm_fpga_mem_lm7_zlaswp35_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6(BITJOIN,494)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_q = i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6(BITSELECT,495)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_q[31:0]);

    // bubble_join_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7(BITJOIN,570)
    assign bubble_join_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_q = i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7(BITSELECT,571)
    assign bubble_select_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_q[31:0]);

    // redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backEN == 1'b1)
        begin
            redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_q <= $unsigned(bubble_select_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b);
        end
    end

    // i_storemerge71_replace_phi_zlaswp8(MUX,116)@96
    assign i_storemerge71_replace_phi_zlaswp8_s = redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_q;
    always @(i_storemerge71_replace_phi_zlaswp8_s or bubble_select_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_b or bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_b)
    begin
        unique case (i_storemerge71_replace_phi_zlaswp8_s)
            1'b0 : i_storemerge71_replace_phi_zlaswp8_q = bubble_select_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_b;
            1'b1 : i_storemerge71_replace_phi_zlaswp8_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_b;
            default : i_storemerge71_replace_phi_zlaswp8_q = 32'b0;
        endcase
    end

    // c_i32_31106(CONSTANT,13)
    assign c_i32_31106_q = $unsigned(32'b00000000000000000000000000011111);

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2(STALLENABLE,1051)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9(STALLENABLE,669)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_backStall = SE_i_cmp18_zlaswp16_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_wireValid = i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9(BLACKBOX,43)@96
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge69165_0 thei_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9(BITJOIN,497)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_q = i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9(BITSELECT,498)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_q[31:0]);

    // i_add16_zlaswp10(ADD,21)@96
    assign i_add16_zlaswp10_a = {1'b0, bubble_select_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_b};
    assign i_add16_zlaswp10_b = {1'b0, c_i32_31106_q};
    assign i_add16_zlaswp10_o = $unsigned(i_add16_zlaswp10_a) + $unsigned(i_add16_zlaswp10_b);
    assign i_add16_zlaswp10_q = i_add16_zlaswp10_o[32:0];

    // bgTrunc_i_add16_zlaswp10_sel_x(BITSELECT,225)@96
    assign bgTrunc_i_add16_zlaswp10_sel_x_b = i_add16_zlaswp10_q[31:0];

    // i_cmp18_zlaswp16(COMPARE,27)@96 + 1
    assign i_cmp18_zlaswp16_a = {2'b00, bgTrunc_i_add16_zlaswp10_sel_x_b};
    assign i_cmp18_zlaswp16_b = {2'b00, i_storemerge71_replace_phi_zlaswp8_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp18_zlaswp16_o <= 34'b0;
        end
        else if (SE_i_cmp18_zlaswp16_backEN == 1'b1)
        begin
            i_cmp18_zlaswp16_o <= $unsigned(i_cmp18_zlaswp16_a) - $unsigned(i_cmp18_zlaswp16_b);
        end
    end
    assign i_cmp18_zlaswp16_n[0] = ~ (i_cmp18_zlaswp16_o[33]);

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7(STALLENABLE,1061)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_backStall = i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24(STALLENABLE,663)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_backStall = SE_i_phi_decision153_xor_and_i0_zlaswp25_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_wireValid = i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24(BLACKBOX,40)@97
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_0 thei_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24 (
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_V0),
        .out_dest_data_out_20_0(i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_dest_data_out_20_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24(BITJOIN,488)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_q = i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_out_dest_data_out_20_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24(BITSELECT,489)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_q[0:0]);

    // i_phi_decision153_xor_and_i0_zlaswp25(LOGICAL,92)@97 + 1
    assign i_phi_decision153_xor_and_i0_zlaswp25_qi = bubble_select_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_b & i_cmp18_zlaswp16_n;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_phi_decision153_xor_and_i0_zlaswp25_delay ( .xin(i_phi_decision153_xor_and_i0_zlaswp25_qi), .xout(i_phi_decision153_xor_and_i0_zlaswp25_q), .ena(SE_i_phi_decision153_xor_and_i0_zlaswp25_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_i_phi_decision153_xor_and_i0_zlaswp25(STALLENABLE,751)
    // Valid signal propagation
    assign SE_i_phi_decision153_xor_and_i0_zlaswp25_V0 = SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0;
    // Stall signal propagation
    assign SE_i_phi_decision153_xor_and_i0_zlaswp25_s_tv_0 = SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backStall & SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0;
    // Backward Enable generation
    assign SE_i_phi_decision153_xor_and_i0_zlaswp25_backEN = ~ (SE_i_phi_decision153_xor_and_i0_zlaswp25_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_phi_decision153_xor_and_i0_zlaswp25_and0 = SE_i_cmp18_zlaswp16_V0 & SE_i_phi_decision153_xor_and_i0_zlaswp25_backEN;
    assign SE_i_phi_decision153_xor_and_i0_zlaswp25_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor171_zlaswp24_V0 & SE_i_phi_decision153_xor_and_i0_zlaswp25_and0;
    // Backward Stall generation
    assign SE_i_phi_decision153_xor_and_i0_zlaswp25_backStall = ~ (SE_i_phi_decision153_xor_and_i0_zlaswp25_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_phi_decision153_xor_and_i0_zlaswp25_backEN == 1'b0)
            begin
                SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0 <= SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0 & SE_i_phi_decision153_xor_and_i0_zlaswp25_s_tv_0;
            end
            else
            begin
                SE_i_phi_decision153_xor_and_i0_zlaswp25_R_v_0 <= SE_i_phi_decision153_xor_and_i0_zlaswp25_v_s_0;
            end

        end
    end

    // SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0(STALLREG,1161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid <= 1'b0;
            SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backStall & (SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid | SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_i_valid);

            if (SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_data0 <= i_phi_decision153_xor_and_i0_zlaswp25_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_i_valid = SE_i_phi_decision153_xor_and_i0_zlaswp25_V0;
    // Stall signal propagation
    assign SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backStall = SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid | ~ (SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_i_valid);

    // Valid
    assign SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_V = SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid == 1'b1 ? SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid : SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_i_valid;

    assign SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_D0 = SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_valid == 1'b1 ? SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_r_data0 : i_phi_decision153_xor_and_i0_zlaswp25_q;

    // SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0(STALLENABLE,885)
    // Valid signal propagation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_V0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_s_tv_0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backStall & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backEN = ~ (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_v_s_0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backEN & SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_V;
    // Backward Stall generation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backStall = ~ (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backEN == 1'b0)
            begin
                SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0 <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0 & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_R_v_0 <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_v_s_0;
            end

        end
    end

    // SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1(STALLENABLE,886)
    // Valid signal propagation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_V0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_s_tv_0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backStall & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backEN = ~ (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_v_s_0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backEN & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_V0;
    // Backward Stall generation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backStall = ~ (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backEN == 1'b0)
            begin
                SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0 <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0 & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_s_tv_0;
            end
            else
            begin
                SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_R_v_0 <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_v_s_0;
            end

        end
    end

    // redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0(REG,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_backEN == 1'b1)
        begin
            redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_q <= $unsigned(SR_SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_D0);
        end
    end

    // redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1(REG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_backEN == 1'b1)
        begin
            redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_q <= $unsigned(redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_0_q);
        end
    end

    // redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backEN == 1'b1)
        begin
            redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_q <= $unsigned(redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_q);
        end
    end

    // i_unnamed_zlaswp26(LOGICAL,118)@101
    assign i_unnamed_zlaswp26_q = redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_q ^ VCC_q;

    // i_first_cleanup205_xor_or_zlaswp34(LOGICAL,29)@101
    assign i_first_cleanup205_xor_or_zlaswp34_q = i_unnamed_zlaswp26_q | i_xor206_zlaswp2_q;

    // i_reduction_zlaswp_1_zlaswp31(LOGICAL,99)@101
    assign i_reduction_zlaswp_1_zlaswp31_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_b | i_reduction_zlaswp_0_zlaswp29_q;

    // i_reduction_zlaswp_2_zlaswp33(LOGICAL,109)@101
    assign i_reduction_zlaswp_2_zlaswp33_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_b | i_reduction_zlaswp_1_zlaswp31_q;

    // i_r_zlaswp0_add_x(ADD,300)@101
    assign i_r_zlaswp0_add_x_a = {1'b0, i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b};
    assign i_r_zlaswp0_add_x_b = {1'b0, i_r32_zlaswp0_c_i64_41_x_q};
    assign i_r_zlaswp0_add_x_o = $unsigned(i_r_zlaswp0_add_x_a) + $unsigned(i_r_zlaswp0_add_x_b);
    assign i_r_zlaswp0_add_x_q = i_r_zlaswp0_add_x_o[64:0];

    // i_r_zlaswp0_trunc_sel_x(BITSELECT,303)@101
    assign i_r_zlaswp0_trunc_sel_x_b = i_r_zlaswp0_add_x_q[63:0];

    // i_llvm_fpga_mem_lm7_zlaswp35(BLACKBOX,52)@101
    // in in_i_stall@20000000
    // out out_lm7_zlaswp_avm_address@20000000
    // out out_lm7_zlaswp_avm_burstcount@20000000
    // out out_lm7_zlaswp_avm_byteenable@20000000
    // out out_lm7_zlaswp_avm_enable@20000000
    // out out_lm7_zlaswp_avm_read@20000000
    // out out_lm7_zlaswp_avm_write@20000000
    // out out_lm7_zlaswp_avm_writedata@20000000
    // out out_o_readdata@133
    // out out_o_stall@20000000
    // out out_o_valid@133
    zlaswp_i_llvm_fpga_mem_lm7_0 thei_llvm_fpga_mem_lm7_zlaswp35 (
        .in_flush(in_flush),
        .in_i_address(i_r_zlaswp0_trunc_sel_x_b),
        .in_i_dependence(i_reduction_zlaswp_2_zlaswp33_q),
        .in_i_predicate(i_first_cleanup205_xor_or_zlaswp34_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm7_zlaswp35_backStall),
        .in_i_valid(SE_i_first_cleanup205_xor_or_zlaswp34_V0),
        .in_lm7_zlaswp_avm_readdata(in_lm7_zlaswp_avm_readdata),
        .in_lm7_zlaswp_avm_readdatavalid(in_lm7_zlaswp_avm_readdatavalid),
        .in_lm7_zlaswp_avm_waitrequest(in_lm7_zlaswp_avm_waitrequest),
        .in_lm7_zlaswp_avm_writeack(in_lm7_zlaswp_avm_writeack),
        .out_lm7_zlaswp_avm_address(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_address),
        .out_lm7_zlaswp_avm_burstcount(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_burstcount),
        .out_lm7_zlaswp_avm_byteenable(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_byteenable),
        .out_lm7_zlaswp_avm_enable(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_enable),
        .out_lm7_zlaswp_avm_read(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_read),
        .out_lm7_zlaswp_avm_write(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_write),
        .out_lm7_zlaswp_avm_writedata(i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm7_zlaswp35_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm7_zlaswp35_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_arrayidx23_zlaswp0_add_x(STALLENABLE,791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx23_zlaswp0_add_x_fromReg0 <= '0;
            SE_i_arrayidx23_zlaswp0_add_x_fromReg1 <= '0;
            SE_i_arrayidx23_zlaswp0_add_x_fromReg2 <= '0;
            SE_i_arrayidx23_zlaswp0_add_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx23_zlaswp0_add_x_fromReg0 <= SE_i_arrayidx23_zlaswp0_add_x_toReg0;
            // Successor 1
            SE_i_arrayidx23_zlaswp0_add_x_fromReg1 <= SE_i_arrayidx23_zlaswp0_add_x_toReg1;
            // Successor 2
            SE_i_arrayidx23_zlaswp0_add_x_fromReg2 <= SE_i_arrayidx23_zlaswp0_add_x_toReg2;
            // Successor 3
            SE_i_arrayidx23_zlaswp0_add_x_fromReg3 <= SE_i_arrayidx23_zlaswp0_add_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx23_zlaswp0_add_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm248_zlaswp53_backStall) & SE_i_arrayidx23_zlaswp0_add_x_wireValid) | SE_i_arrayidx23_zlaswp0_add_x_fromReg0;
    assign SE_i_arrayidx23_zlaswp0_add_x_consumed1 = (~ (redist7_i_arrayidx23_zlaswp0_dupName_0_trunc_sel_x_b_32_fifo_stall_out) & SE_i_arrayidx23_zlaswp0_add_x_wireValid) | SE_i_arrayidx23_zlaswp0_add_x_fromReg1;
    assign SE_i_arrayidx23_zlaswp0_add_x_consumed2 = (~ (SE_i_first_cleanup205_xor_or_zlaswp34_backStall) & SE_i_arrayidx23_zlaswp0_add_x_wireValid) | SE_i_arrayidx23_zlaswp0_add_x_fromReg2;
    assign SE_i_arrayidx23_zlaswp0_add_x_consumed3 = (~ (redist3_i_r_zlaswp0_trunc_sel_x_b_32_fifo_stall_out) & SE_i_arrayidx23_zlaswp0_add_x_wireValid) | SE_i_arrayidx23_zlaswp0_add_x_fromReg3;
    // Consuming
    assign SE_i_arrayidx23_zlaswp0_add_x_StallValid = SE_i_arrayidx23_zlaswp0_add_x_backStall & SE_i_arrayidx23_zlaswp0_add_x_wireValid;
    assign SE_i_arrayidx23_zlaswp0_add_x_toReg0 = SE_i_arrayidx23_zlaswp0_add_x_StallValid & SE_i_arrayidx23_zlaswp0_add_x_consumed0;
    assign SE_i_arrayidx23_zlaswp0_add_x_toReg1 = SE_i_arrayidx23_zlaswp0_add_x_StallValid & SE_i_arrayidx23_zlaswp0_add_x_consumed1;
    assign SE_i_arrayidx23_zlaswp0_add_x_toReg2 = SE_i_arrayidx23_zlaswp0_add_x_StallValid & SE_i_arrayidx23_zlaswp0_add_x_consumed2;
    assign SE_i_arrayidx23_zlaswp0_add_x_toReg3 = SE_i_arrayidx23_zlaswp0_add_x_StallValid & SE_i_arrayidx23_zlaswp0_add_x_consumed3;
    // Backward Stall generation
    assign SE_i_arrayidx23_zlaswp0_add_x_or0 = SE_i_arrayidx23_zlaswp0_add_x_consumed0;
    assign SE_i_arrayidx23_zlaswp0_add_x_or1 = SE_i_arrayidx23_zlaswp0_add_x_consumed1 & SE_i_arrayidx23_zlaswp0_add_x_or0;
    assign SE_i_arrayidx23_zlaswp0_add_x_or2 = SE_i_arrayidx23_zlaswp0_add_x_consumed2 & SE_i_arrayidx23_zlaswp0_add_x_or1;
    assign SE_i_arrayidx23_zlaswp0_add_x_wireStall = ~ (SE_i_arrayidx23_zlaswp0_add_x_consumed3 & SE_i_arrayidx23_zlaswp0_add_x_or2);
    assign SE_i_arrayidx23_zlaswp0_add_x_backStall = SE_i_arrayidx23_zlaswp0_add_x_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx23_zlaswp0_add_x_V0 = SE_i_arrayidx23_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx23_zlaswp0_add_x_fromReg0);
    assign SE_i_arrayidx23_zlaswp0_add_x_V1 = SE_i_arrayidx23_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx23_zlaswp0_add_x_fromReg1);
    assign SE_i_arrayidx23_zlaswp0_add_x_V2 = SE_i_arrayidx23_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx23_zlaswp0_add_x_fromReg2);
    assign SE_i_arrayidx23_zlaswp0_add_x_V3 = SE_i_arrayidx23_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx23_zlaswp0_add_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx23_zlaswp0_add_x_and0 = SE_redist8_i_arrayidx23_zlaswp0_trunc_sel_x_b_1_0_V0;
    assign SE_i_arrayidx23_zlaswp0_add_x_wireValid = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V1 & SE_i_arrayidx23_zlaswp0_add_x_and0;

    // SE_i_reduction_zlaswp_1_zlaswp31(STALLENABLE,758)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_zlaswp_1_zlaswp31_fromReg0 <= '0;
            SE_i_reduction_zlaswp_1_zlaswp31_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_reduction_zlaswp_1_zlaswp31_fromReg0 <= SE_i_reduction_zlaswp_1_zlaswp31_toReg0;
            // Successor 1
            SE_i_reduction_zlaswp_1_zlaswp31_fromReg1 <= SE_i_reduction_zlaswp_1_zlaswp31_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_reduction_zlaswp_1_zlaswp31_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm269_zlaswp60_backStall) & SE_i_reduction_zlaswp_1_zlaswp31_wireValid) | SE_i_reduction_zlaswp_1_zlaswp31_fromReg0;
    assign SE_i_reduction_zlaswp_1_zlaswp31_consumed1 = (~ (SE_i_first_cleanup205_xor_or_zlaswp34_backStall) & SE_i_reduction_zlaswp_1_zlaswp31_wireValid) | SE_i_reduction_zlaswp_1_zlaswp31_fromReg1;
    // Consuming
    assign SE_i_reduction_zlaswp_1_zlaswp31_StallValid = SE_i_reduction_zlaswp_1_zlaswp31_backStall & SE_i_reduction_zlaswp_1_zlaswp31_wireValid;
    assign SE_i_reduction_zlaswp_1_zlaswp31_toReg0 = SE_i_reduction_zlaswp_1_zlaswp31_StallValid & SE_i_reduction_zlaswp_1_zlaswp31_consumed0;
    assign SE_i_reduction_zlaswp_1_zlaswp31_toReg1 = SE_i_reduction_zlaswp_1_zlaswp31_StallValid & SE_i_reduction_zlaswp_1_zlaswp31_consumed1;
    // Backward Stall generation
    assign SE_i_reduction_zlaswp_1_zlaswp31_or0 = SE_i_reduction_zlaswp_1_zlaswp31_consumed0;
    assign SE_i_reduction_zlaswp_1_zlaswp31_wireStall = ~ (SE_i_reduction_zlaswp_1_zlaswp31_consumed1 & SE_i_reduction_zlaswp_1_zlaswp31_or0);
    assign SE_i_reduction_zlaswp_1_zlaswp31_backStall = SE_i_reduction_zlaswp_1_zlaswp31_wireStall;
    // Valid signal propagation
    assign SE_i_reduction_zlaswp_1_zlaswp31_V0 = SE_i_reduction_zlaswp_1_zlaswp31_wireValid & ~ (SE_i_reduction_zlaswp_1_zlaswp31_fromReg0);
    assign SE_i_reduction_zlaswp_1_zlaswp31_V1 = SE_i_reduction_zlaswp_1_zlaswp31_wireValid & ~ (SE_i_reduction_zlaswp_1_zlaswp31_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_reduction_zlaswp_1_zlaswp31_and0 = SE_i_reduction_zlaswp_0_zlaswp29_V1;
    assign SE_i_reduction_zlaswp_1_zlaswp31_and1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_V0 & SE_i_reduction_zlaswp_1_zlaswp31_and0;
    assign SE_i_reduction_zlaswp_1_zlaswp31_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_V1 & SE_i_reduction_zlaswp_1_zlaswp31_and1;

    // SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2(STALLENABLE,887)
    // Valid signal propagation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_V0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_s_tv_0 = SE_i_first_cleanup205_xor_or_zlaswp34_backStall & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backEN = ~ (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_v_s_0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backEN & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_1_V0;
    // Backward Stall generation
    assign SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backStall = ~ (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_backEN == 1'b0)
            begin
                SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0 <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0 & SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_s_tv_0;
            end
            else
            begin
                SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_R_v_0 <= SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_v_s_0;
            end

        end
    end

    // SE_i_first_cleanup205_xor_or_zlaswp34(STALLENABLE,657)
    // Valid signal propagation
    assign SE_i_first_cleanup205_xor_or_zlaswp34_V0 = SE_i_first_cleanup205_xor_or_zlaswp34_wireValid;
    // Backward Stall generation
    assign SE_i_first_cleanup205_xor_or_zlaswp34_backStall = i_llvm_fpga_mem_lm7_zlaswp35_out_o_stall | ~ (SE_i_first_cleanup205_xor_or_zlaswp34_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_first_cleanup205_xor_or_zlaswp34_and0 = SE_redist15_i_phi_decision153_xor_and_i0_zlaswp25_q_4_2_V0;
    assign SE_i_first_cleanup205_xor_or_zlaswp34_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V3 & SE_i_first_cleanup205_xor_or_zlaswp34_and0;
    assign SE_i_first_cleanup205_xor_or_zlaswp34_and2 = SE_i_reduction_zlaswp_1_zlaswp31_V1 & SE_i_first_cleanup205_xor_or_zlaswp34_and1;
    assign SE_i_first_cleanup205_xor_or_zlaswp34_wireValid = SE_i_arrayidx23_zlaswp0_add_x_V2 & SE_i_first_cleanup205_xor_or_zlaswp34_and2;

    // i_masked209_zlaswp101(LOGICAL,86)@101 + 1
    assign i_masked209_zlaswp101_qi = i_notcmp197_zlaswp44_q & i_first_cleanup205_zlaswp1_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked209_zlaswp101_delay ( .xin(i_masked209_zlaswp101_qi), .xout(i_masked209_zlaswp101_q), .ena(SE_i_masked209_zlaswp101_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist18_i_masked209_zlaswp101_q_94_fifo(STALLFIFO,468)
    assign redist18_i_masked209_zlaswp101_q_94_fifo_valid_in = SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_V0;
    assign redist18_i_masked209_zlaswp101_q_94_fifo_stall_in = SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall;
    assign redist18_i_masked209_zlaswp101_q_94_fifo_data_in = i_masked209_zlaswp101_q;
    assign redist18_i_masked209_zlaswp101_q_94_fifo_valid_in_bitsignaltemp = redist18_i_masked209_zlaswp101_q_94_fifo_valid_in[0];
    assign redist18_i_masked209_zlaswp101_q_94_fifo_stall_in_bitsignaltemp = redist18_i_masked209_zlaswp101_q_94_fifo_stall_in[0];
    assign redist18_i_masked209_zlaswp101_q_94_fifo_valid_out[0] = redist18_i_masked209_zlaswp101_q_94_fifo_valid_out_bitsignaltemp;
    assign redist18_i_masked209_zlaswp101_q_94_fifo_stall_out[0] = redist18_i_masked209_zlaswp101_q_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(94),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_masked209_zlaswp101_q_94_fifo (
        .valid_in(redist18_i_masked209_zlaswp101_q_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_masked209_zlaswp101_q_94_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked209_zlaswp101_q),
        .valid_out(redist18_i_masked209_zlaswp101_q_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_masked209_zlaswp101_q_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_masked209_zlaswp101_q_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist18_i_masked209_zlaswp101_q_94_fifo(STALLENABLE,892)
    // Valid signal propagation
    assign SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_V0 = SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_backStall = redist18_i_masked209_zlaswp101_q_94_fifo_stall_out | ~ (SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid = SE_i_masked209_zlaswp101_V0;

    // SE_i_masked209_zlaswp101(STALLENABLE,746)
    // Valid signal propagation
    assign SE_i_masked209_zlaswp101_V0 = SE_i_masked209_zlaswp101_R_v_0;
    // Stall signal propagation
    assign SE_i_masked209_zlaswp101_s_tv_0 = SE_in_redist18_i_masked209_zlaswp101_q_94_fifo_backStall & SE_i_masked209_zlaswp101_R_v_0;
    // Backward Enable generation
    assign SE_i_masked209_zlaswp101_backEN = ~ (SE_i_masked209_zlaswp101_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked209_zlaswp101_and0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_V1 & SE_i_masked209_zlaswp101_backEN;
    assign SE_i_masked209_zlaswp101_v_s_0 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V2 & SE_i_masked209_zlaswp101_and0;
    // Backward Stall generation
    assign SE_i_masked209_zlaswp101_backStall = ~ (SE_i_masked209_zlaswp101_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked209_zlaswp101_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked209_zlaswp101_backEN == 1'b0)
            begin
                SE_i_masked209_zlaswp101_R_v_0 <= SE_i_masked209_zlaswp101_R_v_0 & SE_i_masked209_zlaswp101_s_tv_0;
            end
            else
            begin
                SE_i_masked209_zlaswp101_R_v_0 <= SE_i_masked209_zlaswp101_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45(STALLENABLE,738)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg1 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg2 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg3 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg4 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg1;
            // Successor 2
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg2 <= SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg2;
            // Successor 3
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg3 <= SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg3;
            // Successor 4
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg4 <= SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg4;
            // Successor 5
            SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg5 <= SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg5;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm248_zlaswp53_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed2 = (~ (SE_in_i_llvm_fpga_mem_lm269_zlaswp60_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg2;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed3 = (~ (SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg3;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed4 = (~ (SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg4;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed5 = (~ (redist16_i_or207_zlaswp46_q_32_fifo_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg5;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg2 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed2;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg3 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed3;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg4 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed4;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_toReg5 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed5;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or1 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or2 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed2 & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or3 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed3 & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or2;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or4 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed4 & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or3;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_consumed5 & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_or4);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg1);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V2 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg2);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V3 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg3);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V4 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg4);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V5 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_fromReg5);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_and0 = SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_V0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_and0;

    // SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0(STALLENABLE,715)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed0 = (~ (SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed2 = (~ (SE_i_masked209_zlaswp101_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed3 = (~ (SE_i_first_cleanup205_xor_or_zlaswp34_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed4 = (~ (SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_or3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_wireValid = i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48(STALLENABLE,741)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_wireValid = i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x(BITSELECT,394)@101
    assign leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x_b = leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid396_i_cleanups_shl204_zlaswp0_shift_x(BITJOIN,395)@101
    assign leftShiftStage0Idx1_uid396_i_cleanups_shl204_zlaswp0_shift_x_q = {leftShiftStage0Idx1Rng1_uid395_i_cleanups_shl204_zlaswp0_shift_x_b, GND_q};

    // leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x(MUX,397)@101
    assign leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b or leftShiftStage0Idx1_uid396_i_cleanups_shl204_zlaswp0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_s)
            1'b0 : leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b;
            1'b1 : leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_q = leftShiftStage0Idx1_uid396_i_cleanups_shl204_zlaswp0_shift_x_q;
            default : leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl204_zlaswp3_vt_select_1(BITSELECT,26)@101
    assign i_cleanups_shl204_zlaswp3_vt_select_1_b = leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_q[1:1];

    // i_cleanups_shl204_zlaswp3_vt_join(BITJOIN,25)@101
    assign i_cleanups_shl204_zlaswp3_vt_join_q = {i_cleanups_shl204_zlaswp3_vt_select_1_b, GND_q};

    // i_next_cleanups208_zlaswp47(MUX,88)@101
    assign i_next_cleanups208_zlaswp47_s = i_or207_zlaswp46_q;
    always @(i_next_cleanups208_zlaswp47_s or bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b or i_cleanups_shl204_zlaswp3_vt_join_q)
    begin
        unique case (i_next_cleanups208_zlaswp47_s)
            1'b0 : i_next_cleanups208_zlaswp47_q = bubble_select_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_b;
            1'b1 : i_next_cleanups208_zlaswp47_q = i_cleanups_shl204_zlaswp3_vt_join_q;
            default : i_next_cleanups208_zlaswp47_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48(BLACKBOX,79)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    zlaswp_i_llvm_fpga_push_i2_cleanups203_push57_0 thei_llvm_fpga_push_i2_cleanups203_push57_zlaswp48 (
        .in_data_in(i_next_cleanups208_zlaswp47_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_feedback_stall_out_57),
        .in_keep_going200(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_backStall),
        .in_valid_in(SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_feedback_valid_out_57),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_1102(CONSTANT,10)
    assign c_i2_1102_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0(BLACKBOX,66)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_57@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i2_cleanups203_pop57_0 thei_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0 (
        .in_data_in(c_i2_1102_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_57(i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V8),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_feedback_stall_out_57),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75(BLACKBOX,65)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_49@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi_pop49_0 thei_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_49(i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V7),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_feedback_stall_out_49),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28(BLACKBOX,64)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_56@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi47_pop56_0 thei_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_56(i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_feedback_out_56),
        .in_feedback_valid_in_56(i_llvm_fpga_push_i1_memdep_phi47_push56_zlaswp97_out_feedback_valid_out_56),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V6),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_data_out),
        .out_feedback_stall_out_56(i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_feedback_stall_out_56),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27(BLACKBOX,62)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_54@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi32_pop54_0 thei_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_54(i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_feedback_out_54),
        .in_feedback_valid_in_54(i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_out_feedback_valid_out_54),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V4),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_data_out),
        .out_feedback_stall_out_54(i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_feedback_stall_out_54),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64(BLACKBOX,61)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_53@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi28_pop53_0 thei_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_53(i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_feedback_out_53),
        .in_feedback_valid_in_53(i_llvm_fpga_push_i1_memdep_phi28_push53_zlaswp74_out_feedback_valid_out_53),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V3),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_data_out),
        .out_feedback_stall_out_53(i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_feedback_stall_out_53),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70(STALLENABLE,726)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall = i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_and0 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_V0;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_wireValid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70(STALLENABLE,727)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_wireValid = i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_memdep_zlaswp69(BITJOIN,536)
    assign bubble_join_i_llvm_fpga_mem_memdep_zlaswp69_q = i_llvm_fpga_mem_memdep_zlaswp69_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_zlaswp69(BITSELECT,537)
    assign bubble_select_i_llvm_fpga_mem_memdep_zlaswp69_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_zlaswp69_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70(BLACKBOX,72)@164
    // in in_stall_in@20000000
    // out out_data_out@165
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    // out out_stall_out@20000000
    // out out_valid_out@165
    zlaswp_i_llvm_fpga_push_i1_memdep_phi26_push52_0 thei_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_zlaswp69_b),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_feedback_stall_out_52),
        .in_keep_going200(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_V0),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_feedback_valid_out_52),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30(BLACKBOX,60)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_52@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi26_pop52_0 thei_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_feedback_stall_out_52),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77(BLACKBOX,59)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_51@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi23_pop51_0 thei_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_memdep_phi23_push51_zlaswp78_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_feedback_stall_out_51),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62(BLACKBOX,58)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_50@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi21_pop50_0 thei_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_50(i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_feedback_stall_out_50),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0(STALLENABLE,861)
    // Valid signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_V0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_s_tv_0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backStall & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backEN = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_v_s_0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backEN & SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_V1;
    // Backward Stall generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backStall = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_s_tv_0;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_v_s_0;
            end

        end
    end

    // SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1(STALLENABLE,862)
    // Valid signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_V0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_s_tv_0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backStall & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backEN = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_v_s_0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backEN & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_V0;
    // Backward Stall generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backStall = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_s_tv_0;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_v_s_0;
            end

        end
    end

    // redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0(REG,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backEN == 1'b1)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_q <= $unsigned(redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_q);
        end
    end

    // redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1(REG,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_backEN == 1'b1)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_q <= $unsigned(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_q);
        end
    end

    // redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backEN == 1'b1)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_q <= $unsigned(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_q);
        end
    end

    // SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2(STALLENABLE,863)
    // Valid signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_V0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_s_tv_0 = SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backStall & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backEN = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_v_s_0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backEN & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_1_V0;
    // Backward Stall generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backStall = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_s_tv_0;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_v_s_0;
            end

        end
    end

    // SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3(STALLREG,1160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid <= 1'b0;
            SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backStall & (SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid | SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_i_valid);

            if (SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_data0 <= $unsigned(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_i_valid = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_V0;
    // Stall signal propagation
    assign SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backStall = SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid | ~ (SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_i_valid);

    // Valid
    assign SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V = SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid == 1'b1 ? SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid : SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_i_valid;

    assign SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_D0 = SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_valid == 1'b1 ? SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_r_data0 : redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_2_q;

    // SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3(STALLENABLE,864)
    // Valid signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V1 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V2 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V3 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V4 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V5 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V6 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V7 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V8 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V9 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9;
    // Stall signal propagation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi26_pop52_zlaswp30_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_3 = i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_4 = i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_5 = i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_6 = i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_7 = i_llvm_fpga_pop_i1_memdep_phi_pop49_zlaswp75_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_8 = i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_9 = i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_stall_out & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9;
    // Backward Enable generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_0;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or1 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_1 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or0;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or2 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_2 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or1;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or3 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_3 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or2;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or4 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_4 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or3;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or5 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_5 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or4;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or6 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_6 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or5;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or7 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_7 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or6;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or8 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_8 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or7;
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_9 | SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_or8);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN & SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V;
    // Backward Stall generation
    assign SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backStall = ~ (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8 <= 1'b0;
            SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_0;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_0 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_1;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_1 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_2;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_2 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_3;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_3 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_4;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_4 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_5;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_5 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_6;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_6 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_7;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_7 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_8;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_8 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

            if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b0)
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9 & SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_s_tv_9;
            end
            else
            begin
                SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_R_v_9 <= SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_v_s_0;
            end

        end
    end

    // redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3(REG,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_backEN == 1'b1)
        begin
            redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q <= $unsigned(SR_SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_D0);
        end
    end

    // c_i7_31108(CONSTANT,16)
    assign c_i7_31108_q = $unsigned(7'b0011111);

    // i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37(BLACKBOX,68)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_47@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_0 thei_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37 (
        .in_data_in(c_i7_31108_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_47(i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V9),
        .out_data_out(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_feedback_stall_out_47),
        .out_stall_out(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i7_1110(CONSTANT,15)
    assign c_i7_1110_q = $unsigned(7'b1111111);

    // i_fpga_indvars_iv_next_zlaswp40(ADD,31)@101
    assign i_fpga_indvars_iv_next_zlaswp40_a = {1'b0, bubble_select_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_b};
    assign i_fpga_indvars_iv_next_zlaswp40_b = {1'b0, c_i7_1110_q};
    assign i_fpga_indvars_iv_next_zlaswp40_o = $unsigned(i_fpga_indvars_iv_next_zlaswp40_a) + $unsigned(i_fpga_indvars_iv_next_zlaswp40_b);
    assign i_fpga_indvars_iv_next_zlaswp40_q = i_fpga_indvars_iv_next_zlaswp40_o[7:0];

    // bgTrunc_i_fpga_indvars_iv_next_zlaswp40_sel_x(BITSELECT,228)@101
    assign bgTrunc_i_fpga_indvars_iv_next_zlaswp40_sel_x_b = i_fpga_indvars_iv_next_zlaswp40_q[6:0];

    // i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41(BLACKBOX,81)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    zlaswp_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_0 thei_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_zlaswp40_sel_x_b),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_feedback_stall_out_47),
        .in_keep_going200(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_V0),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_feedback_valid_out_47),
        .out_stall_out(i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37(STALLENABLE,719)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg0 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg1 <= SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_phi_decision153_xor170_zlaswp42_backStall) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed1 = (~ (SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall) & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid) | SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_StallValid = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_backStall & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_toReg0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_toReg1 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_StallValid & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_or0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed0;
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireStall = ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_consumed1 & SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_or0);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_backStall = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_V0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_V1 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid & ~ (SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_wireValid = i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_out_valid_out;

    // SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41(STALLENABLE,744)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_V0 = SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall = i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_and0 = SE_out_i_llvm_fpga_pop_i7_fpga_indvars_iv_pop47_zlaswp37_V1;
    assign SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_wireValid = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V1 & SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_and0;

    // SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x(STALLENABLE,837)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_V0 = SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_backStall = i_llvm_fpga_push_i2_cleanups203_push57_zlaswp48_out_stall_out | ~ (SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V4;
    assign SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i2_cleanups203_pop57_zlaswp0_V0 & SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_and0;
    assign SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_wireValid = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V0 & SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_and1;

    // SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4(STALLENABLE,898)
    // Valid signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V1 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V2 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2;
    // Stall signal propagation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_0 = SE_leftShiftStage0_uid398_i_cleanups_shl204_zlaswp0_shift_x_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_1 = SE_in_i_llvm_fpga_push_i7_fpga_indvars_iv_push47_zlaswp41_backStall & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_2 = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_out & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2;
    // Backward Enable generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_or0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_or1 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_1 | SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_or0;
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_2 | SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_v_s_0 = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_3_V0;
    // Backward Stall generation
    assign SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backStall = ~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1 <= 1'b0;
            SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_0 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_1 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_v_s_0;
            end

            if (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2 & SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_s_tv_2;
            end
            else
            begin
                SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_R_v_2 <= SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_v_s_0;
            end

        end
    end

    // redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo(STALLFIFO,474)
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_in = SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_V2;
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_in = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_backStall;
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_data_in = redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q;
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_in_bitsignaltemp = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_in[0];
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_in_bitsignaltemp = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_in[0];
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_out[0] = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_out_bitsignaltemp;
    assign redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_out[0] = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo (
        .valid_in(redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_in_bitsignaltemp),
        .data_in(redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_4_q),
        .valid_out(redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo(BITJOIN,637)
    assign bubble_join_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_q = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_data_out;

    // bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo(BITSELECT,638)
    assign bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b = $unsigned(bubble_join_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_q[0:0]);

    // SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo(STALLENABLE,900)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg0 <= '0;
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg1 <= '0;
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg2 <= '0;
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg3 <= '0;
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg0 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg0;
            // Successor 1
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg1 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg1;
            // Successor 2
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg2 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg2;
            // Successor 3
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg3 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg3;
            // Successor 4
            SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg4 <= SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi21_push50_zlaswp63_backStall) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed1 = (~ (SR_SE_i_lm269_toi1_intcast_zlaswp61_sel_x_backStall) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg1;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed2 = (~ (SR_SE_i_lm2810_toi1_intcast_zlaswp73_sel_x_backStall) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg2;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed3 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi_push49_zlaswp76_backStall) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg3;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed4 = (~ (redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_out) & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid) | SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg4;
    // Consuming
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_backStall & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg0 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg1 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed1;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg2 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed2;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg3 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed3;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_toReg4 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_StallValid & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed4;
    // Backward Stall generation
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or0 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or1 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed1 & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or0;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or2 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed2 & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or1;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or3 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed3 & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or2;
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireStall = ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_consumed4 & SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_or3);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_backStall = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V0 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg0);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V1 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg1);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V2 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg2);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V3 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg3);
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V4 = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid & ~ (SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_wireValid = redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_valid_out;

    // redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo(STALLFIFO,475)
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_in = SE_out_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_V4;
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_backStall;
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_data_in = bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b;
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_out[0] = redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_out[0] = redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo (
        .valid_in(redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist20_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_37_fifo_b),
        .valid_out(redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo(BITJOIN,640)
    assign bubble_join_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_q = redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo(BITSELECT,641)
    assign bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_q[0:0]);

    // SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo(STALLENABLE,902)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg0 <= '0;
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg1 <= '0;
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg0 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg0;
            // Successor 1
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg1 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg1;
            // Successor 2
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg2 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi32_push54_zlaswp84_backStall) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg1;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed2 = (~ (redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_out) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg2;
    // Consuming
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_StallValid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_backStall & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed1;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_toReg2 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_or0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_or1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed1 & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_or0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireStall = ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_consumed2 & SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_or1);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_backStall = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg0);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg1);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V2 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_wireValid = redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_valid_out;

    // redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo(STALLFIFO,476)
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_in = SE_out_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_V2;
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_in = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_backStall;
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_data_in = bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_b;
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_in_bitsignaltemp = redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_in[0];
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_in_bitsignaltemp = redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_in[0];
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_out[0] = redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_out_bitsignaltemp;
    assign redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_out[0] = redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(27),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo (
        .valid_in(redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_68_fifo_b),
        .valid_out(redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo(STALLENABLE,904)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg0 <= '0;
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg0 <= SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_toReg0;
            // Successor 1
            SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg1 <= SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed0 = (~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backStall) & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg0;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed1 = (~ (i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_stall_out) & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid) | SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg1;
    // Consuming
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_StallValid = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_backStall & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_toReg0 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_StallValid & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_toReg1 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_StallValid & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_or0 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed0;
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireStall = ~ (SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_consumed1 & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_or0);
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_backStall = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_V0 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg0);
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_V1 = SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid & ~ (SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_wireValid = redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_valid_out;

    // SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0(STALLENABLE,905)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_s_tv_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backEN & SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_v_s_0;
            end

        end
    end

    // SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1(STALLENABLE,906)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_s_tv_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backEN & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_v_s_0;
            end

        end
    end

    // bubble_join_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo(BITJOIN,643)
    assign bubble_join_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_q = redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_data_out;

    // bubble_select_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo(BITSELECT,644)
    assign bubble_select_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_b = $unsigned(bubble_join_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_q[0:0]);

    // redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_q <= $unsigned(bubble_select_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_b);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_q <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_0_q);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_q <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_q);
        end
    end

    // SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2(STALLENABLE,907)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_s_tv_0 = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backEN & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_1_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_v_s_0;
            end

        end
    end

    // SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3(STALLREG,1166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid <= 1'b0;
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backStall & (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid | SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_i_valid);

            if (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_data0 <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_i_valid = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backStall = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid | ~ (SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_i_valid);

    // Valid
    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_V = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid == 1'b1 ? SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid : SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_i_valid;

    assign SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_D0 = SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_valid == 1'b1 ? SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_r_data0 : redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_2_q;

    // redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_q <= $unsigned(SR_SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_D0);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backEN == 1'b1)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_q <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_q);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32(BLACKBOX,63)@100
    // in in_stall_in@20000000
    // out out_data_out@101
    // out out_feedback_stall_out_55@20000000
    // out out_stall_out@20000000
    // out out_valid_out@101
    zlaswp_i_llvm_fpga_pop_i1_memdep_phi39_pop55_0 thei_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32 (
        .in_data_in(GND_q),
        .in_dir(redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_q),
        .in_feedback_in_55(i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_feedback_out_55),
        .in_feedback_valid_in_55(i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_feedback_valid_out_55),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_backStall),
        .in_valid_in(SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_3_V5),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_data_out),
        .out_feedback_stall_out_55(i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_feedback_stall_out_55),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_38_zlaswp90(BITJOIN,528)
    assign bubble_join_i_llvm_fpga_mem_memdep_38_zlaswp90_q = i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90(BITSELECT,529)
    assign bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_38_zlaswp90_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91(BLACKBOX,75)@195
    // in in_stall_in@20000000
    // out out_data_out@196
    // out out_feedback_out_55@20000000
    // out out_feedback_valid_out_55@20000000
    // out out_stall_out@20000000
    // out out_valid_out@196
    zlaswp_i_llvm_fpga_push_i1_memdep_phi39_push55_0 thei_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_b),
        .in_feedback_stall_in_55(i_llvm_fpga_pop_i1_memdep_phi39_pop55_zlaswp32_out_feedback_stall_out_55),
        .in_keep_going200(redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_V0),
        .out_data_out(),
        .out_feedback_out_55(i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_feedback_out_55),
        .out_feedback_valid_out_55(i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_feedback_valid_out_55),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4(STALLENABLE,909)
    // Valid signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_V0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_V1 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1;
    // Stall signal propagation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_0 = SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_1 = SE_bubble_select_i_llvm_fpga_mem_memdep_46_zlaswp96_backStall & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1;
    // Backward Enable generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_or0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_0;
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backEN = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_1 | SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_v_s_0 = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backEN & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_3_V0;
    // Backward Stall generation
    assign SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backStall = ~ (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0 <= 1'b0;
            SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0 & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_0;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_0 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_v_s_0;
            end

            if (SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_backEN == 1'b0)
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1 & SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_s_tv_1;
            end
            else
            begin
                SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_R_v_1 <= SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_v_s_0;
            end

        end
    end

    // SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90(STALLENABLE,975)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall = i_llvm_fpga_push_i1_memdep_phi39_push55_zlaswp91_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_and0 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid = SE_redist23_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_99_4_V0 & SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg(STALLFIFO,1147)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_in = SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(100),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist18_i_masked209_zlaswp101_q_94_fifo(STALLENABLE,893)
    // Valid signal propagation
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_V0 = SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall = in_stall_in | ~ (SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and0 = redist18_i_masked209_zlaswp101_q_94_fifo_valid_out;
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and1 = bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_valid_out & SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and0;
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_1_reg_valid_out & SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and1;
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and3 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_V0 & SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and2;
    assign SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_46_zlaswp96_V0 & SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_and3;

    // SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90(STALLENABLE,691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed0 = (~ (SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid) | SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall) & SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid) | SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_StallValid = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall & SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_toReg0 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_StallValid & SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_toReg1 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_StallValid & SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_or0 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_consumed1 & SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_V0 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_V1 = SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_wireValid = i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_valid;

    // bubble_join_redist17_i_or207_zlaswp46_q_63_fifo(BITJOIN,631)
    assign bubble_join_redist17_i_or207_zlaswp46_q_63_fifo_q = redist17_i_or207_zlaswp46_q_63_fifo_data_out;

    // bubble_select_redist17_i_or207_zlaswp46_q_63_fifo(BITSELECT,632)
    assign bubble_select_redist17_i_or207_zlaswp46_q_63_fifo_b = $unsigned(bubble_join_redist17_i_or207_zlaswp46_q_63_fifo_q[0:0]);

    // bubble_join_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo(BITJOIN,619)
    assign bubble_join_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_q = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_data_out;

    // bubble_select_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo(BITSELECT,620)
    assign bubble_select_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_b = $unsigned(bubble_join_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_q[0:0]);

    // i_reduction_zlaswp_26_zlaswp89(LOGICAL,106)@164
    assign i_reduction_zlaswp_26_zlaswp89_q = bubble_select_i_llvm_fpga_mem_memdep_zlaswp69_b | bubble_select_redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_b;

    // bubble_join_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo(BITJOIN,607)
    assign bubble_join_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_q = redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_data_out;

    // bubble_select_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo(BITSELECT,608)
    assign bubble_select_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_b = $unsigned(bubble_join_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_q[63:0]);

    // i_llvm_fpga_mem_memdep_38_zlaswp90(BLACKBOX,54)@164
    // in in_i_stall@20000000
    // out out_lsu_memdep_38_o_active@20000000
    // out out_memdep_38_zlaswp_avm_address@20000000
    // out out_memdep_38_zlaswp_avm_burstcount@20000000
    // out out_memdep_38_zlaswp_avm_byteenable@20000000
    // out out_memdep_38_zlaswp_avm_enable@20000000
    // out out_memdep_38_zlaswp_avm_read@20000000
    // out out_memdep_38_zlaswp_avm_write@20000000
    // out out_memdep_38_zlaswp_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@195
    // out out_o_writeack@195
    zlaswp_i_llvm_fpga_mem_memdep_38_0 thei_llvm_fpga_mem_memdep_38_zlaswp90 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_b),
        .in_i_dependence(i_reduction_zlaswp_26_zlaswp89_q),
        .in_i_predicate(bubble_select_redist17_i_or207_zlaswp46_q_63_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_38_zlaswp90_backStall),
        .in_i_valid(SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_V0),
        .in_i_writedata(bubble_select_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_b),
        .in_memdep_38_zlaswp_avm_readdata(in_memdep_38_zlaswp_avm_readdata),
        .in_memdep_38_zlaswp_avm_readdatavalid(in_memdep_38_zlaswp_avm_readdatavalid),
        .in_memdep_38_zlaswp_avm_waitrequest(in_memdep_38_zlaswp_avm_waitrequest),
        .in_memdep_38_zlaswp_avm_writeack(in_memdep_38_zlaswp_avm_writeack),
        .out_lsu_memdep_38_o_active(i_llvm_fpga_mem_memdep_38_zlaswp90_out_lsu_memdep_38_o_active),
        .out_memdep_38_zlaswp_avm_address(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_address),
        .out_memdep_38_zlaswp_avm_burstcount(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_burstcount),
        .out_memdep_38_zlaswp_avm_byteenable(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_byteenable),
        .out_memdep_38_zlaswp_avm_enable(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_enable),
        .out_memdep_38_zlaswp_avm_read(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_read),
        .out_memdep_38_zlaswp_avm_write(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_write),
        .out_memdep_38_zlaswp_avm_writedata(i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist17_i_or207_zlaswp46_q_63_fifo(STALLENABLE,891)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg0 <= '0;
            SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg0 <= SE_out_redist17_i_or207_zlaswp46_q_63_fifo_toReg0;
            // Successor 1
            SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg1 <= SE_out_redist17_i_or207_zlaswp46_q_63_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed0 = (~ (SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall) & SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid) | SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg0;
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed1 = (~ (SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall) & SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid) | SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_StallValid = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_backStall & SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid;
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_toReg0 = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_StallValid & SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed0;
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_toReg1 = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_StallValid & SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_or0 = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed0;
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireStall = ~ (SE_out_redist17_i_or207_zlaswp46_q_63_fifo_consumed1 & SE_out_redist17_i_or207_zlaswp46_q_63_fifo_or0);
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_backStall = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_V0 = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid & ~ (SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg0);
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_V1 = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid & ~ (SE_out_redist17_i_or207_zlaswp46_q_63_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_or207_zlaswp46_q_63_fifo_wireValid = redist17_i_or207_zlaswp46_q_63_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_memdep_zlaswp69(STALLENABLE,695)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_zlaswp69_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_zlaswp69_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi26_push52_zlaswp70_backStall) & SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid) | SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed1 = (~ (SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid) | SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_StallValid = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_backStall & SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_toReg0 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_StallValid & SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_toReg1 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_StallValid & SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_or0 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_zlaswp69_consumed1 & SE_out_i_llvm_fpga_mem_memdep_zlaswp69_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_backStall = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_V0 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_V1 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_zlaswp69_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_zlaswp69_wireValid = i_llvm_fpga_mem_memdep_zlaswp69_out_o_valid;

    // i_reduction_zlaswp_23_zlaswp86(LOGICAL,103)@101
    assign i_reduction_zlaswp_23_zlaswp86_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi28_pop53_zlaswp64_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi32_pop54_zlaswp27_b;

    // i_reduction_zlaswp_22_zlaswp85(LOGICAL,102)@101
    assign i_reduction_zlaswp_22_zlaswp85_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi21_pop50_zlaswp62_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi23_pop51_zlaswp77_b;

    // i_reduction_zlaswp_24_zlaswp87(LOGICAL,104)@101
    assign i_reduction_zlaswp_24_zlaswp87_q = i_reduction_zlaswp_22_zlaswp85_q | i_reduction_zlaswp_23_zlaswp86_q;

    // i_reduction_zlaswp_25_zlaswp88(LOGICAL,105)@101 + 1
    assign i_reduction_zlaswp_25_zlaswp88_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi47_pop56_zlaswp28_b | i_reduction_zlaswp_24_zlaswp87_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_zlaswp_25_zlaswp88_delay ( .xin(i_reduction_zlaswp_25_zlaswp88_qi), .xout(i_reduction_zlaswp_25_zlaswp88_q), .ena(SE_i_reduction_zlaswp_25_zlaswp88_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo(STALLFIFO,460)
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_in = SE_i_reduction_zlaswp_25_zlaswp88_V0;
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_in = SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall;
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_data_in = i_reduction_zlaswp_25_zlaswp88_q;
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_in_bitsignaltemp = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_in[0];
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_in_bitsignaltemp = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_in[0];
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_out[0] = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_out_bitsignaltemp;
    assign redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_out[0] = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo (
        .valid_in(redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_in_bitsignaltemp),
        .data_in(i_reduction_zlaswp_25_zlaswp88_q),
        .valid_out(redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo(STALLFIFO,482)
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm7_zlaswp35_V2;
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_in = SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall;
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_data_in = bubble_select_i_llvm_fpga_mem_lm7_zlaswp35_b;
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_in_bitsignaltemp = redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_in[0];
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_in_bitsignaltemp = redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_in[0];
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_out[0] = redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_out_bitsignaltemp;
    assign redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_out[0] = redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo (
        .valid_in(redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_lm7_zlaswp35_b),
        .valid_out(redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo(STALLENABLE,911)
    // Valid signal propagation
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_V0 = SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall = i_llvm_fpga_mem_memdep_38_zlaswp90_out_o_stall | ~ (SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and0 = redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_valid_out;
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and1 = redist12_i_reduction_zlaswp_25_zlaswp88_q_63_fifo_valid_out & SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and0;
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and2 = redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_out & SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and1;
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and3 = SE_out_i_llvm_fpga_mem_memdep_zlaswp69_V1 & SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and2;
    assign SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_wireValid = SE_out_redist17_i_or207_zlaswp46_q_63_fifo_V0 & SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_and3;

    // redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo(STALLFIFO,452)
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_in = SE_i_arrayidx31_zlaswp0_add_x_V3;
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_in = SE_out_redist24_i_llvm_fpga_mem_lm7_zlaswp35_out_o_readdata_31_fifo_backStall;
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_data_in = i_r32_zlaswp0_trunc_sel_x_b;
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_in[0];
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_in[0];
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_out[0] = redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_out[0] = redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo (
        .valid_in(redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(i_r32_zlaswp0_trunc_sel_x_b),
        .valid_out(redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm269_zlaswp60(STALLENABLE,682)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm269_zlaswp60_V0 = SE_in_i_llvm_fpga_mem_lm269_zlaswp60_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm269_zlaswp60_backStall = i_llvm_fpga_mem_lm269_zlaswp60_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm269_zlaswp60_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm269_zlaswp60_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V2;
    assign SE_in_i_llvm_fpga_mem_lm269_zlaswp60_and1 = SE_i_reduction_zlaswp_1_zlaswp31_V0 & SE_in_i_llvm_fpga_mem_lm269_zlaswp60_and0;
    assign SE_in_i_llvm_fpga_mem_lm269_zlaswp60_wireValid = SE_i_arrayidx31_zlaswp0_add_x_V2 & SE_in_i_llvm_fpga_mem_lm269_zlaswp60_and1;

    // redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo(STALLFIFO,453)
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_in = SE_i_arrayidx31_zlaswp0_add_x_V1;
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_in = SE_out_redist25_i_llvm_fpga_mem_lm248_zlaswp53_out_o_readdata_31_fifo_backStall;
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_data_in = i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b;
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp = redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_in[0];
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp = redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_in[0];
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_out[0] = redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp;
    assign redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_out[0] = redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo (
        .valid_in(redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b),
        .valid_out(redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_lm2810_zlaswp72(STALLENABLE,684)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_V0 = SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_backStall = i_llvm_fpga_mem_lm2810_zlaswp72_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V3;
    assign SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_and1 = SE_i_reduction_zlaswp_4_zlaswp51_V1 & SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_and0;
    assign SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_wireValid = SE_i_arrayidx31_zlaswp0_add_x_V0 & SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_and1;

    // SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0(STALLENABLE,875)
    // Valid signal propagation
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V0 = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V1 = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1;
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V2 = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_0 = SE_in_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_backStall & SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0;
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_1 = SE_i_arrayidx23_zlaswp0_add_x_backStall & SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1;
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_2 = SE_i_arrayidx31_zlaswp0_add_x_backStall & SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_or0 = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_or1 = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_1 | SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_or0;
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_2 | SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_v_s_0 = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp30_zlaswp11_V0;
    // Backward Stall generation
    assign SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0 & SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1 & SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_1 <= SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2 <= SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2 & SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_R_v_2 <= SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_arrayidx31_zlaswp0_add_x(STALLENABLE,795)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_arrayidx31_zlaswp0_add_x_fromReg0 <= '0;
            SE_i_arrayidx31_zlaswp0_add_x_fromReg1 <= '0;
            SE_i_arrayidx31_zlaswp0_add_x_fromReg2 <= '0;
            SE_i_arrayidx31_zlaswp0_add_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_arrayidx31_zlaswp0_add_x_fromReg0 <= SE_i_arrayidx31_zlaswp0_add_x_toReg0;
            // Successor 1
            SE_i_arrayidx31_zlaswp0_add_x_fromReg1 <= SE_i_arrayidx31_zlaswp0_add_x_toReg1;
            // Successor 2
            SE_i_arrayidx31_zlaswp0_add_x_fromReg2 <= SE_i_arrayidx31_zlaswp0_add_x_toReg2;
            // Successor 3
            SE_i_arrayidx31_zlaswp0_add_x_fromReg3 <= SE_i_arrayidx31_zlaswp0_add_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_i_arrayidx31_zlaswp0_add_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm2810_zlaswp72_backStall) & SE_i_arrayidx31_zlaswp0_add_x_wireValid) | SE_i_arrayidx31_zlaswp0_add_x_fromReg0;
    assign SE_i_arrayidx31_zlaswp0_add_x_consumed1 = (~ (redist5_i_arrayidx31_zlaswp0_dupName_0_trunc_sel_x_b_63_fifo_stall_out) & SE_i_arrayidx31_zlaswp0_add_x_wireValid) | SE_i_arrayidx31_zlaswp0_add_x_fromReg1;
    assign SE_i_arrayidx31_zlaswp0_add_x_consumed2 = (~ (SE_in_i_llvm_fpga_mem_lm269_zlaswp60_backStall) & SE_i_arrayidx31_zlaswp0_add_x_wireValid) | SE_i_arrayidx31_zlaswp0_add_x_fromReg2;
    assign SE_i_arrayidx31_zlaswp0_add_x_consumed3 = (~ (redist4_i_r32_zlaswp0_trunc_sel_x_b_63_fifo_stall_out) & SE_i_arrayidx31_zlaswp0_add_x_wireValid) | SE_i_arrayidx31_zlaswp0_add_x_fromReg3;
    // Consuming
    assign SE_i_arrayidx31_zlaswp0_add_x_StallValid = SE_i_arrayidx31_zlaswp0_add_x_backStall & SE_i_arrayidx31_zlaswp0_add_x_wireValid;
    assign SE_i_arrayidx31_zlaswp0_add_x_toReg0 = SE_i_arrayidx31_zlaswp0_add_x_StallValid & SE_i_arrayidx31_zlaswp0_add_x_consumed0;
    assign SE_i_arrayidx31_zlaswp0_add_x_toReg1 = SE_i_arrayidx31_zlaswp0_add_x_StallValid & SE_i_arrayidx31_zlaswp0_add_x_consumed1;
    assign SE_i_arrayidx31_zlaswp0_add_x_toReg2 = SE_i_arrayidx31_zlaswp0_add_x_StallValid & SE_i_arrayidx31_zlaswp0_add_x_consumed2;
    assign SE_i_arrayidx31_zlaswp0_add_x_toReg3 = SE_i_arrayidx31_zlaswp0_add_x_StallValid & SE_i_arrayidx31_zlaswp0_add_x_consumed3;
    // Backward Stall generation
    assign SE_i_arrayidx31_zlaswp0_add_x_or0 = SE_i_arrayidx31_zlaswp0_add_x_consumed0;
    assign SE_i_arrayidx31_zlaswp0_add_x_or1 = SE_i_arrayidx31_zlaswp0_add_x_consumed1 & SE_i_arrayidx31_zlaswp0_add_x_or0;
    assign SE_i_arrayidx31_zlaswp0_add_x_or2 = SE_i_arrayidx31_zlaswp0_add_x_consumed2 & SE_i_arrayidx31_zlaswp0_add_x_or1;
    assign SE_i_arrayidx31_zlaswp0_add_x_wireStall = ~ (SE_i_arrayidx31_zlaswp0_add_x_consumed3 & SE_i_arrayidx31_zlaswp0_add_x_or2);
    assign SE_i_arrayidx31_zlaswp0_add_x_backStall = SE_i_arrayidx31_zlaswp0_add_x_wireStall;
    // Valid signal propagation
    assign SE_i_arrayidx31_zlaswp0_add_x_V0 = SE_i_arrayidx31_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx31_zlaswp0_add_x_fromReg0);
    assign SE_i_arrayidx31_zlaswp0_add_x_V1 = SE_i_arrayidx31_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx31_zlaswp0_add_x_fromReg1);
    assign SE_i_arrayidx31_zlaswp0_add_x_V2 = SE_i_arrayidx31_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx31_zlaswp0_add_x_fromReg2);
    assign SE_i_arrayidx31_zlaswp0_add_x_V3 = SE_i_arrayidx31_zlaswp0_add_x_wireValid & ~ (SE_i_arrayidx31_zlaswp0_add_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_i_arrayidx31_zlaswp0_add_x_and0 = SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_V0;
    assign SE_i_arrayidx31_zlaswp0_add_x_wireValid = SE_redist9_i_add_ptr_zlaswp0_dupName_0_trunc_sel_x_b_1_0_V2 & SE_i_arrayidx31_zlaswp0_add_x_and0;

    // SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0(STALLENABLE,871)
    // Valid signal propagation
    assign SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_V0 = SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_s_tv_0 = SE_i_arrayidx31_zlaswp0_add_x_backStall & SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backEN = ~ (SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_v_s_0 = SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_V0;
    // Backward Stall generation
    assign SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backStall = ~ (SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0 & SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_R_v_0 <= SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0(STALLENABLE,876)
    // Valid signal propagation
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V0 = SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0;
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V1 = SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi167_zlaswp19_backStall & SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0;
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_backStall & SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_or0 = SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_0;
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN = ~ (SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_1 | SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_v_s_0 = SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN & SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backStall = ~ (SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0 <= SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0 & SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_0 <= SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1 <= SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1 & SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_R_v_1 <= SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55(STALLENABLE,665)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_backStall = SE_redist6_i_arrayidx31_zlaswp0_trunc_sel_x_b_1_0_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_and0 = i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_wireValid = SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_and0;

    // i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55(BLACKBOX,41)@100
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_lm1476169_0 thei_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_V0),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9(STALLENABLE,1065)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_backStall = i_llvm_fpga_ffwd_dest_i32_lm1476169_zlaswp55_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_out;

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg(STALLFIFO,1156)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V8;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(100),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg(STALLFIFO,1155)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V7;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(101),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg(STALLFIFO,1154)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V6;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg(STALLFIFO,1153)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V5;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(100),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg(STALLFIFO,1151)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V3;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(100),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg(STALLFIFO,1150)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V2;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(100),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,1149)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1(STALLENABLE,1049)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,1148)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stall_entry(BITJOIN,576)
    assign bubble_join_stall_entry_q = in_forked163;

    // bubble_select_stall_entry(BITSELECT,577)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,779)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = zlaswp_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // zlaswp_B4_merge_reg_aunroll_x(BLACKBOX,304)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    zlaswp_B4_merge_reg thezlaswp_B4_merge_reg_aunroll_x (
        .in_stall_in(SE_out_zlaswp_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(zlaswp_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(zlaswp_B4_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_zlaswp_B4_merge_reg_aunroll_x(STALLENABLE,812)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg6 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg7 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg8 <= '0;
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg6 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg6;
            // Successor 7
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg7 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg7;
            // Successor 8
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg8 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg8;
            // Successor 9
            SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg9 <= SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg9;
        end
    end
    // Input Stall processing
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg5;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed6 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_7_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg6;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed7 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_8_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg7;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed8 = (~ (bubble_out_zlaswp_B4_merge_reg_aunroll_x_9_reg_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg8;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed9 = (~ (redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out) & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid) | SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg9;
    // Consuming
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid = SE_out_zlaswp_B4_merge_reg_aunroll_x_backStall & SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg0 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg1 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg2 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg3 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg4 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg5 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed5;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg6 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed6;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg7 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed7;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg8 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed8;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_toReg9 = SE_out_zlaswp_B4_merge_reg_aunroll_x_StallValid & SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed9;
    // Backward Stall generation
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or0 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or1 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed1 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or0;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or2 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed2 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or1;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or3 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed3 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or2;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or4 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed4 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or3;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or5 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed5 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or4;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or6 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed6 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or5;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or7 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed7 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or6;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_or8 = SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed8 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or7;
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_consumed9 & SE_out_zlaswp_B4_merge_reg_aunroll_x_or8);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_backStall = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V0 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V1 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V2 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V3 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V4 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V5 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg5);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V6 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg6);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V7 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg7);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V8 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg8);
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_V9 = SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_zlaswp_B4_merge_reg_aunroll_x_fromReg9);
    // Computing multiple Valid(s)
    assign SE_out_zlaswp_B4_merge_reg_aunroll_x_wireValid = zlaswp_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg(STALLFIFO,1152)
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V4;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5(STALLENABLE,1057)
    // Valid signal propagation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_stall_out | ~ (SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_wireValid = bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17(BLACKBOX,46)@96
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_unnamed_31_zlaswp0 thei_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17(BITJOIN,506)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_q = i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17(BITSELECT,507)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_q[31:0]);

    // i_mul20_zlaswp18_bs2_merged_bit_select(BITSELECT,414)@96
    assign i_mul20_zlaswp18_bs2_merged_bit_select_b = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_b[31:18];
    assign i_mul20_zlaswp18_bs2_merged_bit_select_c = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_b[17:0];

    // i_mul20_zlaswp18_bs1_merged_bit_select(BITSELECT,415)@96
    assign i_mul20_zlaswp18_bs1_merged_bit_select_b = i_storemerge71_replace_phi_zlaswp8_q[31:18];
    assign i_mul20_zlaswp18_bs1_merged_bit_select_c = i_storemerge71_replace_phi_zlaswp8_q[17:0];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_mul20_zlaswp18_ma3_cma(CHAINMULTADD,413)@96 + 3
    assign i_mul20_zlaswp18_ma3_cma_reset = ~ (resetn);
    assign i_mul20_zlaswp18_ma3_cma_ena0 = SE_i_mul20_zlaswp18_im0_cma_backEN[0];
    assign i_mul20_zlaswp18_ma3_cma_ena1 = i_mul20_zlaswp18_ma3_cma_ena0;
    assign i_mul20_zlaswp18_ma3_cma_ena2 = i_mul20_zlaswp18_ma3_cma_ena0;

    assign i_mul20_zlaswp18_ma3_cma_a0 = i_mul20_zlaswp18_bs1_merged_bit_select_b;
    assign i_mul20_zlaswp18_ma3_cma_c0 = i_mul20_zlaswp18_bs2_merged_bit_select_c;
    assign i_mul20_zlaswp18_ma3_cma_a1 = i_mul20_zlaswp18_bs2_merged_bit_select_b;
    assign i_mul20_zlaswp18_ma3_cma_c1 = i_mul20_zlaswp18_bs1_merged_bit_select_c;
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
    ) i_mul20_zlaswp18_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_zlaswp18_ma3_cma_ena2, i_mul20_zlaswp18_ma3_cma_ena1, i_mul20_zlaswp18_ma3_cma_ena0 }),
        .aclr({ i_mul20_zlaswp18_ma3_cma_reset, i_mul20_zlaswp18_ma3_cma_reset }),
        .ay(i_mul20_zlaswp18_ma3_cma_a1),
        .by(i_mul20_zlaswp18_ma3_cma_a0),
        .ax(i_mul20_zlaswp18_ma3_cma_c1),
        .bx(i_mul20_zlaswp18_ma3_cma_c0),
        .resulta(i_mul20_zlaswp18_ma3_cma_s0),
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
    i_mul20_zlaswp18_ma3_cma_delay ( .xin(i_mul20_zlaswp18_ma3_cma_s0), .xout(i_mul20_zlaswp18_ma3_cma_qq), .ena(SE_i_mul20_zlaswp18_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul20_zlaswp18_ma3_cma_q = $unsigned(i_mul20_zlaswp18_ma3_cma_qq[32:0]);

    // bubble_join_i_mul20_zlaswp18_ma3_cma(BITJOIN,598)
    assign bubble_join_i_mul20_zlaswp18_ma3_cma_q = i_mul20_zlaswp18_ma3_cma_q;

    // SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data(STALLENABLE,1075)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_V0 = SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_backStall = SR_SE_redist10_bgTrunc_i_mul20_zlaswp18_sel_x_b_1_0_backStall | ~ (SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_and0 = bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_out;
    assign SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_and1 = bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_out & SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_and0;
    assign SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_wireValid = bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_out & SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_and1;

    // bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg(STALLFIFO,1159)
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_in = SE_i_mul20_zlaswp18_im0_cma_V2;
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_backStall;
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_data_in = bubble_join_i_mul20_zlaswp18_ma3_cma_q;
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul20_zlaswp18_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul20_zlaswp18_ma3_cma_q),
        .valid_out(bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul20_zlaswp18_im8_cma(CHAINMULTADD,412)@96 + 3
    assign i_mul20_zlaswp18_im8_cma_reset = ~ (resetn);
    assign i_mul20_zlaswp18_im8_cma_ena0 = SE_i_mul20_zlaswp18_im0_cma_backEN[0];
    assign i_mul20_zlaswp18_im8_cma_ena1 = i_mul20_zlaswp18_im8_cma_ena0;
    assign i_mul20_zlaswp18_im8_cma_ena2 = i_mul20_zlaswp18_im8_cma_ena0;

    assign i_mul20_zlaswp18_im8_cma_a0 = i_mul20_zlaswp18_bs1_merged_bit_select_c;
    assign i_mul20_zlaswp18_im8_cma_c0 = i_mul20_zlaswp18_bs2_merged_bit_select_c;
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
    ) i_mul20_zlaswp18_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_zlaswp18_im8_cma_ena2, i_mul20_zlaswp18_im8_cma_ena1, i_mul20_zlaswp18_im8_cma_ena0 }),
        .aclr({ i_mul20_zlaswp18_im8_cma_reset, i_mul20_zlaswp18_im8_cma_reset }),
        .ay(i_mul20_zlaswp18_im8_cma_a0),
        .ax(i_mul20_zlaswp18_im8_cma_c0),
        .resulta(i_mul20_zlaswp18_im8_cma_s0),
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
    i_mul20_zlaswp18_im8_cma_delay ( .xin(i_mul20_zlaswp18_im8_cma_s0), .xout(i_mul20_zlaswp18_im8_cma_qq), .ena(SE_i_mul20_zlaswp18_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul20_zlaswp18_im8_cma_q = $unsigned(i_mul20_zlaswp18_im8_cma_qq[35:0]);

    // bubble_join_i_mul20_zlaswp18_im8_cma(BITJOIN,595)
    assign bubble_join_i_mul20_zlaswp18_im8_cma_q = i_mul20_zlaswp18_im8_cma_q;

    // bubble_out_i_mul20_zlaswp18_im8_cma_data_reg(STALLFIFO,1158)
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_in = SE_i_mul20_zlaswp18_im0_cma_V1;
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_backStall;
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_data_in = bubble_join_i_mul20_zlaswp18_im8_cma_q;
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul20_zlaswp18_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul20_zlaswp18_im8_cma_q),
        .valid_out(bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul20_zlaswp18_im0_cma(CHAINMULTADD,411)@96 + 3
    assign i_mul20_zlaswp18_im0_cma_reset = ~ (resetn);
    assign i_mul20_zlaswp18_im0_cma_ena0 = SE_i_mul20_zlaswp18_im0_cma_backEN[0];
    assign i_mul20_zlaswp18_im0_cma_ena1 = i_mul20_zlaswp18_im0_cma_ena0;
    assign i_mul20_zlaswp18_im0_cma_ena2 = i_mul20_zlaswp18_im0_cma_ena0;

    assign i_mul20_zlaswp18_im0_cma_a0 = i_mul20_zlaswp18_bs1_merged_bit_select_b;
    assign i_mul20_zlaswp18_im0_cma_c0 = i_mul20_zlaswp18_bs2_merged_bit_select_b;
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
    ) i_mul20_zlaswp18_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul20_zlaswp18_im0_cma_ena2, i_mul20_zlaswp18_im0_cma_ena1, i_mul20_zlaswp18_im0_cma_ena0 }),
        .aclr({ i_mul20_zlaswp18_im0_cma_reset, i_mul20_zlaswp18_im0_cma_reset }),
        .ay(i_mul20_zlaswp18_im0_cma_a0),
        .ax(i_mul20_zlaswp18_im0_cma_c0),
        .resulta(i_mul20_zlaswp18_im0_cma_s0),
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
    i_mul20_zlaswp18_im0_cma_delay ( .xin(i_mul20_zlaswp18_im0_cma_s0), .xout(i_mul20_zlaswp18_im0_cma_qq), .ena(SE_i_mul20_zlaswp18_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul20_zlaswp18_im0_cma_q = $unsigned(i_mul20_zlaswp18_im0_cma_qq[27:0]);

    // bubble_join_i_mul20_zlaswp18_im0_cma(BITJOIN,592)
    assign bubble_join_i_mul20_zlaswp18_im0_cma_q = i_mul20_zlaswp18_im0_cma_q;

    // bubble_out_i_mul20_zlaswp18_im0_cma_data_reg(STALLFIFO,1157)
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_in = SE_i_mul20_zlaswp18_im0_cma_V0;
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul20_zlaswp18_ma3_cma_data_backStall;
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_data_in = bubble_join_i_mul20_zlaswp18_im0_cma_q;
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul20_zlaswp18_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul20_zlaswp18_im0_cma_q),
        .valid_out(bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17(STALLENABLE,675)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_backStall = SE_i_mul20_zlaswp18_im0_cma_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_wireValid = i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_out_valid_out;

    // SE_i_mul20_zlaswp18_im0_cma(STALLENABLE,850)
    // Valid signal propagation
    assign SE_i_mul20_zlaswp18_im0_cma_V0 = SE_i_mul20_zlaswp18_im0_cma_R_v_0;
    assign SE_i_mul20_zlaswp18_im0_cma_V1 = SE_i_mul20_zlaswp18_im0_cma_R_v_1;
    assign SE_i_mul20_zlaswp18_im0_cma_V2 = SE_i_mul20_zlaswp18_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul20_zlaswp18_im0_cma_s_tv_0 = bubble_out_i_mul20_zlaswp18_im0_cma_data_reg_stall_out & SE_i_mul20_zlaswp18_im0_cma_R_v_0;
    assign SE_i_mul20_zlaswp18_im0_cma_s_tv_1 = bubble_out_i_mul20_zlaswp18_im8_cma_data_reg_stall_out & SE_i_mul20_zlaswp18_im0_cma_R_v_1;
    assign SE_i_mul20_zlaswp18_im0_cma_s_tv_2 = bubble_out_i_mul20_zlaswp18_ma3_cma_data_reg_stall_out & SE_i_mul20_zlaswp18_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul20_zlaswp18_im0_cma_or0 = SE_i_mul20_zlaswp18_im0_cma_s_tv_0;
    assign SE_i_mul20_zlaswp18_im0_cma_or1 = SE_i_mul20_zlaswp18_im0_cma_s_tv_1 | SE_i_mul20_zlaswp18_im0_cma_or0;
    assign SE_i_mul20_zlaswp18_im0_cma_backEN = ~ (SE_i_mul20_zlaswp18_im0_cma_s_tv_2 | SE_i_mul20_zlaswp18_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul20_zlaswp18_im0_cma_and0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_zlaswp31_zlaswp17_V0 & SE_i_mul20_zlaswp18_im0_cma_backEN;
    assign SE_i_mul20_zlaswp18_im0_cma_v_s_0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V1 & SE_i_mul20_zlaswp18_im0_cma_and0;
    // Backward Stall generation
    assign SE_i_mul20_zlaswp18_im0_cma_backStall = ~ (SE_i_mul20_zlaswp18_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul20_zlaswp18_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul20_zlaswp18_im0_cma_R_s_1 <= 1'b0;
            SE_i_mul20_zlaswp18_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul20_zlaswp18_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul20_zlaswp18_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul20_zlaswp18_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_s_0 <= SE_i_mul20_zlaswp18_im0_cma_v_s_0;
            end

            if (SE_i_mul20_zlaswp18_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_s_1 <= SE_i_mul20_zlaswp18_im0_cma_R_s_0;
            end

            if (SE_i_mul20_zlaswp18_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_v_0 <= SE_i_mul20_zlaswp18_im0_cma_R_v_0 & SE_i_mul20_zlaswp18_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_v_0 <= SE_i_mul20_zlaswp18_im0_cma_R_s_1;
            end

            if (SE_i_mul20_zlaswp18_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_v_1 <= SE_i_mul20_zlaswp18_im0_cma_R_v_1 & SE_i_mul20_zlaswp18_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_v_1 <= SE_i_mul20_zlaswp18_im0_cma_R_s_1;
            end

            if (SE_i_mul20_zlaswp18_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_v_2 <= SE_i_mul20_zlaswp18_im0_cma_R_v_2 & SE_i_mul20_zlaswp18_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul20_zlaswp18_im0_cma_R_v_2 <= SE_i_mul20_zlaswp18_im0_cma_R_s_1;
            end

        end
    end

    // SE_i_cmp18_zlaswp16(STALLENABLE,656)
    // Valid signal propagation
    assign SE_i_cmp18_zlaswp16_V0 = SE_i_cmp18_zlaswp16_R_v_0;
    // Stall signal propagation
    assign SE_i_cmp18_zlaswp16_s_tv_0 = SE_i_phi_decision153_xor_and_i0_zlaswp25_backStall & SE_i_cmp18_zlaswp16_R_v_0;
    // Backward Enable generation
    assign SE_i_cmp18_zlaswp16_backEN = ~ (SE_i_cmp18_zlaswp16_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp18_zlaswp16_and0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V0 & SE_i_cmp18_zlaswp16_backEN;
    assign SE_i_cmp18_zlaswp16_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_storemerge69165_zlaswp9_V0 & SE_i_cmp18_zlaswp16_and0;
    // Backward Stall generation
    assign SE_i_cmp18_zlaswp16_backStall = ~ (SE_i_cmp18_zlaswp16_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp18_zlaswp16_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp18_zlaswp16_backEN == 1'b0)
            begin
                SE_i_cmp18_zlaswp16_R_v_0 <= SE_i_cmp18_zlaswp16_R_v_0 & SE_i_cmp18_zlaswp16_s_tv_0;
            end
            else
            begin
                SE_i_cmp18_zlaswp16_R_v_0 <= SE_i_cmp18_zlaswp16_v_s_0;
            end

        end
    end

    // i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6(BLACKBOX,42)@96
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge69164_0 thei_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_backStall),
        .in_valid_in(SE_out_bubble_out_zlaswp_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7(STALLENABLE,717)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg2 <= SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed0 = (~ (SE_i_cmp18_zlaswp16_backStall) & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid) | SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed1 = (~ (SE_i_mul20_zlaswp18_im0_cma_backStall) & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid) | SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed2 = (~ (SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall) & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid) | SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_StallValid = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_backStall & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_StallValid & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg1 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_StallValid & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed1;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_toReg2 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_StallValid & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_or0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_or1 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed1 & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_or0;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_consumed2 & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_or1);
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_backStall = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V1 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_V2 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_and0 = i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_and1 = i_llvm_fpga_ffwd_dest_i32_storemerge69164_zlaswp6_out_valid_out & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_and0;
    assign SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_wireValid = SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_V0 & SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_and1;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99(STALLENABLE,743)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_wireValid = i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_valid_out;

    // c_i32_1111(CONSTANT,12)
    assign c_i32_1111_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_zlaswp98(ADD,38)@96
    assign i_inc_zlaswp98_a = {1'b0, i_storemerge71_replace_phi_zlaswp8_q};
    assign i_inc_zlaswp98_b = {1'b0, c_i32_1111_q};
    assign i_inc_zlaswp98_o = $unsigned(i_inc_zlaswp98_a) + $unsigned(i_inc_zlaswp98_b);
    assign i_inc_zlaswp98_q = i_inc_zlaswp98_o[32:0];

    // bgTrunc_i_inc_zlaswp98_sel_x(BITSELECT,229)@96
    assign bgTrunc_i_inc_zlaswp98_sel_x_b = i_inc_zlaswp98_q[31:0];

    // i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99(BLACKBOX,80)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    zlaswp_i_llvm_fpga_push_i32_storemerge71_push48_0 thei_llvm_fpga_push_i32_storemerge71_push48_zlaswp99 (
        .in_data_in(bgTrunc_i_inc_zlaswp98_sel_x_b),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_feedback_stall_out_48),
        .in_keep_going200(bubble_select_i_llvm_fpga_pipeline_keep_going200_zlaswp4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_V0),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_feedback_valid_out_48),
        .out_stall_out(i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef105(CONSTANT,14)
    assign c_i32_undef105_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7(BLACKBOX,67)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_feedback_stall_out_48@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    zlaswp_i_llvm_fpga_pop_i32_storemerge71_pop48_0 thei_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7 (
        .in_data_in(c_i32_undef105_q),
        .in_dir(bubble_select_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b),
        .in_feedback_in_48(i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_backStall),
        .in_valid_in(SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_feedback_stall_out_48),
        .out_stall_out(i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0(STALLENABLE,860)
    // Valid signal propagation
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_V0 = SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0;
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_V1 = SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_backStall & SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0;
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_1 = SE_redist2_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_99_0_backStall & SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_or0 = SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_0;
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backEN = ~ (SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_1 | SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_v_s_0 = SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backEN & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V0;
    // Backward Stall generation
    assign SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backStall = ~ (SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0 <= 1'b0;
            SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backEN == 1'b0)
            begin
                SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0 <= SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0 & SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_0;
            end
            else
            begin
                SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_0 <= SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_v_s_0;
            end

            if (SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backEN == 1'b0)
            begin
                SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1 <= SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1 & SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_s_tv_1;
            end
            else
            begin
                SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_R_v_1 <= SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_v_s_0;
            end

        end
    end

    // bubble_join_zlaswp_B4_merge_reg_aunroll_x(BITJOIN,580)
    assign bubble_join_zlaswp_B4_merge_reg_aunroll_x_q = zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_zlaswp_B4_merge_reg_aunroll_x(BITSELECT,581)
    assign bubble_select_zlaswp_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_zlaswp_B4_merge_reg_aunroll_x_q[0:0]);

    // redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(STALLFIFO,445)
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in = SE_out_zlaswp_B4_merge_reg_aunroll_x_V9;
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall;
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_in = bubble_select_zlaswp_B4_merge_reg_aunroll_x_b;
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in_bitsignaltemp = redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in[0];
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in_bitsignaltemp = redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in[0];
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out[0] = redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out_bitsignaltemp;
    assign redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out[0] = redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(95),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo (
        .valid_in(redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_zlaswp_B4_merge_reg_aunroll_x_b),
        .valid_out(redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(STALLENABLE,859)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0 <= '0;
            SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1 <= '0;
            SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0 <= SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg0;
            // Successor 1
            SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1 <= SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg1;
            // Successor 2
            SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg2 <= SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0 = (~ (SE_redist1_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_95_0_backStall) & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid) | SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_stall_out) & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid) | SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed2 = (~ (i_llvm_fpga_pop_i32_storemerge71_pop48_zlaswp7_out_stall_out) & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid) | SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg2;
    // Consuming
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg0 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg1 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_toReg2 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_StallValid & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or0 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed0;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or1 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed1 & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or0;
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireStall = ~ (SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_consumed2 & SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_or1);
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_backStall = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V0 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid & ~ (SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg0);
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V1 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid & ~ (SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg1);
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V2 = SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid & ~ (SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_wireValid = redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4(STALLENABLE,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i32_storemerge71_push48_zlaswp99_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed2 = (~ (SE_redist19_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_or1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_wireValid = i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond210_zlaswp45(STALLENABLE,739)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_wireValid = i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond210_zlaswp45(BLACKBOX,78)@101
    // in in_stall_in@20000000
    // out out_data_out@102
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@102
    zlaswp_i_llvm_fpga_push_i1_notexitcond210_0 thei_llvm_fpga_push_i1_notexitcond210_zlaswp45 (
        .in_data_in(i_phi_decision153_xor154_and_i0_zlaswp43_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_not_exitcond_stall_out),
        .in_first_cleanup205(i_first_cleanup205_zlaswp1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond210_zlaswp45_V0),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration202_zlaswp5(STALLENABLE,721)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_wireValid = i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration202_zlaswp5(BLACKBOX,69)@190
    // in in_stall_in@20000000
    // out out_data_out@191
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@191
    zlaswp_i_llvm_fpga_push_i1_lastiniteration202_0 thei_llvm_fpga_push_i1_lastiniteration202_zlaswp5 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_initeration_stall_out),
        .in_keep_going200(bubble_select_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_backStall),
        .in_valid_in(SE_out_redist22_i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out_94_fifo_V1),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(BITJOIN,601)
    assign bubble_join_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_q = redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_data_out;

    // bubble_select_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo(BITSELECT,602)
    assign bubble_select_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b = $unsigned(bubble_join_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going200_zlaswp4(BLACKBOX,57)@95
    // in in_stall_in@20000000
    // out out_data_out@96
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@96
    zlaswp_i_llvm_fpga_pipeline_keep_going200_0 thei_llvm_fpga_pipeline_keep_going200_zlaswp4 (
        .in_data_in(bubble_select_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration202_zlaswp5_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond210_zlaswp45_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going200_zlaswp4_backStall),
        .in_valid_in(SE_out_redist0_zlaswp_B4_merge_reg_aunroll_x_out_data_out_0_tpl_94_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,20)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going200_zlaswp4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,211)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going200_zlaswp4_out_pipeline_valid_out;

    // regfree_osync(GPOUT,219)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_zlaswp34_zlaswp100_out_intel_reserved_ffwd_21_0;

    // sync_out(GPOUT,223)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,233)
    assign out_lm7_zlaswp_avm_address = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_address;
    assign out_lm7_zlaswp_avm_enable = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_enable;
    assign out_lm7_zlaswp_avm_read = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_read;
    assign out_lm7_zlaswp_avm_write = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_write;
    assign out_lm7_zlaswp_avm_writedata = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_writedata;
    assign out_lm7_zlaswp_avm_byteenable = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_byteenable;
    assign out_lm7_zlaswp_avm_burstcount = i_llvm_fpga_mem_lm7_zlaswp35_out_lm7_zlaswp_avm_burstcount;

    // bubble_join_redist18_i_masked209_zlaswp101_q_94_fifo(BITJOIN,634)
    assign bubble_join_redist18_i_masked209_zlaswp101_q_94_fifo_q = redist18_i_masked209_zlaswp101_q_94_fifo_data_out;

    // bubble_select_redist18_i_masked209_zlaswp101_q_94_fifo(BITSELECT,635)
    assign bubble_select_redist18_i_masked209_zlaswp101_q_94_fifo_b = $unsigned(bubble_join_redist18_i_masked209_zlaswp101_q_94_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,235)@195
    assign out_masked209 = bubble_select_redist18_i_masked209_zlaswp101_q_94_fifo_b;
    assign out_valid_out = SE_out_redist18_i_masked209_zlaswp101_q_94_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,237)
    assign out_lm248_zlaswp_avm_address = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_address;
    assign out_lm248_zlaswp_avm_enable = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_enable;
    assign out_lm248_zlaswp_avm_read = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_read;
    assign out_lm248_zlaswp_avm_write = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_write;
    assign out_lm248_zlaswp_avm_writedata = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_writedata;
    assign out_lm248_zlaswp_avm_byteenable = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_byteenable;
    assign out_lm248_zlaswp_avm_burstcount = i_llvm_fpga_mem_lm248_zlaswp53_out_lm248_zlaswp_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,240)
    assign out_lm269_zlaswp_avm_address = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_address;
    assign out_lm269_zlaswp_avm_enable = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_enable;
    assign out_lm269_zlaswp_avm_read = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_read;
    assign out_lm269_zlaswp_avm_write = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_write;
    assign out_lm269_zlaswp_avm_writedata = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_writedata;
    assign out_lm269_zlaswp_avm_byteenable = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_byteenable;
    assign out_lm269_zlaswp_avm_burstcount = i_llvm_fpga_mem_lm269_zlaswp60_out_lm269_zlaswp_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,242)
    assign out_memdep_zlaswp_avm_address = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_address;
    assign out_memdep_zlaswp_avm_enable = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_enable;
    assign out_memdep_zlaswp_avm_read = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_read;
    assign out_memdep_zlaswp_avm_write = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_write;
    assign out_memdep_zlaswp_avm_writedata = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_writedata;
    assign out_memdep_zlaswp_avm_byteenable = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_byteenable;
    assign out_memdep_zlaswp_avm_burstcount = i_llvm_fpga_mem_memdep_zlaswp69_out_memdep_zlaswp_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,244)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_zlaswp69_out_lsu_memdep_o_active;

    // dupName_5_ext_sig_sync_out_x(GPOUT,246)
    assign out_lm2810_zlaswp_avm_address = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_address;
    assign out_lm2810_zlaswp_avm_enable = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_enable;
    assign out_lm2810_zlaswp_avm_read = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_read;
    assign out_lm2810_zlaswp_avm_write = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_write;
    assign out_lm2810_zlaswp_avm_writedata = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_writedata;
    assign out_lm2810_zlaswp_avm_byteenable = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_byteenable;
    assign out_lm2810_zlaswp_avm_burstcount = i_llvm_fpga_mem_lm2810_zlaswp72_out_lm2810_zlaswp_avm_burstcount;

    // dupName_6_ext_sig_sync_out_x(GPOUT,248)
    assign out_memdep_31_zlaswp_avm_address = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_address;
    assign out_memdep_31_zlaswp_avm_enable = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_enable;
    assign out_memdep_31_zlaswp_avm_read = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_read;
    assign out_memdep_31_zlaswp_avm_write = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_write;
    assign out_memdep_31_zlaswp_avm_writedata = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_writedata;
    assign out_memdep_31_zlaswp_avm_byteenable = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_byteenable;
    assign out_memdep_31_zlaswp_avm_burstcount = i_llvm_fpga_mem_memdep_31_zlaswp83_out_memdep_31_zlaswp_avm_burstcount;

    // dupName_7_ext_sig_sync_out_x(GPOUT,249)
    assign out_lsu_memdep_31_o_active = i_llvm_fpga_mem_memdep_31_zlaswp83_out_lsu_memdep_31_o_active;

    // dupName_8_ext_sig_sync_out_x(GPOUT,250)
    assign out_memdep_38_zlaswp_avm_address = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_address;
    assign out_memdep_38_zlaswp_avm_enable = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_enable;
    assign out_memdep_38_zlaswp_avm_read = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_read;
    assign out_memdep_38_zlaswp_avm_write = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_write;
    assign out_memdep_38_zlaswp_avm_writedata = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_writedata;
    assign out_memdep_38_zlaswp_avm_byteenable = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_byteenable;
    assign out_memdep_38_zlaswp_avm_burstcount = i_llvm_fpga_mem_memdep_38_zlaswp90_out_memdep_38_zlaswp_avm_burstcount;

    // dupName_9_ext_sig_sync_out_x(GPOUT,251)
    assign out_lsu_memdep_38_o_active = i_llvm_fpga_mem_memdep_38_zlaswp90_out_lsu_memdep_38_o_active;

    // dupName_10_ext_sig_sync_out_x(GPOUT,252)
    assign out_memdep_46_zlaswp_avm_address = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_address;
    assign out_memdep_46_zlaswp_avm_enable = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_enable;
    assign out_memdep_46_zlaswp_avm_read = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_read;
    assign out_memdep_46_zlaswp_avm_write = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_write;
    assign out_memdep_46_zlaswp_avm_writedata = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_writedata;
    assign out_memdep_46_zlaswp_avm_byteenable = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_byteenable;
    assign out_memdep_46_zlaswp_avm_burstcount = i_llvm_fpga_mem_memdep_46_zlaswp96_out_memdep_46_zlaswp_avm_burstcount;

    // dupName_11_ext_sig_sync_out_x(GPOUT,253)
    assign out_lsu_memdep_46_o_active = i_llvm_fpga_mem_memdep_46_zlaswp96_out_lsu_memdep_46_o_active;

endmodule
