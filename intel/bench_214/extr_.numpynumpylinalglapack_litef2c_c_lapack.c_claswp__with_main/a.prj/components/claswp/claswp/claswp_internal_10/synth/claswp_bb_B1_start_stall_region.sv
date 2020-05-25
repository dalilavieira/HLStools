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

// SystemVerilog created from claswp_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_bb_B1_start_stall_region (
    input wire [447:0] in_iord_bl_call_claswp_i_fifodata,
    input wire [0:0] in_iord_bl_call_claswp_i_fifovalid,
    output wire [0:0] out_iord_bl_call_claswp_o_fifoready,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_claswp3_claswp_avm_readdata,
    input wire [0:0] in_unnamed_claswp3_claswp_avm_writeack,
    input wire [0:0] in_unnamed_claswp3_claswp_avm_waitrequest,
    input wire [0:0] in_unnamed_claswp3_claswp_avm_readdatavalid,
    output wire [63:0] out_unnamed_claswp3_claswp_avm_address,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_enable,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_read,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_write,
    output wire [63:0] out_unnamed_claswp3_claswp_avm_writedata,
    output wire [7:0] out_unnamed_claswp3_claswp_avm_byteenable,
    output wire [0:0] out_unnamed_claswp3_claswp_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_claswp4_claswp_avm_readdata,
    input wire [0:0] in_unnamed_claswp4_claswp_avm_writeack,
    input wire [0:0] in_unnamed_claswp4_claswp_avm_waitrequest,
    input wire [0:0] in_unnamed_claswp4_claswp_avm_readdatavalid,
    output wire [63:0] out_unnamed_claswp4_claswp_avm_address,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_enable,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_read,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_write,
    output wire [63:0] out_unnamed_claswp4_claswp_avm_writedata,
    output wire [7:0] out_unnamed_claswp4_claswp_avm_byteenable,
    output wire [0:0] out_unnamed_claswp4_claswp_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [63:0] in_lm1052_claswp_avm_readdata,
    input wire [0:0] in_lm1052_claswp_avm_writeack,
    input wire [0:0] in_lm1052_claswp_avm_waitrequest,
    input wire [0:0] in_lm1052_claswp_avm_readdatavalid,
    output wire [63:0] out_lm1052_claswp_avm_address,
    output wire [0:0] out_lm1052_claswp_avm_enable,
    output wire [0:0] out_lm1052_claswp_avm_read,
    output wire [0:0] out_lm1052_claswp_avm_write,
    output wire [63:0] out_lm1052_claswp_avm_writedata,
    output wire [7:0] out_lm1052_claswp_avm_byteenable,
    output wire [0:0] out_lm1052_claswp_avm_burstcount,
    output wire [0:0] out_intel_reserved_ffwd_12_0,
    input wire [63:0] in_lm1021_claswp_avm_readdata,
    input wire [0:0] in_lm1021_claswp_avm_writeack,
    input wire [0:0] in_lm1021_claswp_avm_waitrequest,
    input wire [0:0] in_lm1021_claswp_avm_readdatavalid,
    output wire [63:0] out_lm1021_claswp_avm_address,
    output wire [0:0] out_lm1021_claswp_avm_enable,
    output wire [0:0] out_lm1021_claswp_avm_read,
    output wire [0:0] out_lm1021_claswp_avm_write,
    output wire [63:0] out_lm1021_claswp_avm_writedata,
    output wire [7:0] out_lm1021_claswp_avm_byteenable,
    output wire [0:0] out_lm1021_claswp_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    input wire [63:0] in_storemerge1_lm3_claswp_avm_readdata,
    input wire [0:0] in_storemerge1_lm3_claswp_avm_writeack,
    input wire [0:0] in_storemerge1_lm3_claswp_avm_waitrequest,
    input wire [0:0] in_storemerge1_lm3_claswp_avm_readdatavalid,
    output wire [63:0] out_storemerge1_lm3_claswp_avm_address,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_enable,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_read,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_write,
    output wire [63:0] out_storemerge1_lm3_claswp_avm_writedata,
    output wire [7:0] out_storemerge1_lm3_claswp_avm_byteenable,
    output wire [0:0] out_storemerge1_lm3_claswp_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    input wire [63:0] in_storemerge72_lm4_claswp_avm_readdata,
    input wire [0:0] in_storemerge72_lm4_claswp_avm_writeack,
    input wire [0:0] in_storemerge72_lm4_claswp_avm_waitrequest,
    input wire [0:0] in_storemerge72_lm4_claswp_avm_readdatavalid,
    output wire [63:0] out_storemerge72_lm4_claswp_avm_address,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_enable,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_read,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_write,
    output wire [63:0] out_storemerge72_lm4_claswp_avm_writedata,
    output wire [7:0] out_storemerge72_lm4_claswp_avm_byteenable,
    output wire [0:0] out_storemerge72_lm4_claswp_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [63:0] in_lm1165_claswp_avm_readdata,
    input wire [0:0] in_lm1165_claswp_avm_writeack,
    input wire [0:0] in_lm1165_claswp_avm_waitrequest,
    input wire [0:0] in_lm1165_claswp_avm_readdatavalid,
    output wire [63:0] out_lm1165_claswp_avm_address,
    output wire [0:0] out_lm1165_claswp_avm_enable,
    output wire [0:0] out_lm1165_claswp_avm_read,
    output wire [0:0] out_lm1165_claswp_avm_write,
    output wire [63:0] out_lm1165_claswp_avm_writedata,
    output wire [7:0] out_lm1165_claswp_avm_byteenable,
    output wire [0:0] out_lm1165_claswp_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_3147_q;
    wire [31:0] c_i32_3249_q;
    wire [31:0] c_i32_6248_q;
    wire [0:0] claswp_B1_start_merge_reg_out_stall_out;
    wire [0:0] claswp_B1_start_merge_reg_out_valid_out;
    wire [33:0] i_cmp_claswp11_a;
    wire [33:0] i_cmp_claswp11_b;
    logic [33:0] i_cmp_claswp11_o;
    wire [0:0] i_cmp_claswp11_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_intel_reserved_ffwd_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1021_claswp24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1021_claswp24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1021_claswp24_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1052_claswp23_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1052_claswp23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1052_claswp23_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1165_claswp27_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1165_claswp27_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1165_claswp27_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_valid_out;
    wire [0:0] i_not_cmp_claswp17_q;
    wire [32:0] i_off_claswp34_a;
    wire [32:0] i_off_claswp34_b;
    logic [32:0] i_off_claswp34_o;
    wire [32:0] i_off_claswp34_q;
    wire [32:0] i_sdiv_add_claswp37_a;
    wire [32:0] i_sdiv_add_claswp37_b;
    logic [32:0] i_sdiv_add_claswp37_o;
    wire [32:0] i_sdiv_add_claswp37_q;
    wire [31:0] i_sdiv_and_claswp35_q;
    wire [26:0] i_sdiv_and_claswp35_vt_const_31_q;
    wire [31:0] i_sdiv_and_claswp35_vt_join_q;
    wire [4:0] i_sdiv_and_claswp35_vt_select_4_b;
    wire [0:0] i_select92_claswp18_s;
    reg [63:0] i_select92_claswp18_q;
    wire [0:0] i_select96_claswp19_s;
    reg [63:0] i_select96_claswp19_q;
    wire [31:0] i_shl_claswp39_q;
    wire [4:0] i_shl_claswp39_vt_const_4_q;
    wire [31:0] i_shl_claswp39_vt_join_q;
    wire [26:0] i_shl_claswp39_vt_select_31_b;
    wire [0:0] i_unnamed_claswp13_q;
    wire [33:0] i_unnamed_claswp15_a;
    wire [33:0] i_unnamed_claswp15_b;
    logic [33:0] i_unnamed_claswp15_o;
    wire [0:0] i_unnamed_claswp15_c;
    wire [0:0] i_unnamed_claswp21_q;
    wire [33:0] i_unnamed_claswp36_a;
    wire [33:0] i_unnamed_claswp36_b;
    logic [33:0] i_unnamed_claswp36_o;
    wire [0:0] i_unnamed_claswp36_c;
    wire [31:0] bgTrunc_i_off_claswp34_sel_x_b;
    wire [31:0] bgTrunc_i_sdiv_add_claswp37_sel_x_b;
    wire [31:0] c_i32_043_recast_x_q;
    wire [31:0] c_i32_144_recast_x_q;
    wire [63:0] i_incdec_ptr_claswp0_c_i64_41_x_q;
    wire [64:0] i_incdec_ptr_claswp0_sub_x_a;
    wire [64:0] i_incdec_ptr_claswp0_sub_x_b;
    logic [64:0] i_incdec_ptr_claswp0_sub_x_o;
    wire [64:0] i_incdec_ptr_claswp0_sub_x_q;
    wire [63:0] i_incdec_ptr_claswp0_trunc_sel_x_b;
    wire [0:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_iord_bl_call_claswp_o_fifoready;
    wire [0:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_o_valid;
    wire [0:0] xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b;
    wire [30:0] rightShiftStage0Idx1Rng1_uid163_i_sdiv_mask_claswp0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid164_i_sdiv_mask_claswp0_shift_x_q;
    wire [0:0] rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_s;
    reg [31:0] rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q;
    wire [1:0] seMsb_to2_uid167_in;
    wire [1:0] seMsb_to2_uid167_b;
    wire [29:0] rightShiftStage1Idx1Rng2_uid168_i_sdiv_mask_claswp0_shift_x_b;
    wire [31:0] rightShiftStage1Idx1_uid169_i_sdiv_mask_claswp0_shift_x_q;
    wire [0:0] rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_s;
    reg [31:0] rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q;
    wire [3:0] seMsb_to4_uid172_in;
    wire [3:0] seMsb_to4_uid172_b;
    wire [27:0] rightShiftStage2Idx1Rng4_uid173_i_sdiv_mask_claswp0_shift_x_b;
    wire [31:0] rightShiftStage2Idx1_uid174_i_sdiv_mask_claswp0_shift_x_q;
    wire [0:0] rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_s;
    reg [31:0] rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q;
    wire [7:0] seMsb_to8_uid177_in;
    wire [7:0] seMsb_to8_uid177_b;
    wire [23:0] rightShiftStage3Idx1Rng8_uid178_i_sdiv_mask_claswp0_shift_x_b;
    wire [31:0] rightShiftStage3Idx1_uid179_i_sdiv_mask_claswp0_shift_x_q;
    wire [0:0] rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_s;
    reg [31:0] rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q;
    wire [15:0] seMsb_to16_uid182_in;
    wire [15:0] seMsb_to16_uid182_b;
    wire [15:0] rightShiftStage4Idx1Rng16_uid183_i_sdiv_mask_claswp0_shift_x_b;
    wire [31:0] rightShiftStage4Idx1_uid184_i_sdiv_mask_claswp0_shift_x_q;
    wire [0:0] rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_s;
    reg [31:0] rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_q;
    wire [191:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [63:0] sel_for_coalesced_delay_0_c;
    wire [63:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist3_i_unnamed_claswp13_q_36_fifo_valid_in;
    wire redist3_i_unnamed_claswp13_q_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_unnamed_claswp13_q_36_fifo_stall_in;
    wire redist3_i_unnamed_claswp13_q_36_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_unnamed_claswp13_q_36_fifo_data_in;
    wire [0:0] redist3_i_unnamed_claswp13_q_36_fifo_valid_out;
    wire redist3_i_unnamed_claswp13_q_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_unnamed_claswp13_q_36_fifo_stall_out;
    wire redist3_i_unnamed_claswp13_q_36_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_unnamed_claswp13_q_36_fifo_data_out;
    wire [0:0] redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_in;
    wire redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_in;
    wire redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_data_in;
    wire [0:0] redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_out;
    wire redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_out;
    wire redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_data_out;
    wire [0:0] redist5_i_cmp_claswp11_c_32_fifo_valid_in;
    wire redist5_i_cmp_claswp11_c_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_cmp_claswp11_c_32_fifo_stall_in;
    wire redist5_i_cmp_claswp11_c_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist5_i_cmp_claswp11_c_32_fifo_data_in;
    wire [0:0] redist5_i_cmp_claswp11_c_32_fifo_valid_out;
    wire redist5_i_cmp_claswp11_c_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_cmp_claswp11_c_32_fifo_stall_out;
    wire redist5_i_cmp_claswp11_c_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist5_i_cmp_claswp11_c_32_fifo_data_out;
    reg [0:0] redist6_i_cmp_claswp11_c_36_0_q;
    reg [0:0] redist6_i_cmp_claswp11_c_36_1_q;
    reg [0:0] redist6_i_cmp_claswp11_c_36_2_q;
    reg [0:0] redist6_i_cmp_claswp11_c_36_3_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [191:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [191:0] coalesced_delay_0_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1021_claswp24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1021_claswp24_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1052_claswp23_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1052_claswp23_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1165_claswp27_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_storemerge1_lm3_claswp25_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_storemerge1_lm3_claswp25_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_storemerge72_lm4_claswp26_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_storemerge72_lm4_claswp26_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_claswp3_claswp5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_claswp3_claswp5_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_claswp4_claswp7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_b;
    wire [447:0] bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_c;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_d;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_e;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_f;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_g;
    wire [63:0] bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_h;
    wire [0:0] bubble_join_redist3_i_unnamed_claswp13_q_36_fifo_q;
    wire [0:0] bubble_select_redist3_i_unnamed_claswp13_q_36_fifo_b;
    wire [31:0] bubble_join_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_q;
    wire [31:0] bubble_select_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_b;
    wire [0:0] bubble_join_redist5_i_cmp_claswp11_c_32_fifo_q;
    wire [0:0] bubble_select_redist5_i_cmp_claswp11_c_32_fifo_b;
    wire [191:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [191:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_claswp_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_claswp_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_claswp_B1_start_merge_reg_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg2;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg3;
    reg [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg3;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed3;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_or1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_or2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_V2;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm1021_claswp24_V3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1165_claswp27_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_or0;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V0;
    wire [0:0] SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or3;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or4;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V3;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V4;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or4;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V4;
    wire [0:0] SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V5;
    wire [0:0] SE_out_redist3_i_unnamed_claswp13_q_36_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_unnamed_claswp13_q_36_fifo_backStall;
    wire [0:0] SE_out_redist3_i_unnamed_claswp13_q_36_fifo_V0;
    wire [0:0] SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_wireValid;
    wire [0:0] SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and0;
    wire [0:0] SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and1;
    wire [0:0] SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and2;
    wire [0:0] SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_backStall;
    wire [0:0] SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_V0;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireStall;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_StallValid;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_toReg0;
    reg [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg0;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed0;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_toReg1;
    reg [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg1;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed1;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_or0;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_backStall;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_V0;
    wire [0:0] SE_out_redist5_i_cmp_claswp11_c_32_fifo_V1;
    reg [0:0] SE_redist6_i_cmp_claswp11_c_36_0_R_v_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_0_v_s_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_0_s_tv_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_0_backEN;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_0_backStall;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_0_V0;
    reg [0:0] SE_redist6_i_cmp_claswp11_c_36_1_R_v_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_1_v_s_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_1_s_tv_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_1_backEN;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_1_backStall;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_1_V0;
    reg [0:0] SE_redist6_i_cmp_claswp11_c_36_2_R_v_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_2_v_s_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_2_s_tv_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_2_backEN;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_2_backStall;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_2_V0;
    reg [0:0] SE_redist6_i_cmp_claswp11_c_36_3_R_v_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_3_v_s_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_3_s_tv_0;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_3_backEN;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_3_backStall;
    wire [0:0] SE_redist6_i_cmp_claswp11_c_36_3_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and8;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and9;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and10;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and11;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_out_bitsignaltemp;


    // SE_stall_entry(STALLENABLE,317)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = claswp_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // claswp_B1_start_merge_reg(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    claswp_B1_start_merge_reg theclaswp_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_claswp_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(claswp_B1_start_merge_reg_out_stall_out),
        .out_valid_out(claswp_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_claswp_B1_start_merge_reg(STALLENABLE,260)
    // Valid signal propagation
    assign SE_out_claswp_B1_start_merge_reg_V0 = SE_out_claswp_B1_start_merge_reg_wireValid;
    // Backward Stall generation
    assign SE_out_claswp_B1_start_merge_reg_backStall = i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_stall_out | ~ (SE_out_claswp_B1_start_merge_reg_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_claswp_B1_start_merge_reg_wireValid = claswp_B1_start_merge_reg_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0(BLACKBOX,39)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    claswp_i_llvm_fpga_pop_throttle_i1_throttle_pop_0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_backStall),
        .in_valid_in(SE_out_claswp_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0(STALLENABLE,301)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_backStall = i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32(STALLENABLE,273)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_storemerge72_lm4_claswp26(BITJOIN,231)
    assign bubble_join_i_llvm_fpga_mem_storemerge72_lm4_claswp26_q = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_storemerge72_lm4_claswp26(BITSELECT,232)
    assign bubble_select_i_llvm_fpga_mem_storemerge72_lm4_claswp26_b = $unsigned(bubble_join_i_llvm_fpga_mem_storemerge72_lm4_claswp26_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32(BLACKBOX,25)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i32_unnamed_15_claswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(bubble_select_i_llvm_fpga_mem_storemerge72_lm4_claswp26_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26(STALLENABLE,295)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_V0 = SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_wireValid = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_valid;

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i32_043_recast_x(CONSTANT,115)
    assign c_i32_043_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_mem_unnamed_claswp4_claswp7(BITJOIN,237)
    assign bubble_join_i_llvm_fpga_mem_unnamed_claswp4_claswp7_q = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7(BITSELECT,238)
    assign bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_claswp4_claswp7_q[31:0]);

    // i_unnamed_claswp13(LOGICAL,53)@34
    assign i_unnamed_claswp13_q = $unsigned(bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b != c_i32_043_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_claswp21(LOGICAL,55)@34
    assign i_unnamed_claswp21_q = i_unnamed_claswp13_q ^ VCC_q;

    // i_cmp_claswp11(COMPARE,19)@34
    assign i_cmp_claswp11_a = $unsigned({{2{c_i32_043_recast_x_q[31]}}, c_i32_043_recast_x_q});
    assign i_cmp_claswp11_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b[31]}}, bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b});
    assign i_cmp_claswp11_o = $unsigned($signed(i_cmp_claswp11_a) - $signed(i_cmp_claswp11_b));
    assign i_cmp_claswp11_c[0] = i_cmp_claswp11_o[33];

    // i_select96_claswp19(MUX,48)@34
    assign i_select96_claswp19_s = i_cmp_claswp11_c;
    always @(i_select96_claswp19_s or sel_for_coalesced_delay_0_c or sel_for_coalesced_delay_0_d)
    begin
        unique case (i_select96_claswp19_s)
            1'b0 : i_select96_claswp19_q = sel_for_coalesced_delay_0_c;
            1'b1 : i_select96_claswp19_q = sel_for_coalesced_delay_0_d;
            default : i_select96_claswp19_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_mem_storemerge72_lm4_claswp26(BLACKBOX,36)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_storemerge72_lm4_claswp_avm_address@20000000
    // out out_storemerge72_lm4_claswp_avm_burstcount@20000000
    // out out_storemerge72_lm4_claswp_avm_byteenable@20000000
    // out out_storemerge72_lm4_claswp_avm_enable@20000000
    // out out_storemerge72_lm4_claswp_avm_read@20000000
    // out out_storemerge72_lm4_claswp_avm_write@20000000
    // out out_storemerge72_lm4_claswp_avm_writedata@20000000
    claswp_i_llvm_fpga_mem_storemerge72_lm4_0 thei_llvm_fpga_mem_storemerge72_lm4_claswp26 (
        .in_flush(in_flush),
        .in_i_address(i_select96_claswp19_q),
        .in_i_predicate(i_unnamed_claswp21_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_storemerge72_lm4_claswp26_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V1),
        .in_storemerge72_lm4_claswp_avm_readdata(in_storemerge72_lm4_claswp_avm_readdata),
        .in_storemerge72_lm4_claswp_avm_readdatavalid(in_storemerge72_lm4_claswp_avm_readdatavalid),
        .in_storemerge72_lm4_claswp_avm_waitrequest(in_storemerge72_lm4_claswp_avm_waitrequest),
        .in_storemerge72_lm4_claswp_avm_writeack(in_storemerge72_lm4_claswp_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_valid),
        .out_storemerge72_lm4_claswp_avm_address(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_address),
        .out_storemerge72_lm4_claswp_avm_burstcount(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_burstcount),
        .out_storemerge72_lm4_claswp_avm_byteenable(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_byteenable),
        .out_storemerge72_lm4_claswp_avm_enable(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_enable),
        .out_storemerge72_lm4_claswp_avm_read(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_read),
        .out_storemerge72_lm4_claswp_avm_write(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_write),
        .out_storemerge72_lm4_claswp_avm_writedata(i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31(STALLENABLE,271)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_valid_out;

    // bubble_join_i_llvm_fpga_mem_storemerge1_lm3_claswp25(BITJOIN,228)
    assign bubble_join_i_llvm_fpga_mem_storemerge1_lm3_claswp25_q = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_storemerge1_lm3_claswp25(BITSELECT,229)
    assign bubble_select_i_llvm_fpga_mem_storemerge1_lm3_claswp25_b = $unsigned(bubble_join_i_llvm_fpga_mem_storemerge1_lm3_claswp25_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31(BLACKBOX,24)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i32_unnamed_14_claswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(bubble_select_i_llvm_fpga_mem_storemerge1_lm3_claswp25_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V0),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25(STALLENABLE,293)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V0 = SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_valid;

    // i_select92_claswp18(MUX,47)@34
    assign i_select92_claswp18_s = i_cmp_claswp11_c;
    always @(i_select92_claswp18_s or sel_for_coalesced_delay_0_d or sel_for_coalesced_delay_0_c)
    begin
        unique case (i_select92_claswp18_s)
            1'b0 : i_select92_claswp18_q = sel_for_coalesced_delay_0_d;
            1'b1 : i_select92_claswp18_q = sel_for_coalesced_delay_0_c;
            default : i_select92_claswp18_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_mem_storemerge1_lm3_claswp25(BLACKBOX,35)@34
    // in in_i_stall@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    // out out_storemerge1_lm3_claswp_avm_address@20000000
    // out out_storemerge1_lm3_claswp_avm_burstcount@20000000
    // out out_storemerge1_lm3_claswp_avm_byteenable@20000000
    // out out_storemerge1_lm3_claswp_avm_enable@20000000
    // out out_storemerge1_lm3_claswp_avm_read@20000000
    // out out_storemerge1_lm3_claswp_avm_write@20000000
    // out out_storemerge1_lm3_claswp_avm_writedata@20000000
    claswp_i_llvm_fpga_mem_storemerge1_lm3_0 thei_llvm_fpga_mem_storemerge1_lm3_claswp25 (
        .in_flush(in_flush),
        .in_i_address(i_select92_claswp18_q),
        .in_i_predicate(i_unnamed_claswp21_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V0),
        .in_storemerge1_lm3_claswp_avm_readdata(in_storemerge1_lm3_claswp_avm_readdata),
        .in_storemerge1_lm3_claswp_avm_readdatavalid(in_storemerge1_lm3_claswp_avm_readdatavalid),
        .in_storemerge1_lm3_claswp_avm_waitrequest(in_storemerge1_lm3_claswp_avm_waitrequest),
        .in_storemerge1_lm3_claswp_avm_writeack(in_storemerge1_lm3_claswp_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_valid),
        .out_storemerge1_lm3_claswp_avm_address(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_address),
        .out_storemerge1_lm3_claswp_avm_burstcount(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_burstcount),
        .out_storemerge1_lm3_claswp_avm_byteenable(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_byteenable),
        .out_storemerge1_lm3_claswp_avm_enable(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_enable),
        .out_storemerge1_lm3_claswp_avm_read(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_read),
        .out_storemerge1_lm3_claswp_avm_write(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_write),
        .out_storemerge1_lm3_claswp_avm_writedata(i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25(STALLENABLE,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg0 <= SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg1 <= SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed0 = (~ (i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_o_stall) & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid) | SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg0;
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed1 = (~ (i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_o_stall) & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid) | SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_StallValid = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid;
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_toReg0 = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_StallValid & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed0;
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_toReg1 = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_StallValid & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_or0 = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed0;
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireStall = ~ (SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_consumed1 & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_or0);
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V0 = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid & ~ (SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg0);
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_V1 = SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid & ~ (SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_and0 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_V3;
    assign SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_wireValid = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V3 & SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40(STALLENABLE,275)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_valid_out;

    // c_i32_3249(CONSTANT,8)
    assign c_i32_3249_q = $unsigned(32'b11111111111111111111111111100000);

    // bubble_join_i_llvm_fpga_mem_lm1165_claswp27(BITJOIN,225)
    assign bubble_join_i_llvm_fpga_mem_lm1165_claswp27_q = i_llvm_fpga_mem_lm1165_claswp27_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1165_claswp27(BITSELECT,226)
    assign bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1165_claswp27_q[31:0]);

    // i_sdiv_and_claswp35_vt_const_31(CONSTANT,44)
    assign i_sdiv_and_claswp35_vt_const_31_q = $unsigned(27'b000000000000000000000000000);

    // c_i32_3147(CONSTANT,7)
    assign c_i32_3147_q = $unsigned(32'b00000000000000000000000000011111);

    // xMSB_uid161_i_sdiv_mask_claswp0_shift_x(BITSELECT,160)@66
    assign xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b = $unsigned(bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b[31:31]);

    // seMsb_to16_uid182(BITSELECT,181)@66
    assign seMsb_to16_uid182_in = $unsigned({{15{xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b[0]}}, xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b});
    assign seMsb_to16_uid182_b = $unsigned(seMsb_to16_uid182_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid183_i_sdiv_mask_claswp0_shift_x(BITSELECT,182)@66
    assign rightShiftStage4Idx1Rng16_uid183_i_sdiv_mask_claswp0_shift_x_b = $unsigned(rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q[31:16]);

    // rightShiftStage4Idx1_uid184_i_sdiv_mask_claswp0_shift_x(BITJOIN,183)@66
    assign rightShiftStage4Idx1_uid184_i_sdiv_mask_claswp0_shift_x_q = {seMsb_to16_uid182_b, rightShiftStage4Idx1Rng16_uid183_i_sdiv_mask_claswp0_shift_x_b};

    // seMsb_to8_uid177(BITSELECT,176)@66
    assign seMsb_to8_uid177_in = $unsigned({{7{xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b[0]}}, xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b});
    assign seMsb_to8_uid177_b = $unsigned(seMsb_to8_uid177_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid178_i_sdiv_mask_claswp0_shift_x(BITSELECT,177)@66
    assign rightShiftStage3Idx1Rng8_uid178_i_sdiv_mask_claswp0_shift_x_b = $unsigned(rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q[31:8]);

    // rightShiftStage3Idx1_uid179_i_sdiv_mask_claswp0_shift_x(BITJOIN,178)@66
    assign rightShiftStage3Idx1_uid179_i_sdiv_mask_claswp0_shift_x_q = {seMsb_to8_uid177_b, rightShiftStage3Idx1Rng8_uid178_i_sdiv_mask_claswp0_shift_x_b};

    // seMsb_to4_uid172(BITSELECT,171)@66
    assign seMsb_to4_uid172_in = $unsigned({{3{xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b[0]}}, xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b});
    assign seMsb_to4_uid172_b = $unsigned(seMsb_to4_uid172_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid173_i_sdiv_mask_claswp0_shift_x(BITSELECT,172)@66
    assign rightShiftStage2Idx1Rng4_uid173_i_sdiv_mask_claswp0_shift_x_b = $unsigned(rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q[31:4]);

    // rightShiftStage2Idx1_uid174_i_sdiv_mask_claswp0_shift_x(BITJOIN,173)@66
    assign rightShiftStage2Idx1_uid174_i_sdiv_mask_claswp0_shift_x_q = {seMsb_to4_uid172_b, rightShiftStage2Idx1Rng4_uid173_i_sdiv_mask_claswp0_shift_x_b};

    // seMsb_to2_uid167(BITSELECT,166)@66
    assign seMsb_to2_uid167_in = $unsigned({{1{xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b[0]}}, xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b});
    assign seMsb_to2_uid167_b = $unsigned(seMsb_to2_uid167_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid168_i_sdiv_mask_claswp0_shift_x(BITSELECT,167)@66
    assign rightShiftStage1Idx1Rng2_uid168_i_sdiv_mask_claswp0_shift_x_b = $unsigned(rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q[31:2]);

    // rightShiftStage1Idx1_uid169_i_sdiv_mask_claswp0_shift_x(BITJOIN,168)@66
    assign rightShiftStage1Idx1_uid169_i_sdiv_mask_claswp0_shift_x_q = {seMsb_to2_uid167_b, rightShiftStage1Idx1Rng2_uid168_i_sdiv_mask_claswp0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid163_i_sdiv_mask_claswp0_shift_x(BITSELECT,162)@66
    assign rightShiftStage0Idx1Rng1_uid163_i_sdiv_mask_claswp0_shift_x_b = $unsigned(bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b[31:1]);

    // rightShiftStage0Idx1_uid164_i_sdiv_mask_claswp0_shift_x(BITJOIN,163)@66
    assign rightShiftStage0Idx1_uid164_i_sdiv_mask_claswp0_shift_x_q = {xMSB_uid161_i_sdiv_mask_claswp0_shift_x_b, rightShiftStage0Idx1Rng1_uid163_i_sdiv_mask_claswp0_shift_x_b};

    // rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x(MUX,165)@66
    assign rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_s or bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b or rightShiftStage0Idx1_uid164_i_sdiv_mask_claswp0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_s)
            1'b0 : rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q = bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b;
            1'b1 : rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage0Idx1_uid164_i_sdiv_mask_claswp0_shift_x_q;
            default : rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x(MUX,170)@66
    assign rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_s or rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q or rightShiftStage1Idx1_uid169_i_sdiv_mask_claswp0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_s)
            1'b0 : rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage0_uid166_i_sdiv_mask_claswp0_shift_x_q;
            1'b1 : rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage1Idx1_uid169_i_sdiv_mask_claswp0_shift_x_q;
            default : rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x(MUX,175)@66
    assign rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_s or rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q or rightShiftStage2Idx1_uid174_i_sdiv_mask_claswp0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_s)
            1'b0 : rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage1_uid171_i_sdiv_mask_claswp0_shift_x_q;
            1'b1 : rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage2Idx1_uid174_i_sdiv_mask_claswp0_shift_x_q;
            default : rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x(MUX,180)@66
    assign rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_s or rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q or rightShiftStage3Idx1_uid179_i_sdiv_mask_claswp0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_s)
            1'b0 : rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage2_uid176_i_sdiv_mask_claswp0_shift_x_q;
            1'b1 : rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage3Idx1_uid179_i_sdiv_mask_claswp0_shift_x_q;
            default : rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q = 32'b0;
        endcase
    end

    // rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x(MUX,185)@66
    assign rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_s or rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q or rightShiftStage4Idx1_uid184_i_sdiv_mask_claswp0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_s)
            1'b0 : rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage3_uid181_i_sdiv_mask_claswp0_shift_x_q;
            1'b1 : rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_q = rightShiftStage4Idx1_uid184_i_sdiv_mask_claswp0_shift_x_q;
            default : rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_q = 32'b0;
        endcase
    end

    // i_sdiv_and_claswp35(LOGICAL,43)@66
    assign i_sdiv_and_claswp35_q = rightShiftStage4_uid186_i_sdiv_mask_claswp0_shift_x_q & c_i32_3147_q;

    // i_sdiv_and_claswp35_vt_select_4(BITSELECT,46)@66
    assign i_sdiv_and_claswp35_vt_select_4_b = i_sdiv_and_claswp35_q[4:0];

    // i_sdiv_and_claswp35_vt_join(BITJOIN,45)@66
    assign i_sdiv_and_claswp35_vt_join_q = {i_sdiv_and_claswp35_vt_const_31_q, i_sdiv_and_claswp35_vt_select_4_b};

    // i_sdiv_add_claswp37(ADD,42)@66
    assign i_sdiv_add_claswp37_a = {1'b0, i_sdiv_and_claswp35_vt_join_q};
    assign i_sdiv_add_claswp37_b = {1'b0, bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b};
    assign i_sdiv_add_claswp37_o = $unsigned(i_sdiv_add_claswp37_a) + $unsigned(i_sdiv_add_claswp37_b);
    assign i_sdiv_add_claswp37_q = i_sdiv_add_claswp37_o[32:0];

    // bgTrunc_i_sdiv_add_claswp37_sel_x(BITSELECT,114)@66
    assign bgTrunc_i_sdiv_add_claswp37_sel_x_b = i_sdiv_add_claswp37_q[31:0];

    // i_shl_claswp39(LOGICAL,49)@66
    assign i_shl_claswp39_q = bgTrunc_i_sdiv_add_claswp37_sel_x_b & c_i32_3249_q;

    // i_shl_claswp39_vt_select_31(BITSELECT,52)@66
    assign i_shl_claswp39_vt_select_31_b = i_shl_claswp39_q[31:5];

    // i_shl_claswp39_vt_const_4(CONSTANT,50)
    assign i_shl_claswp39_vt_const_4_q = $unsigned(5'b00000);

    // i_shl_claswp39_vt_join(BITJOIN,51)@66
    assign i_shl_claswp39_vt_join_q = {i_shl_claswp39_vt_select_31_b, i_shl_claswp39_vt_const_4_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40(BLACKBOX,26)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i32_unnamed_17_claswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(i_shl_claswp39_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm1165_claswp27_V1),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38(STALLENABLE,265)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_valid_out;

    // i_off_claswp34(ADD,41)@66
    assign i_off_claswp34_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm1165_claswp27_b};
    assign i_off_claswp34_b = {1'b0, c_i32_3147_q};
    assign i_off_claswp34_o = $unsigned(i_off_claswp34_a) + $unsigned(i_off_claswp34_b);
    assign i_off_claswp34_q = i_off_claswp34_o[32:0];

    // bgTrunc_i_off_claswp34_sel_x(BITSELECT,113)@66
    assign bgTrunc_i_off_claswp34_sel_x_b = i_off_claswp34_q[31:0];

    // c_i32_6248(CONSTANT,9)
    assign c_i32_6248_q = $unsigned(32'b00000000000000000000000000111110);

    // i_unnamed_claswp36(COMPARE,56)@66
    assign i_unnamed_claswp36_a = {2'b00, c_i32_6248_q};
    assign i_unnamed_claswp36_b = {2'b00, bgTrunc_i_off_claswp34_sel_x_b};
    assign i_unnamed_claswp36_o = $unsigned(i_unnamed_claswp36_a) - $unsigned(i_unnamed_claswp36_b);
    assign i_unnamed_claswp36_c[0] = i_unnamed_claswp36_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38(BLACKBOX,21)@66
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i1_unnamed_16_claswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_unnamed_claswp36_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm1165_claswp27_V0),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm1165_claswp27(STALLENABLE,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1165_claswp27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1165_claswp27_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed0 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_stall_out) & SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid) | SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_stall_out) & SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid) | SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_StallValid = SE_out_i_llvm_fpga_mem_lm1165_claswp27_backStall & SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_toReg0 = SE_out_i_llvm_fpga_mem_lm1165_claswp27_StallValid & SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_toReg1 = SE_out_i_llvm_fpga_mem_lm1165_claswp27_StallValid & SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_or0 = SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1165_claswp27_consumed1 & SE_out_i_llvm_fpga_mem_lm1165_claswp27_or0);
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_backStall = SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_V0 = SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_V1 = SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1165_claswp27_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1165_claswp27_wireValid = i_llvm_fpga_mem_lm1165_claswp27_out_o_valid;

    // i_llvm_fpga_mem_lm1165_claswp27(BLACKBOX,34)@34
    // in in_i_stall@20000000
    // out out_lm1165_claswp_avm_address@20000000
    // out out_lm1165_claswp_avm_burstcount@20000000
    // out out_lm1165_claswp_avm_byteenable@20000000
    // out out_lm1165_claswp_avm_enable@20000000
    // out out_lm1165_claswp_avm_read@20000000
    // out out_lm1165_claswp_avm_write@20000000
    // out out_lm1165_claswp_avm_writedata@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    claswp_i_llvm_fpga_mem_lm1165_0 thei_llvm_fpga_mem_lm1165_claswp27 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(i_unnamed_claswp21_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1165_claswp27_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1021_claswp24_V2),
        .in_lm1165_claswp_avm_readdata(in_lm1165_claswp_avm_readdata),
        .in_lm1165_claswp_avm_readdatavalid(in_lm1165_claswp_avm_readdatavalid),
        .in_lm1165_claswp_avm_waitrequest(in_lm1165_claswp_avm_waitrequest),
        .in_lm1165_claswp_avm_writeack(in_lm1165_claswp_avm_writeack),
        .out_lm1165_claswp_avm_address(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_address),
        .out_lm1165_claswp_avm_burstcount(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_burstcount),
        .out_lm1165_claswp_avm_byteenable(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_byteenable),
        .out_lm1165_claswp_avm_enable(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_enable),
        .out_lm1165_claswp_avm_read(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_read),
        .out_lm1165_claswp_avm_write(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_write),
        .out_lm1165_claswp_avm_writedata(i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1165_claswp27_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1165_claswp27_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1165_claswp27_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3(STALLENABLE,279)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_valid_out;

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3(BLACKBOX,28)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_0_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_p1024i32_unnamed_1_claswp0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(sel_for_coalesced_delay_0_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_intel_reserved_ffwd_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,360)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_backStall) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = coalesced_delay_0_fifo_valid_out;

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28(STALLENABLE,263)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_valid_out;

    // i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28(BLACKBOX,20)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i1_unnamed_10_claswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_unnamed_claswp21_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V5),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_i_unnamed_claswp13_q_36_fifo(STALLENABLE,350)
    // Valid signal propagation
    assign SE_out_redist3_i_unnamed_claswp13_q_36_fifo_V0 = SE_out_redist3_i_unnamed_claswp13_q_36_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_unnamed_claswp13_q_36_fifo_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_stall_out | ~ (SE_out_redist3_i_unnamed_claswp13_q_36_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_unnamed_claswp13_q_36_fifo_wireValid = redist3_i_unnamed_claswp13_q_36_fifo_valid_out;

    // redist3_i_unnamed_claswp13_q_36_fifo(STALLFIFO,197)
    assign redist3_i_unnamed_claswp13_q_36_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V4;
    assign redist3_i_unnamed_claswp13_q_36_fifo_stall_in = SE_out_redist3_i_unnamed_claswp13_q_36_fifo_backStall;
    assign redist3_i_unnamed_claswp13_q_36_fifo_data_in = i_unnamed_claswp13_q;
    assign redist3_i_unnamed_claswp13_q_36_fifo_valid_in_bitsignaltemp = redist3_i_unnamed_claswp13_q_36_fifo_valid_in[0];
    assign redist3_i_unnamed_claswp13_q_36_fifo_stall_in_bitsignaltemp = redist3_i_unnamed_claswp13_q_36_fifo_stall_in[0];
    assign redist3_i_unnamed_claswp13_q_36_fifo_valid_out[0] = redist3_i_unnamed_claswp13_q_36_fifo_valid_out_bitsignaltemp;
    assign redist3_i_unnamed_claswp13_q_36_fifo_stall_out[0] = redist3_i_unnamed_claswp13_q_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_unnamed_claswp13_q_36_fifo (
        .valid_in(redist3_i_unnamed_claswp13_q_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_unnamed_claswp13_q_36_fifo_stall_in_bitsignaltemp),
        .data_in(i_unnamed_claswp13_q),
        .valid_out(redist3_i_unnamed_claswp13_q_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_unnamed_claswp13_q_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_unnamed_claswp13_q_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7(STALLENABLE,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg2 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg3 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg4 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg2 <= SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg3 <= SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg4 <= SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg5 <= SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed0 = (~ (redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_backStall) & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg1;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed2 = (~ (redist5_i_cmp_claswp11_c_32_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg2;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed3 = (~ (SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall) & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg3;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed4 = (~ (redist3_i_unnamed_claswp13_q_36_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg4;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed5 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_backStall & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed1;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg2 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed2;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg3 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed3;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg4 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed4;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_toReg5 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_StallValid & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or0 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or1 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or0;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or2 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed2 & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or1;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or3 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed3 & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or2;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or4 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed4 & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or3;
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_consumed5 & SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_or4);
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_backStall = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V0 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V1 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg1);
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V2 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg2);
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V3 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg3);
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V4 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg4);
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V5 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_wireValid = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_valid;

    // SE_in_i_llvm_fpga_mem_lm1021_claswp24(STALLENABLE,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg0 <= '0;
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg1 <= '0;
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg2 <= '0;
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg0 <= SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg1 <= SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg1;
            // Successor 2
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg2 <= SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg2;
            // Successor 3
            SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg3 <= SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg3;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed0 = (~ (i_llvm_fpga_mem_lm1021_claswp24_out_o_stall) & SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid) | SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg0;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed1 = (~ (i_llvm_fpga_mem_lm1052_claswp23_out_o_stall) & SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid) | SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg1;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed2 = (~ (i_llvm_fpga_mem_lm1165_claswp27_out_o_stall) & SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid) | SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg2;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed3 = (~ (SE_in_i_llvm_fpga_mem_storemerge1_lm3_claswp25_backStall) & SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid) | SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg3;
    // Consuming
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_StallValid = SE_in_i_llvm_fpga_mem_lm1021_claswp24_backStall & SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg0 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_StallValid & SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg1 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_StallValid & SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed1;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg2 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_StallValid & SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed2;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_toReg3 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_StallValid & SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed3;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_or0 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed0;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_or1 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed1 & SE_in_i_llvm_fpga_mem_lm1021_claswp24_or0;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_or2 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed2 & SE_in_i_llvm_fpga_mem_lm1021_claswp24_or1;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireStall = ~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_consumed3 & SE_in_i_llvm_fpga_mem_lm1021_claswp24_or2);
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_backStall = SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_V0 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg0);
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_V1 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg1);
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_V2 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg2);
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_V3 = SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid & ~ (SE_in_i_llvm_fpga_mem_lm1021_claswp24_fromReg3);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_and0 = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V1;
    assign SE_in_i_llvm_fpga_mem_lm1021_claswp24_wireValid = SE_out_coalesced_delay_0_fifo_V0 & SE_in_i_llvm_fpga_mem_lm1021_claswp24_and0;

    // i_not_cmp_claswp17(LOGICAL,40)@34
    assign i_not_cmp_claswp17_q = i_cmp_claswp11_c ^ VCC_q;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,257)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,258)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[191:0]);

    // sel_for_coalesced_delay_0(BITSELECT,196)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[127:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[191:128]);

    // i_llvm_fpga_mem_lm1021_claswp24(BLACKBOX,32)@34
    // in in_i_stall@20000000
    // out out_lm1021_claswp_avm_address@20000000
    // out out_lm1021_claswp_avm_burstcount@20000000
    // out out_lm1021_claswp_avm_byteenable@20000000
    // out out_lm1021_claswp_avm_enable@20000000
    // out out_lm1021_claswp_avm_read@20000000
    // out out_lm1021_claswp_avm_write@20000000
    // out out_lm1021_claswp_avm_writedata@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    claswp_i_llvm_fpga_mem_lm1021_0 thei_llvm_fpga_mem_lm1021_claswp24 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_c),
        .in_i_predicate(i_not_cmp_claswp17_q),
        .in_i_stall(SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1021_claswp24_V0),
        .in_lm1021_claswp_avm_readdata(in_lm1021_claswp_avm_readdata),
        .in_lm1021_claswp_avm_readdatavalid(in_lm1021_claswp_avm_readdatavalid),
        .in_lm1021_claswp_avm_waitrequest(in_lm1021_claswp_avm_waitrequest),
        .in_lm1021_claswp_avm_writeack(in_lm1021_claswp_avm_writeack),
        .out_lm1021_claswp_avm_address(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_address),
        .out_lm1021_claswp_avm_burstcount(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_burstcount),
        .out_lm1021_claswp_avm_byteenable(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_byteenable),
        .out_lm1021_claswp_avm_enable(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_enable),
        .out_lm1021_claswp_avm_read(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_read),
        .out_lm1021_claswp_avm_write(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_write),
        .out_lm1021_claswp_avm_writedata(i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1021_claswp24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1021_claswp24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1021_claswp24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_144_recast_x(CONSTANT,116)
    assign c_i32_144_recast_x_q = $unsigned(32'b11111111111111111111111111111111);

    // i_unnamed_claswp15(COMPARE,54)@34
    assign i_unnamed_claswp15_a = $unsigned({{2{c_i32_144_recast_x_q[31]}}, c_i32_144_recast_x_q});
    assign i_unnamed_claswp15_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b[31]}}, bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b});
    assign i_unnamed_claswp15_o = $unsigned($signed(i_unnamed_claswp15_a) - $signed(i_unnamed_claswp15_b));
    assign i_unnamed_claswp15_c[0] = i_unnamed_claswp15_o[33];

    // i_llvm_fpga_mem_lm1052_claswp23(BLACKBOX,33)@34
    // in in_i_stall@20000000
    // out out_lm1052_claswp_avm_address@20000000
    // out out_lm1052_claswp_avm_burstcount@20000000
    // out out_lm1052_claswp_avm_byteenable@20000000
    // out out_lm1052_claswp_avm_enable@20000000
    // out out_lm1052_claswp_avm_read@20000000
    // out out_lm1052_claswp_avm_write@20000000
    // out out_lm1052_claswp_avm_writedata@20000000
    // out out_o_readdata@66
    // out out_o_stall@20000000
    // out out_o_valid@66
    claswp_i_llvm_fpga_mem_lm1052_0 thei_llvm_fpga_mem_lm1052_claswp23 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_d),
        .in_i_predicate(i_unnamed_claswp15_c),
        .in_i_stall(SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm1021_claswp24_V1),
        .in_lm1052_claswp_avm_readdata(in_lm1052_claswp_avm_readdata),
        .in_lm1052_claswp_avm_readdatavalid(in_lm1052_claswp_avm_readdatavalid),
        .in_lm1052_claswp_avm_waitrequest(in_lm1052_claswp_avm_waitrequest),
        .in_lm1052_claswp_avm_writeack(in_lm1052_claswp_avm_writeack),
        .out_lm1052_claswp_avm_address(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_address),
        .out_lm1052_claswp_avm_burstcount(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_burstcount),
        .out_lm1052_claswp_avm_byteenable(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_byteenable),
        .out_lm1052_claswp_avm_enable(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_enable),
        .out_lm1052_claswp_avm_read(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_read),
        .out_lm1052_claswp_avm_write(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_write),
        .out_lm1052_claswp_avm_writedata(i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1052_claswp23_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1052_claswp23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1052_claswp23_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo(STALLFIFO,198)
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V0;
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_in = SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_backStall;
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_data_in = bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b;
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_in_bitsignaltemp = redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_in[0];
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_in_bitsignaltemp = redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_in[0];
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_out[0] = redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_out_bitsignaltemp;
    assign redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_out[0] = redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo (
        .valid_in(redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_unnamed_claswp4_claswp7_b),
        .valid_out(redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo(STALLENABLE,352)
    // Valid signal propagation
    assign SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_V0 = SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_backStall = i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_o_stall | ~ (SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and0 = redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_valid_out;
    assign SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and1 = i_llvm_fpga_mem_lm1052_claswp23_out_o_valid & SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and0;
    assign SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and2 = i_llvm_fpga_mem_lm1021_claswp24_out_o_valid & SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and1;
    assign SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_wireValid = SE_out_redist5_i_cmp_claswp11_c_32_fifo_V0 & SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_and2;

    // redist5_i_cmp_claswp11_c_32_fifo(STALLFIFO,199)
    assign redist5_i_cmp_claswp11_c_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_V2;
    assign redist5_i_cmp_claswp11_c_32_fifo_stall_in = SE_out_redist5_i_cmp_claswp11_c_32_fifo_backStall;
    assign redist5_i_cmp_claswp11_c_32_fifo_data_in = i_cmp_claswp11_c;
    assign redist5_i_cmp_claswp11_c_32_fifo_valid_in_bitsignaltemp = redist5_i_cmp_claswp11_c_32_fifo_valid_in[0];
    assign redist5_i_cmp_claswp11_c_32_fifo_stall_in_bitsignaltemp = redist5_i_cmp_claswp11_c_32_fifo_stall_in[0];
    assign redist5_i_cmp_claswp11_c_32_fifo_valid_out[0] = redist5_i_cmp_claswp11_c_32_fifo_valid_out_bitsignaltemp;
    assign redist5_i_cmp_claswp11_c_32_fifo_stall_out[0] = redist5_i_cmp_claswp11_c_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist5_i_cmp_claswp11_c_32_fifo (
        .valid_in(redist5_i_cmp_claswp11_c_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_cmp_claswp11_c_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp_claswp11_c),
        .valid_out(redist5_i_cmp_claswp11_c_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_cmp_claswp11_c_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_cmp_claswp11_c_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_cmp_claswp11_c_32_fifo(STALLENABLE,354)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg0 <= '0;
            SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg0 <= SE_out_redist5_i_cmp_claswp11_c_32_fifo_toReg0;
            // Successor 1
            SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg1 <= SE_out_redist5_i_cmp_claswp11_c_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed0 = (~ (SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_backStall) & SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid) | SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg0;
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed1 = (~ (SE_redist6_i_cmp_claswp11_c_36_0_backStall) & SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid) | SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_StallValid = SE_out_redist5_i_cmp_claswp11_c_32_fifo_backStall & SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid;
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_toReg0 = SE_out_redist5_i_cmp_claswp11_c_32_fifo_StallValid & SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed0;
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_toReg1 = SE_out_redist5_i_cmp_claswp11_c_32_fifo_StallValid & SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_or0 = SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed0;
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireStall = ~ (SE_out_redist5_i_cmp_claswp11_c_32_fifo_consumed1 & SE_out_redist5_i_cmp_claswp11_c_32_fifo_or0);
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_backStall = SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_V0 = SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid & ~ (SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg0);
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_V1 = SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid & ~ (SE_out_redist5_i_cmp_claswp11_c_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_cmp_claswp11_c_32_fifo_wireValid = redist5_i_cmp_claswp11_c_32_fifo_valid_out;

    // SE_redist6_i_cmp_claswp11_c_36_0(STALLENABLE,355)
    // Valid signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_0_V0 = SE_redist6_i_cmp_claswp11_c_36_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_0_s_tv_0 = SE_redist6_i_cmp_claswp11_c_36_1_backStall & SE_redist6_i_cmp_claswp11_c_36_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_cmp_claswp11_c_36_0_backEN = ~ (SE_redist6_i_cmp_claswp11_c_36_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_cmp_claswp11_c_36_0_v_s_0 = SE_redist6_i_cmp_claswp11_c_36_0_backEN & SE_out_redist5_i_cmp_claswp11_c_32_fifo_V1;
    // Backward Stall generation
    assign SE_redist6_i_cmp_claswp11_c_36_0_backStall = ~ (SE_redist6_i_cmp_claswp11_c_36_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_cmp_claswp11_c_36_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_cmp_claswp11_c_36_0_backEN == 1'b0)
            begin
                SE_redist6_i_cmp_claswp11_c_36_0_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_0_R_v_0 & SE_redist6_i_cmp_claswp11_c_36_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_cmp_claswp11_c_36_0_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_0_v_s_0;
            end

        end
    end

    // SE_redist6_i_cmp_claswp11_c_36_1(STALLENABLE,356)
    // Valid signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_1_V0 = SE_redist6_i_cmp_claswp11_c_36_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_1_s_tv_0 = SE_redist6_i_cmp_claswp11_c_36_2_backStall & SE_redist6_i_cmp_claswp11_c_36_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_cmp_claswp11_c_36_1_backEN = ~ (SE_redist6_i_cmp_claswp11_c_36_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_cmp_claswp11_c_36_1_v_s_0 = SE_redist6_i_cmp_claswp11_c_36_1_backEN & SE_redist6_i_cmp_claswp11_c_36_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_cmp_claswp11_c_36_1_backStall = ~ (SE_redist6_i_cmp_claswp11_c_36_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_cmp_claswp11_c_36_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_cmp_claswp11_c_36_1_backEN == 1'b0)
            begin
                SE_redist6_i_cmp_claswp11_c_36_1_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_1_R_v_0 & SE_redist6_i_cmp_claswp11_c_36_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_cmp_claswp11_c_36_1_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_1_v_s_0;
            end

        end
    end

    // SE_redist6_i_cmp_claswp11_c_36_2(STALLENABLE,357)
    // Valid signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_2_V0 = SE_redist6_i_cmp_claswp11_c_36_2_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_2_s_tv_0 = SE_redist6_i_cmp_claswp11_c_36_3_backStall & SE_redist6_i_cmp_claswp11_c_36_2_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_cmp_claswp11_c_36_2_backEN = ~ (SE_redist6_i_cmp_claswp11_c_36_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_cmp_claswp11_c_36_2_v_s_0 = SE_redist6_i_cmp_claswp11_c_36_2_backEN & SE_redist6_i_cmp_claswp11_c_36_1_V0;
    // Backward Stall generation
    assign SE_redist6_i_cmp_claswp11_c_36_2_backStall = ~ (SE_redist6_i_cmp_claswp11_c_36_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_cmp_claswp11_c_36_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_cmp_claswp11_c_36_2_backEN == 1'b0)
            begin
                SE_redist6_i_cmp_claswp11_c_36_2_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_2_R_v_0 & SE_redist6_i_cmp_claswp11_c_36_2_s_tv_0;
            end
            else
            begin
                SE_redist6_i_cmp_claswp11_c_36_2_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_2_v_s_0;
            end

        end
    end

    // SE_redist6_i_cmp_claswp11_c_36_3(STALLENABLE,358)
    // Valid signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_3_V0 = SE_redist6_i_cmp_claswp11_c_36_3_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_cmp_claswp11_c_36_3_s_tv_0 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_stall_out & SE_redist6_i_cmp_claswp11_c_36_3_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_cmp_claswp11_c_36_3_backEN = ~ (SE_redist6_i_cmp_claswp11_c_36_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_cmp_claswp11_c_36_3_v_s_0 = SE_redist6_i_cmp_claswp11_c_36_3_backEN & SE_redist6_i_cmp_claswp11_c_36_2_V0;
    // Backward Stall generation
    assign SE_redist6_i_cmp_claswp11_c_36_3_backStall = ~ (SE_redist6_i_cmp_claswp11_c_36_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_cmp_claswp11_c_36_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_cmp_claswp11_c_36_3_backEN == 1'b0)
            begin
                SE_redist6_i_cmp_claswp11_c_36_3_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_3_R_v_0 & SE_redist6_i_cmp_claswp11_c_36_3_s_tv_0;
            end
            else
            begin
                SE_redist6_i_cmp_claswp11_c_36_3_R_v_0 <= SE_redist6_i_cmp_claswp11_c_36_3_v_s_0;
            end

        end
    end

    // bubble_join_redist5_i_cmp_claswp11_c_32_fifo(BITJOIN,254)
    assign bubble_join_redist5_i_cmp_claswp11_c_32_fifo_q = redist5_i_cmp_claswp11_c_32_fifo_data_out;

    // bubble_select_redist5_i_cmp_claswp11_c_32_fifo(BITSELECT,255)
    assign bubble_select_redist5_i_cmp_claswp11_c_32_fifo_b = $unsigned(bubble_join_redist5_i_cmp_claswp11_c_32_fifo_q[0:0]);

    // redist6_i_cmp_claswp11_c_36_0(REG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_cmp_claswp11_c_36_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_cmp_claswp11_c_36_0_backEN == 1'b1)
        begin
            redist6_i_cmp_claswp11_c_36_0_q <= $unsigned(bubble_select_redist5_i_cmp_claswp11_c_32_fifo_b);
        end
    end

    // redist6_i_cmp_claswp11_c_36_1(REG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_cmp_claswp11_c_36_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_cmp_claswp11_c_36_1_backEN == 1'b1)
        begin
            redist6_i_cmp_claswp11_c_36_1_q <= $unsigned(redist6_i_cmp_claswp11_c_36_0_q);
        end
    end

    // redist6_i_cmp_claswp11_c_36_2(REG,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_cmp_claswp11_c_36_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_cmp_claswp11_c_36_2_backEN == 1'b1)
        begin
            redist6_i_cmp_claswp11_c_36_2_q <= $unsigned(redist6_i_cmp_claswp11_c_36_1_q);
        end
    end

    // redist6_i_cmp_claswp11_c_36_3(REG,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_cmp_claswp11_c_36_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_cmp_claswp11_c_36_3_backEN == 1'b1)
        begin
            redist6_i_cmp_claswp11_c_36_3_q <= $unsigned(redist6_i_cmp_claswp11_c_36_2_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20(BLACKBOX,22)@70
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i1_unnamed_8_claswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist6_i_cmp_claswp11_c_36_3_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall),
        .in_valid_in(SE_redist6_i_cmp_claswp11_c_36_3_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist3_i_unnamed_claswp13_q_36_fifo(BITJOIN,248)
    assign bubble_join_redist3_i_unnamed_claswp13_q_36_fifo_q = redist3_i_unnamed_claswp13_q_36_fifo_data_out;

    // bubble_select_redist3_i_unnamed_claswp13_q_36_fifo(BITSELECT,249)
    assign bubble_select_redist3_i_unnamed_claswp13_q_36_fifo_b = $unsigned(bubble_join_redist3_i_unnamed_claswp13_q_36_fifo_q[0:0]);

    // i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22(BLACKBOX,23)@70
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i1_unnamed_9_claswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bubble_select_redist3_i_unnamed_claswp13_q_36_fifo_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall),
        .in_valid_in(SE_out_redist3_i_unnamed_claswp13_q_36_fifo_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm1021_claswp24(BITJOIN,219)
    assign bubble_join_i_llvm_fpga_mem_lm1021_claswp24_q = i_llvm_fpga_mem_lm1021_claswp24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1021_claswp24(BITSELECT,220)
    assign bubble_select_i_llvm_fpga_mem_lm1021_claswp24_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1021_claswp24_q[31:0]);

    // bubble_join_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo(BITJOIN,251)
    assign bubble_join_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_q = redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_data_out;

    // bubble_select_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo(BITSELECT,252)
    assign bubble_select_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_b = $unsigned(bubble_join_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm1052_claswp23(BITJOIN,222)
    assign bubble_join_i_llvm_fpga_mem_lm1052_claswp23_q = i_llvm_fpga_mem_lm1052_claswp23_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1052_claswp23(BITSELECT,223)
    assign bubble_select_i_llvm_fpga_mem_lm1052_claswp23_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1052_claswp23_q[31:0]);

    // i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x(BLACKBOX,156)@66
    // in in_i_stall@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@70
    // out out_c0_exit_0_tpl@70
    claswp_i_sfc_s_c0_in_wt_entry_s_c0_enter9_claswp30 thei_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x (
        .in_i_stall(SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall),
        .in_i_valid(SE_out_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_V0),
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_i_llvm_fpga_mem_lm1052_claswp23_b),
        .in_c0_eni4_2_tpl(bubble_select_redist4_i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata_32_fifo_b),
        .in_c0_eni4_3_tpl(bubble_select_redist5_i_cmp_claswp11_c_32_fifo_b),
        .in_c0_eni4_4_tpl(bubble_select_i_llvm_fpga_mem_lm1021_claswp24_b),
        .out_intel_reserved_ffwd_7_0(i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_intel_reserved_ffwd_7_0),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_o_valid),
        .out_c0_exit_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg(STALLFIFO,443)
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg(STALLFIFO,444)
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg(STALLFIFO,445)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg(STALLFIFO,446)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg(STALLFIFO,447)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(5),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5(STALLENABLE,297)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_V0 = SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_wireValid = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_claswp3_claswp5(BITJOIN,234)
    assign bubble_join_i_llvm_fpga_mem_unnamed_claswp3_claswp5_q = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_claswp3_claswp5(BITSELECT,235)
    assign bubble_select_i_llvm_fpga_mem_unnamed_claswp3_claswp5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_claswp3_claswp5_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9(BLACKBOX,27)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_i32_unnamed_6_claswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bubble_select_i_llvm_fpga_mem_unnamed_claswp3_claswp5_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9(STALLENABLE,277)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg(STALLFIFO,448)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg(STALLFIFO,449)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8(STALLENABLE,281)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg(STALLFIFO,450)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4(STALLENABLE,285)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_wireValid = i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg(STALLFIFO,452)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1(STALLENABLE,386)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and6 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and7 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and8 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and7;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and9 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and8;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and10 = i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_o_valid & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and9;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and11 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and10;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_and11;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg(STALLFIFO,451)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(69),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10(STALLENABLE,283)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_valid_out;

    // i_incdec_ptr_claswp0_c_i64_41_x(CONSTANT,145)
    assign i_incdec_ptr_claswp0_c_i64_41_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x(BITJOIN,244)
    assign bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q = {i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_6_tpl, i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_5_tpl, i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x(BITSELECT,245)
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[191:128]);
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[255:192]);
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[319:256]);
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_g = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[383:320]);
    assign bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_h = $unsigned(bubble_join_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_q[447:384]);

    // i_incdec_ptr_claswp0_sub_x(SUB,146)@2
    assign i_incdec_ptr_claswp0_sub_x_a = {1'b0, bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_g};
    assign i_incdec_ptr_claswp0_sub_x_b = {1'b0, i_incdec_ptr_claswp0_c_i64_41_x_q};
    assign i_incdec_ptr_claswp0_sub_x_o = $unsigned(i_incdec_ptr_claswp0_sub_x_a) - $unsigned(i_incdec_ptr_claswp0_sub_x_b);
    assign i_incdec_ptr_claswp0_sub_x_q = i_incdec_ptr_claswp0_sub_x_o[64:0];

    // i_incdec_ptr_claswp0_trunc_sel_x(BITSELECT,148)@2
    assign i_incdec_ptr_claswp0_trunc_sel_x_b = $unsigned(i_incdec_ptr_claswp0_sub_x_q[63:0]);

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10(BLACKBOX,30)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_p1024i32_unnamed_7_claswp0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_incdec_ptr_claswp0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V5),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,195)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_f, bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_e, bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,204)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(192),
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

    // i_llvm_fpga_mem_unnamed_claswp4_claswp7(BLACKBOX,38)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_claswp4_claswp_avm_address@20000000
    // out out_unnamed_claswp4_claswp_avm_burstcount@20000000
    // out out_unnamed_claswp4_claswp_avm_byteenable@20000000
    // out out_unnamed_claswp4_claswp_avm_enable@20000000
    // out out_unnamed_claswp4_claswp_avm_read@20000000
    // out out_unnamed_claswp4_claswp_avm_write@20000000
    // out out_unnamed_claswp4_claswp_avm_writedata@20000000
    claswp_i_llvm_fpga_mem_unnamed_4_claswp0 thei_llvm_fpga_mem_unnamed_claswp4_claswp7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_h),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_claswp4_claswp7_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V3),
        .in_unnamed_claswp4_claswp_avm_readdata(in_unnamed_claswp4_claswp_avm_readdata),
        .in_unnamed_claswp4_claswp_avm_readdatavalid(in_unnamed_claswp4_claswp_avm_readdatavalid),
        .in_unnamed_claswp4_claswp_avm_waitrequest(in_unnamed_claswp4_claswp_avm_waitrequest),
        .in_unnamed_claswp4_claswp_avm_writeack(in_unnamed_claswp4_claswp_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_valid),
        .out_unnamed_claswp4_claswp_avm_address(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_address),
        .out_unnamed_claswp4_claswp_avm_burstcount(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_burstcount),
        .out_unnamed_claswp4_claswp_avm_byteenable(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_byteenable),
        .out_unnamed_claswp4_claswp_avm_enable(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_enable),
        .out_unnamed_claswp4_claswp_avm_read(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_read),
        .out_unnamed_claswp4_claswp_avm_write(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_write),
        .out_unnamed_claswp4_claswp_avm_writedata(i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_claswp3_claswp5(BLACKBOX,37)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_claswp3_claswp_avm_address@20000000
    // out out_unnamed_claswp3_claswp_avm_burstcount@20000000
    // out out_unnamed_claswp3_claswp_avm_byteenable@20000000
    // out out_unnamed_claswp3_claswp_avm_enable@20000000
    // out out_unnamed_claswp3_claswp_avm_read@20000000
    // out out_unnamed_claswp3_claswp_avm_write@20000000
    // out out_unnamed_claswp3_claswp_avm_writedata@20000000
    claswp_i_llvm_fpga_mem_unnamed_3_claswp0 thei_llvm_fpga_mem_unnamed_claswp3_claswp5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_d),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_claswp3_claswp5_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V2),
        .in_unnamed_claswp3_claswp_avm_readdata(in_unnamed_claswp3_claswp_avm_readdata),
        .in_unnamed_claswp3_claswp_avm_readdatavalid(in_unnamed_claswp3_claswp_avm_readdatavalid),
        .in_unnamed_claswp3_claswp_avm_waitrequest(in_unnamed_claswp3_claswp_avm_waitrequest),
        .in_unnamed_claswp3_claswp_avm_writeack(in_unnamed_claswp3_claswp_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_valid),
        .out_unnamed_claswp3_claswp_avm_address(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_address),
        .out_unnamed_claswp3_claswp_avm_burstcount(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_burstcount),
        .out_unnamed_claswp3_claswp_avm_byteenable(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_byteenable),
        .out_unnamed_claswp3_claswp_avm_enable(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_enable),
        .out_unnamed_claswp3_claswp_avm_read(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_read),
        .out_unnamed_claswp3_claswp_avm_write(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_write),
        .out_unnamed_claswp3_claswp_avm_writedata(i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4(BLACKBOX,31)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_p1024s_stA000000Z_s_unnamed_2_claswp0 thei_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V1),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    claswp_i_llvm_fpga_ffwd_source_p1024i32_unnamed_5_claswp0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(bubble_select_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_h),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x(STALLENABLE,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg4 <= '0;
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg5 <= SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_stall_out) & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_stall_out) & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_o_stall) & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed3 = (~ (i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_o_stall) & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg4;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_stall_out) & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid) | SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_backStall & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg0 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg1 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg2 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg3 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg4 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed4;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_toReg5 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_StallValid & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or0 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or1 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed1 & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or2 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed2 & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or3 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed3 & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or4 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed4 & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or3;
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_consumed5 & SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_or4);
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_backStall = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V0 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V1 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V2 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V3 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V4 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg4);
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_V5 = SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_wireValid = i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0(BITJOIN,240)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0(BITSELECT,241)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_q[0:0]);

    // i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x(BLACKBOX,149)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_claswp_o_fifoready@20000000
    // out out_o_stall@20000000
    claswp_i_iord_bl_call_unnamed_claswp0_claswp0 thei_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_b),
        .in_i_stall(SE_out_i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_V0),
        .in_iord_bl_call_claswp_i_fifodata(in_iord_bl_call_claswp_i_fifodata),
        .in_iord_bl_call_claswp_i_fifovalid(in_iord_bl_call_claswp_i_fifovalid),
        .out_iord_bl_call_claswp_o_fifoready(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_iord_bl_call_claswp_o_fifoready),
        .out_o_stall(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_iord_bl_call_claswp_o_fifoready = i_iord_bl_call_claswp_unnamed_claswp0_claswp1_aunroll_x_out_iord_bl_call_claswp_o_fifoready;

    // feedback_stall_out_1_sync(GPOUT,17)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_claswp0_out_feedback_stall_out_1;

    // regfree_osync(GPOUT,107)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp1_claswp3_out_intel_reserved_ffwd_0_0;

    // sync_out(GPOUT,111)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,118)
    assign out_unnamed_claswp3_claswp_avm_address = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_address;
    assign out_unnamed_claswp3_claswp_avm_enable = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_enable;
    assign out_unnamed_claswp3_claswp_avm_read = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_read;
    assign out_unnamed_claswp3_claswp_avm_write = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_write;
    assign out_unnamed_claswp3_claswp_avm_writedata = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_writedata;
    assign out_unnamed_claswp3_claswp_avm_byteenable = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_byteenable;
    assign out_unnamed_claswp3_claswp_avm_burstcount = i_llvm_fpga_mem_unnamed_claswp3_claswp5_out_unnamed_claswp3_claswp_avm_burstcount;

    // dupName_0_regfree_osync_x(GPOUT,119)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_claswp15_claswp32_out_intel_reserved_ffwd_10_0;

    // dupName_0_sync_out_x(GPOUT,120)@70
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,123)
    assign out_unnamed_claswp4_claswp_avm_address = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_address;
    assign out_unnamed_claswp4_claswp_avm_enable = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_enable;
    assign out_unnamed_claswp4_claswp_avm_read = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_read;
    assign out_unnamed_claswp4_claswp_avm_write = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_write;
    assign out_unnamed_claswp4_claswp_avm_writedata = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_writedata;
    assign out_unnamed_claswp4_claswp_avm_byteenable = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_byteenable;
    assign out_unnamed_claswp4_claswp_avm_burstcount = i_llvm_fpga_mem_unnamed_claswp4_claswp7_out_unnamed_claswp4_claswp_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,124)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_claswp17_claswp40_out_intel_reserved_ffwd_11_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,126)
    assign out_lm1052_claswp_avm_address = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_address;
    assign out_lm1052_claswp_avm_enable = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_enable;
    assign out_lm1052_claswp_avm_read = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_read;
    assign out_lm1052_claswp_avm_write = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_write;
    assign out_lm1052_claswp_avm_writedata = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_writedata;
    assign out_lm1052_claswp_avm_byteenable = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_byteenable;
    assign out_lm1052_claswp_avm_burstcount = i_llvm_fpga_mem_lm1052_claswp23_out_lm1052_claswp_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,127)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp16_claswp38_out_intel_reserved_ffwd_12_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,129)
    assign out_lm1021_claswp_avm_address = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_address;
    assign out_lm1021_claswp_avm_enable = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_enable;
    assign out_lm1021_claswp_avm_read = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_read;
    assign out_lm1021_claswp_avm_write = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_write;
    assign out_lm1021_claswp_avm_writedata = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_writedata;
    assign out_lm1021_claswp_avm_byteenable = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_byteenable;
    assign out_lm1021_claswp_avm_burstcount = i_llvm_fpga_mem_lm1021_claswp24_out_lm1021_claswp_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,130)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024s_struct_type_3_s_unnamed_claswp2_claswp4_out_intel_reserved_ffwd_1_0;

    // dupName_4_ext_sig_sync_out_x(GPOUT,132)
    assign out_storemerge1_lm3_claswp_avm_address = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_address;
    assign out_storemerge1_lm3_claswp_avm_enable = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_enable;
    assign out_storemerge1_lm3_claswp_avm_read = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_read;
    assign out_storemerge1_lm3_claswp_avm_write = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_write;
    assign out_storemerge1_lm3_claswp_avm_writedata = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_writedata;
    assign out_storemerge1_lm3_claswp_avm_byteenable = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_byteenable;
    assign out_storemerge1_lm3_claswp_avm_burstcount = i_llvm_fpga_mem_storemerge1_lm3_claswp25_out_storemerge1_lm3_claswp_avm_burstcount;

    // dupName_4_regfree_osync_x(GPOUT,133)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp5_claswp8_out_intel_reserved_ffwd_2_0;

    // dupName_5_ext_sig_sync_out_x(GPOUT,135)
    assign out_storemerge72_lm4_claswp_avm_address = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_address;
    assign out_storemerge72_lm4_claswp_avm_enable = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_enable;
    assign out_storemerge72_lm4_claswp_avm_read = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_read;
    assign out_storemerge72_lm4_claswp_avm_write = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_write;
    assign out_storemerge72_lm4_claswp_avm_writedata = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_writedata;
    assign out_storemerge72_lm4_claswp_avm_byteenable = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_byteenable;
    assign out_storemerge72_lm4_claswp_avm_burstcount = i_llvm_fpga_mem_storemerge72_lm4_claswp26_out_storemerge72_lm4_claswp_avm_burstcount;

    // dupName_5_regfree_osync_x(GPOUT,136)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_claswp6_claswp9_out_intel_reserved_ffwd_3_0;

    // dupName_6_ext_sig_sync_out_x(GPOUT,138)
    assign out_lm1165_claswp_avm_address = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_address;
    assign out_lm1165_claswp_avm_enable = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_enable;
    assign out_lm1165_claswp_avm_read = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_read;
    assign out_lm1165_claswp_avm_write = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_write;
    assign out_lm1165_claswp_avm_writedata = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_writedata;
    assign out_lm1165_claswp_avm_byteenable = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_byteenable;
    assign out_lm1165_claswp_avm_burstcount = i_llvm_fpga_mem_lm1165_claswp27_out_lm1165_claswp_avm_burstcount;

    // dupName_6_regfree_osync_x(GPOUT,139)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_claswp7_claswp10_out_intel_reserved_ffwd_4_0;

    // dupName_7_regfree_osync_x(GPOUT,140)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp8_claswp20_out_intel_reserved_ffwd_5_0;

    // dupName_8_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp9_claswp22_out_intel_reserved_ffwd_6_0;

    // dupName_9_regfree_osync_x(GPOUT,142)
    assign out_intel_reserved_ffwd_7_0 = i_sfc_s_c0_in_wt_entry_claswps_c0_enter9_claswp30_aunroll_x_out_intel_reserved_ffwd_7_0;

    // dupName_10_regfree_osync_x(GPOUT,143)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp10_claswp28_out_intel_reserved_ffwd_8_0;

    // dupName_11_regfree_osync_x(GPOUT,144)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_claswp14_claswp31_out_intel_reserved_ffwd_9_0;

endmodule
