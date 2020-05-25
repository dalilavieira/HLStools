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

// SystemVerilog created from glfwChooseFBConfig_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_bb_B1_start_stall_region (
    input wire [319:0] in_iord_bl_call_glfwChooseFBConfig_i_fifodata,
    input wire [0:0] in_iord_bl_call_glfwChooseFBConfig_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out,
    input wire [0:0] in_feedback_in_1,
    output wire [0:0] out_feedback_stall_out_1,
    input wire [0:0] in_feedback_valid_in_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writeack,
    input wire [0:0] in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_glfwChooseFBConfig_o_fifoready,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm1629_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm1629_glfwChooseFBConfig_avm_writeack,
    input wire [0:0] in_lm1629_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm1629_glfwChooseFBConfig_avm_readdatavalid,
    output wire [63:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata,
    output wire [7:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    input wire [63:0] in_lm16410_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm16410_glfwChooseFBConfig_avm_writeack,
    input wire [0:0] in_lm16410_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm16410_glfwChooseFBConfig_avm_readdatavalid,
    output wire [63:0] out_lm1629_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm1629_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm1629_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm1629_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm1629_glfwChooseFBConfig_avm_writedata,
    output wire [7:0] out_lm1629_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm1629_glfwChooseFBConfig_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_12_0,
    output wire [63:0] out_lm16410_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm16410_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm16410_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm16410_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm16410_glfwChooseFBConfig_avm_writedata,
    output wire [7:0] out_lm16410_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm16410_glfwChooseFBConfig_avm_burstcount,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    output wire [63:0] out_intel_reserved_ffwd_14_0,
    output wire [63:0] out_intel_reserved_ffwd_15_0,
    output wire [63:0] out_intel_reserved_ffwd_16_0,
    output wire [63:0] out_intel_reserved_ffwd_17_0,
    output wire [63:0] out_intel_reserved_ffwd_18_0,
    output wire [32:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_4_0,
    output wire [63:0] out_intel_reserved_ffwd_5_0,
    output wire [63:0] out_intel_reserved_ffwd_6_0,
    output wire [63:0] out_intel_reserved_ffwd_7_0,
    output wire [63:0] out_intel_reserved_ffwd_8_0,
    output wire [63:0] out_intel_reserved_ffwd_9_0,
    output wire [63:0] out_intel_reserved_ffwd_0_0_0_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_1_tpl,
    output wire [31:0] out_intel_reserved_ffwd_0_0_2_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_3_tpl,
    output wire [63:0] out_intel_reserved_ffwd_0_0_4_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_155_q;
    wire [31:0] c_i32_156_q;
    wire [32:0] c_i33_157_q;
    wire [0:0] glfwChooseFBConfig_B1_start_merge_reg_out_stall_out;
    wire [0:0] glfwChooseFBConfig_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_cmp131_glfwchoosefbconfig20_q;
    wire [33:0] i_cmp1_glfwchoosefbconfig43_a;
    wire [33:0] i_cmp1_glfwchoosefbconfig43_b;
    logic [33:0] i_cmp1_glfwchoosefbconfig43_o;
    wire [0:0] i_cmp1_glfwchoosefbconfig43_c;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_intel_reserved_ffwd_1_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_intel_reserved_ffwd_11_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_intel_reserved_ffwd_12_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_intel_reserved_ffwd_13_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_valid_out;
    wire [63:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_feedback_stall_out_1;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_valid_out;
    wire [0:0] i_umax_glfwchoosefbconfig41_s;
    reg [31:0] i_umax_glfwchoosefbconfig41_q;
    wire [33:0] i_unnamed_glfwchoosefbconfig22_a;
    wire [33:0] i_unnamed_glfwchoosefbconfig22_b;
    logic [33:0] i_unnamed_glfwchoosefbconfig22_o;
    wire [0:0] i_unnamed_glfwchoosefbconfig22_c;
    wire [32:0] i_unnamed_glfwchoosefbconfig46_a;
    wire [32:0] i_unnamed_glfwchoosefbconfig46_b;
    logic [32:0] i_unnamed_glfwchoosefbconfig46_o;
    wire [32:0] i_unnamed_glfwchoosefbconfig46_q;
    wire [32:0] i_unnamed_glfwchoosefbconfig48_vt_join_q;
    wire [31:0] i_unnamed_glfwchoosefbconfig48_vt_select_31_b;
    wire [33:0] i_unnamed_glfwchoosefbconfig49_a;
    wire [33:0] i_unnamed_glfwchoosefbconfig49_b;
    logic [33:0] i_unnamed_glfwchoosefbconfig49_o;
    wire [33:0] i_unnamed_glfwchoosefbconfig49_q;
    wire [31:0] bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_glfwchoosefbconfig49_sel_x_b;
    wire [31:0] c_i32_054_recast_x_q;
    wire [64:0] i_accumalphabits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumalphabits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumalphabits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumalphabits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumalphabits_glfwchoosefbconfig0_c_i64_521_x_q;
    wire [63:0] i_accumalphabits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_accumbluebits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumbluebits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumbluebits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumbluebits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumbluebits_glfwchoosefbconfig0_c_i64_481_x_q;
    wire [63:0] i_accumbluebits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_accumgreenbits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumgreenbits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumgreenbits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumgreenbits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumgreenbits_glfwchoosefbconfig0_c_i64_441_x_q;
    wire [63:0] i_accumgreenbits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_accumredbits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_accumredbits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_accumredbits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_accumredbits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_accumredbits_glfwchoosefbconfig0_c_i64_401_x_q;
    wire [63:0] i_accumredbits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_alphabits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_alphabits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_alphabits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_alphabits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_alphabits_glfwchoosefbconfig0_c_i64_81_x_q;
    wire [63:0] i_alphabits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_auxbuffers_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_auxbuffers_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_auxbuffers_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_auxbuffers_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_auxbuffers_glfwchoosefbconfig0_c_i64_201_x_q;
    wire [63:0] i_auxbuffers_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_bluebits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_bluebits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_bluebits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_bluebits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_bluebits_glfwchoosefbconfig0_c_i64_361_x_q;
    wire [63:0] i_bluebits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_depthbits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_depthbits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_depthbits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_depthbits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_depthbits_glfwchoosefbconfig0_c_i64_121_x_q;
    wire [63:0] i_depthbits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_doublebuffer_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_doublebuffer_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_doublebuffer_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_doublebuffer_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_doublebuffer_glfwchoosefbconfig0_c_i64_41_x_q;
    wire [63:0] i_doublebuffer_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_greenbits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_greenbits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_greenbits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_greenbits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_greenbits_glfwchoosefbconfig0_c_i64_321_x_q;
    wire [63:0] i_greenbits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [0:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_iord_bl_call_glfwChooseFBConfig_o_fifoready;
    wire [0:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_0_tpl;
    wire [63:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_1_tpl;
    wire [31:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_2_tpl;
    wire [63:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_3_tpl;
    wire [63:0] i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_4_tpl;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_3_tpl;
    wire [63:0] i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_4_tpl;
    wire [64:0] i_redbits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_redbits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_redbits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_redbits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_redbits_glfwchoosefbconfig0_c_i64_281_x_q;
    wire [63:0] i_redbits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_samples_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_samples_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_samples_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_samples_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_samples_glfwchoosefbconfig0_c_i64_241_x_q;
    wire [63:0] i_samples_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_pipeline_valid_out;
    wire [64:0] i_srgb_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_srgb_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_srgb_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_srgb_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_srgb_glfwchoosefbconfig0_c_i64_561_x_q;
    wire [63:0] i_srgb_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [64:0] i_stencilbits_glfwchoosefbconfig0_add_x_a;
    wire [64:0] i_stencilbits_glfwchoosefbconfig0_add_x_b;
    logic [64:0] i_stencilbits_glfwchoosefbconfig0_add_x_o;
    wire [64:0] i_stencilbits_glfwchoosefbconfig0_add_x_q;
    wire [63:0] i_stencilbits_glfwchoosefbconfig0_c_i64_161_x_q;
    wire [63:0] i_stencilbits_glfwchoosefbconfig0_trunc_sel_x_b;
    wire [32:0] i_unnamed_glfwchoosefbconfig48_sel_x_b;
    reg [31:0] redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_b;
    wire [287:0] bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b;
    wire [63:0] bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_c;
    wire [31:0] bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d;
    wire [63:0] bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_e;
    wire [63:0] bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_f;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_or0;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_V0;
    wire [0:0] SE_out_glfwChooseFBConfig_B1_start_merge_reg_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg3;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed3;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg4;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed4;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg5;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed5;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg6;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed6;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg7;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed7;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg8;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed8;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg9;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg9;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed9;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg10;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg10;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed10;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg11;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg11;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed11;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg12;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg12;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed12;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg13;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg13;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed13;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg14;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg14;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed14;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg15;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg15;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed15;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg16;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg16;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed16;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg17;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg17;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed17;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg18;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg18;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed18;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg19;
    reg [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg19;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed19;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or2;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or3;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or4;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or5;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or6;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or7;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or8;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or9;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or10;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or11;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or12;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or13;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or14;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or15;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or16;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or17;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or18;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V2;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V3;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V4;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V5;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V6;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V7;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V8;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V9;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V10;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V11;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V12;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V13;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V14;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V15;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V16;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V17;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V18;
    wire [0:0] SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V19;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_V0;
    reg [0:0] SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and2;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and3;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and4;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and5;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and6;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and7;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and8;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and9;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and10;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and11;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and12;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and13;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and14;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and15;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and16;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and17;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and18;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and19;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38(STALLENABLE,294)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_V0 = SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_backStall = i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_wireValid = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38(BITJOIN,234)
    assign bubble_join_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_q = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38(BITSELECT,235)
    assign bubble_select_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_q[31:0]);

    // c_i32_054_recast_x(CONSTANT,117)
    assign c_i32_054_recast_x_q = $unsigned(32'b00000000000000000000000000000000);

    // i_cmp1_glfwchoosefbconfig43(COMPARE,19)@34
    assign i_cmp1_glfwchoosefbconfig43_a = $unsigned({{2{c_i32_054_recast_x_q[31]}}, c_i32_054_recast_x_q});
    assign i_cmp1_glfwchoosefbconfig43_b = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_b[31]}}, bubble_select_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_b});
    assign i_cmp1_glfwchoosefbconfig43_o = $unsigned($signed(i_cmp1_glfwchoosefbconfig43_a) - $signed(i_cmp1_glfwchoosefbconfig43_b));
    assign i_cmp1_glfwchoosefbconfig43_c[0] = i_cmp1_glfwchoosefbconfig43_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47(BLACKBOX,21)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000001Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_cmp1_glfwchoosefbconfig43_c),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23(STALLENABLE,298)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_V0 = SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_wireValid = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23(BITJOIN,240)
    assign bubble_join_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_q = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23(BITSELECT,241)
    assign bubble_select_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42(BLACKBOX,22)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_1_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000002Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(bubble_select_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_V0),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_intel_reserved_ffwd_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39(STALLENABLE,296)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_V0 = SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_wireValid = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_valid;

    // bubble_join_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39(BITJOIN,237)
    assign bubble_join_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_q = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39(BITSELECT,238)
    assign bubble_select_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_q[31:0]);

    // i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45(BLACKBOX,23)@34
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_11_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000003Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45 (
        .in_predicate_in(GND_q),
        .in_src_data_in_11_0(bubble_select_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_b),
        .in_stall_in(SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_V0),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_intel_reserved_ffwd_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40(STALLENABLE,256)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_V0 = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_backStall = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg(STALLFIFO,415)
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28(STALLENABLE,266)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg(STALLFIFO,417)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29(STALLENABLE,268)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg(STALLFIFO,418)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30(STALLENABLE,270)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg(STALLFIFO,419)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31(STALLENABLE,272)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg(STALLFIFO,420)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32(STALLENABLE,274)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg(STALLFIFO,421)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33(STALLENABLE,276)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg(STALLFIFO,422)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34(STALLENABLE,278)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg(STALLFIFO,423)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35(STALLENABLE,280)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg(STALLFIFO,424)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36(STALLENABLE,282)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg(STALLFIFO,425)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37(STALLENABLE,284)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg(STALLFIFO,426)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24(STALLENABLE,286)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg(STALLFIFO,427)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25(STALLENABLE,288)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg(STALLFIFO,428)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26(STALLENABLE,290)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg(STALLFIFO,429)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27(STALLENABLE,292)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_V0 = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_backStall = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_wireValid = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg(STALLFIFO,430)
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x(STALLENABLE,334)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_backStall = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_wireValid = i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg(STALLFIFO,431)
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg(STALLFIFO,432)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1(STALLENABLE,414)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and1 = bubble_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and2 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and1;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and3 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and2;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and3;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and5 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and4;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and6 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and5;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and7 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and6;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and8 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and7;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and9 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and8;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and10 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and9;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and11 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and10;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and12 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and11;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and13 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and12;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and14 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and13;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and15 = bubble_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and14;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and16 = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and15;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and17 = bubble_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_1_reg_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and16;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and18 = i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and17;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and19 = i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and18;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_wireValid = i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_valid_out & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_and19;

    // bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg(STALLFIFO,416)
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50(STALLENABLE,264)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_backStall = bubble_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_wireValid = i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_valid_out;

    // c_i33_157(CONSTANT,8)
    assign c_i33_157_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_156(CONSTANT,7)
    assign c_i32_156_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x(BITJOIN,247)
    assign bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q = {i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_4_tpl, i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_3_tpl, i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_2_tpl, i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_1_tpl, i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_0_tpl};

    // bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x(BITSELECT,248)
    assign bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q[63:0]);
    assign bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_c = $unsigned(bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q[127:64]);
    assign bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d = $unsigned(bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q[159:128]);
    assign bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_e = $unsigned(bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q[223:160]);
    assign bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_f = $unsigned(bubble_join_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_q[287:224]);

    // c_i32_155(CONSTANT,6)
    assign c_i32_155_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_glfwchoosefbconfig22(COMPARE,44)@2
    assign i_unnamed_glfwchoosefbconfig22_a = {2'b00, c_i32_155_q};
    assign i_unnamed_glfwchoosefbconfig22_b = {2'b00, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d};
    assign i_unnamed_glfwchoosefbconfig22_o = $unsigned(i_unnamed_glfwchoosefbconfig22_a) - $unsigned(i_unnamed_glfwchoosefbconfig22_b);
    assign i_unnamed_glfwchoosefbconfig22_c[0] = i_unnamed_glfwchoosefbconfig22_o[33];

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_umax_glfwchoosefbconfig41(MUX,43)@2
    assign i_umax_glfwchoosefbconfig41_s = i_unnamed_glfwchoosefbconfig22_c;
    always @(i_umax_glfwchoosefbconfig41_s or c_i32_155_q or bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d)
    begin
        unique case (i_umax_glfwchoosefbconfig41_s)
            1'b0 : i_umax_glfwchoosefbconfig41_q = c_i32_155_q;
            1'b1 : i_umax_glfwchoosefbconfig41_q = bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d;
            default : i_umax_glfwchoosefbconfig41_q = 32'b0;
        endcase
    end

    // i_unnamed_glfwchoosefbconfig46(ADD,45)@2
    assign i_unnamed_glfwchoosefbconfig46_a = {1'b0, i_umax_glfwchoosefbconfig41_q};
    assign i_unnamed_glfwchoosefbconfig46_b = {1'b0, c_i32_156_q};
    assign i_unnamed_glfwchoosefbconfig46_o = $unsigned(i_unnamed_glfwchoosefbconfig46_a) + $unsigned(i_unnamed_glfwchoosefbconfig46_b);
    assign i_unnamed_glfwchoosefbconfig46_q = i_unnamed_glfwchoosefbconfig46_o[32:0];

    // bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x(BITSELECT,115)@2
    assign bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b = i_unnamed_glfwchoosefbconfig46_q[31:0];

    // redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0(REG,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b);
        end
    end

    // i_unnamed_glfwchoosefbconfig48_sel_x(BITSELECT,205)@3
    assign i_unnamed_glfwchoosefbconfig48_sel_x_b = {1'b0, redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_q[31:0]};

    // i_unnamed_glfwchoosefbconfig48_vt_select_31(BITSELECT,49)@3
    assign i_unnamed_glfwchoosefbconfig48_vt_select_31_b = i_unnamed_glfwchoosefbconfig48_sel_x_b[31:0];

    // i_unnamed_glfwchoosefbconfig48_vt_join(BITJOIN,48)@3
    assign i_unnamed_glfwchoosefbconfig48_vt_join_q = {GND_q, i_unnamed_glfwchoosefbconfig48_vt_select_31_b};

    // i_unnamed_glfwchoosefbconfig49(ADD,50)@3
    assign i_unnamed_glfwchoosefbconfig49_a = {1'b0, i_unnamed_glfwchoosefbconfig48_vt_join_q};
    assign i_unnamed_glfwchoosefbconfig49_b = {1'b0, c_i33_157_q};
    assign i_unnamed_glfwchoosefbconfig49_o = $unsigned(i_unnamed_glfwchoosefbconfig49_a) + $unsigned(i_unnamed_glfwchoosefbconfig49_b);
    assign i_unnamed_glfwchoosefbconfig49_q = i_unnamed_glfwchoosefbconfig49_o[33:0];

    // bgTrunc_i_unnamed_glfwchoosefbconfig49_sel_x(BITSELECT,116)@3
    assign bgTrunc_i_unnamed_glfwchoosefbconfig49_sel_x_b = i_unnamed_glfwchoosefbconfig49_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50(BLACKBOX,24)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_19_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000004Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(bgTrunc_i_unnamed_glfwchoosefbconfig49_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_backStall),
        .in_valid_in(SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_V0),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_intel_reserved_ffwd_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0(STALLENABLE,346)
    // Valid signal propagation
    assign SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_V0 = SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_stall_out & SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backEN = ~ (SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_v_s_0 = SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backEN & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V19;
    // Backward Stall generation
    assign SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backStall = ~ (SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0 & SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_R_v_0 <= SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // i_cmp131_glfwchoosefbconfig20(LOGICAL,18)@2
    assign i_cmp131_glfwchoosefbconfig20_q = $unsigned(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d == c_i32_054_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39(BLACKBOX,40)@2
    // in in_i_stall@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_address@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_burstcount@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_byteenable@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_enable@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_read@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_write@20000000
    // out out_lm16410_glfwChooseFBConfig_avm_writedata@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    glfwChooseFBConfig_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig0 thei_llvm_fpga_mem_lm16410_glfwchoosefbconfig39 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_e),
        .in_i_predicate(i_cmp131_glfwchoosefbconfig20_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V18),
        .in_lm16410_glfwChooseFBConfig_avm_readdata(in_lm16410_glfwChooseFBConfig_avm_readdata),
        .in_lm16410_glfwChooseFBConfig_avm_readdatavalid(in_lm16410_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm16410_glfwChooseFBConfig_avm_waitrequest(in_lm16410_glfwChooseFBConfig_avm_waitrequest),
        .in_lm16410_glfwChooseFBConfig_avm_writeack(in_lm16410_glfwChooseFBConfig_avm_writeack),
        .out_lm16410_glfwChooseFBConfig_avm_address(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_address),
        .out_lm16410_glfwChooseFBConfig_avm_burstcount(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_burstcount),
        .out_lm16410_glfwChooseFBConfig_avm_byteenable(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_byteenable),
        .out_lm16410_glfwChooseFBConfig_avm_enable(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_enable),
        .out_lm16410_glfwChooseFBConfig_avm_read(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_read),
        .out_lm16410_glfwChooseFBConfig_avm_write(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_write),
        .out_lm16410_glfwChooseFBConfig_avm_writedata(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38(BLACKBOX,39)@2
    // in in_i_stall@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_address@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_burstcount@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_byteenable@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_enable@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_read@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_write@20000000
    // out out_lm1629_glfwChooseFBConfig_avm_writedata@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    glfwChooseFBConfig_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig0 thei_llvm_fpga_mem_lm1629_glfwchoosefbconfig38 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b),
        .in_i_predicate(i_cmp131_glfwchoosefbconfig20_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V17),
        .in_lm1629_glfwChooseFBConfig_avm_readdata(in_lm1629_glfwChooseFBConfig_avm_readdata),
        .in_lm1629_glfwChooseFBConfig_avm_readdatavalid(in_lm1629_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm1629_glfwChooseFBConfig_avm_waitrequest(in_lm1629_glfwChooseFBConfig_avm_waitrequest),
        .in_lm1629_glfwChooseFBConfig_avm_writeack(in_lm1629_glfwChooseFBConfig_avm_writeack),
        .out_lm1629_glfwChooseFBConfig_avm_address(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_address),
        .out_lm1629_glfwChooseFBConfig_avm_burstcount(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_burstcount),
        .out_lm1629_glfwChooseFBConfig_avm_byteenable(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_byteenable),
        .out_lm1629_glfwChooseFBConfig_avm_enable(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_enable),
        .out_lm1629_glfwChooseFBConfig_avm_read(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_read),
        .out_lm1629_glfwChooseFBConfig_avm_write(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_write),
        .out_lm1629_glfwChooseFBConfig_avm_writedata(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_stencilbits_glfwchoosefbconfig0_c_i64_161_x(CONSTANT,202)
    assign i_stencilbits_glfwchoosefbconfig0_c_i64_161_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000010000);

    // i_stencilbits_glfwchoosefbconfig0_add_x(ADD,201)@2
    assign i_stencilbits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_stencilbits_glfwchoosefbconfig0_add_x_b = {1'b0, i_stencilbits_glfwchoosefbconfig0_c_i64_161_x_q};
    assign i_stencilbits_glfwchoosefbconfig0_add_x_o = $unsigned(i_stencilbits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_stencilbits_glfwchoosefbconfig0_add_x_b);
    assign i_stencilbits_glfwchoosefbconfig0_add_x_q = i_stencilbits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_stencilbits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,204)@2
    assign i_stencilbits_glfwchoosefbconfig0_trunc_sel_x_b = i_stencilbits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27(BLACKBOX,38)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000018Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_stencilbits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V16),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_depthbits_glfwchoosefbconfig0_c_i64_121_x(CONSTANT,175)
    assign i_depthbits_glfwchoosefbconfig0_c_i64_121_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001100);

    // i_depthbits_glfwchoosefbconfig0_add_x(ADD,174)@2
    assign i_depthbits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_depthbits_glfwchoosefbconfig0_add_x_b = {1'b0, i_depthbits_glfwchoosefbconfig0_c_i64_121_x_q};
    assign i_depthbits_glfwchoosefbconfig0_add_x_o = $unsigned(i_depthbits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_depthbits_glfwchoosefbconfig0_add_x_b);
    assign i_depthbits_glfwchoosefbconfig0_add_x_q = i_depthbits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_depthbits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,177)@2
    assign i_depthbits_glfwchoosefbconfig0_trunc_sel_x_b = i_depthbits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26(BLACKBOX,37)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000017Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_depthbits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V15),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_alphabits_glfwchoosefbconfig0_c_i64_81_x(CONSTANT,163)
    assign i_alphabits_glfwchoosefbconfig0_c_i64_81_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001000);

    // i_alphabits_glfwchoosefbconfig0_add_x(ADD,162)@2
    assign i_alphabits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_alphabits_glfwchoosefbconfig0_add_x_b = {1'b0, i_alphabits_glfwchoosefbconfig0_c_i64_81_x_q};
    assign i_alphabits_glfwchoosefbconfig0_add_x_o = $unsigned(i_alphabits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_alphabits_glfwchoosefbconfig0_add_x_b);
    assign i_alphabits_glfwchoosefbconfig0_add_x_q = i_alphabits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_alphabits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,165)@2
    assign i_alphabits_glfwchoosefbconfig0_trunc_sel_x_b = i_alphabits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25(BLACKBOX,36)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000016Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_alphabits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V14),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_doublebuffer_glfwchoosefbconfig0_c_i64_41_x(CONSTANT,179)
    assign i_doublebuffer_glfwchoosefbconfig0_c_i64_41_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000100);

    // i_doublebuffer_glfwchoosefbconfig0_add_x(ADD,178)@2
    assign i_doublebuffer_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_doublebuffer_glfwchoosefbconfig0_add_x_b = {1'b0, i_doublebuffer_glfwchoosefbconfig0_c_i64_41_x_q};
    assign i_doublebuffer_glfwchoosefbconfig0_add_x_o = $unsigned(i_doublebuffer_glfwchoosefbconfig0_add_x_a) + $unsigned(i_doublebuffer_glfwchoosefbconfig0_add_x_b);
    assign i_doublebuffer_glfwchoosefbconfig0_add_x_q = i_doublebuffer_glfwchoosefbconfig0_add_x_o[64:0];

    // i_doublebuffer_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,181)@2
    assign i_doublebuffer_glfwchoosefbconfig0_trunc_sel_x_b = i_doublebuffer_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24(BLACKBOX,35)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000015Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_doublebuffer_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V13),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_srgb_glfwchoosefbconfig0_c_i64_561_x(CONSTANT,198)
    assign i_srgb_glfwchoosefbconfig0_c_i64_561_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000111000);

    // i_srgb_glfwchoosefbconfig0_add_x(ADD,197)@2
    assign i_srgb_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_srgb_glfwchoosefbconfig0_add_x_b = {1'b0, i_srgb_glfwchoosefbconfig0_c_i64_561_x_q};
    assign i_srgb_glfwchoosefbconfig0_add_x_o = $unsigned(i_srgb_glfwchoosefbconfig0_add_x_a) + $unsigned(i_srgb_glfwchoosefbconfig0_add_x_b);
    assign i_srgb_glfwchoosefbconfig0_add_x_q = i_srgb_glfwchoosefbconfig0_add_x_o[64:0];

    // i_srgb_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,200)@2
    assign i_srgb_glfwchoosefbconfig0_trunc_sel_x_b = i_srgb_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37(BLACKBOX,34)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_18_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000014Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(i_srgb_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V12),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_intel_reserved_ffwd_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_accumalphabits_glfwchoosefbconfig0_c_i64_521_x(CONSTANT,147)
    assign i_accumalphabits_glfwchoosefbconfig0_c_i64_521_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000110100);

    // i_accumalphabits_glfwchoosefbconfig0_add_x(ADD,146)@2
    assign i_accumalphabits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_accumalphabits_glfwchoosefbconfig0_add_x_b = {1'b0, i_accumalphabits_glfwchoosefbconfig0_c_i64_521_x_q};
    assign i_accumalphabits_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumalphabits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumalphabits_glfwchoosefbconfig0_add_x_b);
    assign i_accumalphabits_glfwchoosefbconfig0_add_x_q = i_accumalphabits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumalphabits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,149)@2
    assign i_accumalphabits_glfwchoosefbconfig0_trunc_sel_x_b = i_accumalphabits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36(BLACKBOX,33)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_17_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000013Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(i_accumalphabits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V11),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_intel_reserved_ffwd_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_accumbluebits_glfwchoosefbconfig0_c_i64_481_x(CONSTANT,151)
    assign i_accumbluebits_glfwchoosefbconfig0_c_i64_481_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000110000);

    // i_accumbluebits_glfwchoosefbconfig0_add_x(ADD,150)@2
    assign i_accumbluebits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_accumbluebits_glfwchoosefbconfig0_add_x_b = {1'b0, i_accumbluebits_glfwchoosefbconfig0_c_i64_481_x_q};
    assign i_accumbluebits_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumbluebits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumbluebits_glfwchoosefbconfig0_add_x_b);
    assign i_accumbluebits_glfwchoosefbconfig0_add_x_q = i_accumbluebits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumbluebits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,153)@2
    assign i_accumbluebits_glfwchoosefbconfig0_trunc_sel_x_b = i_accumbluebits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35(BLACKBOX,32)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_16_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000012Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(i_accumbluebits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V10),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_intel_reserved_ffwd_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_accumgreenbits_glfwchoosefbconfig0_c_i64_441_x(CONSTANT,155)
    assign i_accumgreenbits_glfwchoosefbconfig0_c_i64_441_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101100);

    // i_accumgreenbits_glfwchoosefbconfig0_add_x(ADD,154)@2
    assign i_accumgreenbits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_accumgreenbits_glfwchoosefbconfig0_add_x_b = {1'b0, i_accumgreenbits_glfwchoosefbconfig0_c_i64_441_x_q};
    assign i_accumgreenbits_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumgreenbits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumgreenbits_glfwchoosefbconfig0_add_x_b);
    assign i_accumgreenbits_glfwchoosefbconfig0_add_x_q = i_accumgreenbits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumgreenbits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,157)@2
    assign i_accumgreenbits_glfwchoosefbconfig0_trunc_sel_x_b = i_accumgreenbits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34(BLACKBOX,31)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_15_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000011Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(i_accumgreenbits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V9),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_intel_reserved_ffwd_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_accumredbits_glfwchoosefbconfig0_c_i64_401_x(CONSTANT,159)
    assign i_accumredbits_glfwchoosefbconfig0_c_i64_401_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000101000);

    // i_accumredbits_glfwchoosefbconfig0_add_x(ADD,158)@2
    assign i_accumredbits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_accumredbits_glfwchoosefbconfig0_add_x_b = {1'b0, i_accumredbits_glfwchoosefbconfig0_c_i64_401_x_q};
    assign i_accumredbits_glfwchoosefbconfig0_add_x_o = $unsigned(i_accumredbits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_accumredbits_glfwchoosefbconfig0_add_x_b);
    assign i_accumredbits_glfwchoosefbconfig0_add_x_q = i_accumredbits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_accumredbits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,161)@2
    assign i_accumredbits_glfwchoosefbconfig0_trunc_sel_x_b = i_accumredbits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33(BLACKBOX,30)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_14_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000010Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(i_accumredbits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V8),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_intel_reserved_ffwd_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_bluebits_glfwchoosefbconfig0_c_i64_361_x(CONSTANT,171)
    assign i_bluebits_glfwchoosefbconfig0_c_i64_361_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000100100);

    // i_bluebits_glfwchoosefbconfig0_add_x(ADD,170)@2
    assign i_bluebits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_bluebits_glfwchoosefbconfig0_add_x_b = {1'b0, i_bluebits_glfwchoosefbconfig0_c_i64_361_x_q};
    assign i_bluebits_glfwchoosefbconfig0_add_x_o = $unsigned(i_bluebits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_bluebits_glfwchoosefbconfig0_add_x_b);
    assign i_bluebits_glfwchoosefbconfig0_add_x_q = i_bluebits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_bluebits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,173)@2
    assign i_bluebits_glfwchoosefbconfig0_trunc_sel_x_b = i_bluebits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32(BLACKBOX,29)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_13_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000009Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(i_bluebits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V7),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_intel_reserved_ffwd_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_greenbits_glfwchoosefbconfig0_c_i64_321_x(CONSTANT,183)
    assign i_greenbits_glfwchoosefbconfig0_c_i64_321_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000100000);

    // i_greenbits_glfwchoosefbconfig0_add_x(ADD,182)@2
    assign i_greenbits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_greenbits_glfwchoosefbconfig0_add_x_b = {1'b0, i_greenbits_glfwchoosefbconfig0_c_i64_321_x_q};
    assign i_greenbits_glfwchoosefbconfig0_add_x_o = $unsigned(i_greenbits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_greenbits_glfwchoosefbconfig0_add_x_b);
    assign i_greenbits_glfwchoosefbconfig0_add_x_q = i_greenbits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_greenbits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,185)@2
    assign i_greenbits_glfwchoosefbconfig0_trunc_sel_x_b = i_greenbits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31(BLACKBOX,28)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_12_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000008Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31 (
        .in_predicate_in(GND_q),
        .in_src_data_in_12_0(i_greenbits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V6),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_intel_reserved_ffwd_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_redbits_glfwchoosefbconfig0_c_i64_281_x(CONSTANT,189)
    assign i_redbits_glfwchoosefbconfig0_c_i64_281_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000011100);

    // i_redbits_glfwchoosefbconfig0_add_x(ADD,188)@2
    assign i_redbits_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_redbits_glfwchoosefbconfig0_add_x_b = {1'b0, i_redbits_glfwchoosefbconfig0_c_i64_281_x_q};
    assign i_redbits_glfwchoosefbconfig0_add_x_o = $unsigned(i_redbits_glfwchoosefbconfig0_add_x_a) + $unsigned(i_redbits_glfwchoosefbconfig0_add_x_b);
    assign i_redbits_glfwchoosefbconfig0_add_x_q = i_redbits_glfwchoosefbconfig0_add_x_o[64:0];

    // i_redbits_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,191)@2
    assign i_redbits_glfwchoosefbconfig0_trunc_sel_x_b = i_redbits_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30(BLACKBOX,27)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000007Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_redbits_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V5),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_samples_glfwchoosefbconfig0_c_i64_241_x(CONSTANT,193)
    assign i_samples_glfwchoosefbconfig0_c_i64_241_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000011000);

    // i_samples_glfwchoosefbconfig0_add_x(ADD,192)@2
    assign i_samples_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_samples_glfwchoosefbconfig0_add_x_b = {1'b0, i_samples_glfwchoosefbconfig0_c_i64_241_x_q};
    assign i_samples_glfwchoosefbconfig0_add_x_o = $unsigned(i_samples_glfwchoosefbconfig0_add_x_a) + $unsigned(i_samples_glfwchoosefbconfig0_add_x_b);
    assign i_samples_glfwchoosefbconfig0_add_x_q = i_samples_glfwchoosefbconfig0_add_x_o[64:0];

    // i_samples_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,195)@2
    assign i_samples_glfwchoosefbconfig0_trunc_sel_x_b = i_samples_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29(BLACKBOX,26)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000006Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_samples_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V4),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_auxbuffers_glfwchoosefbconfig0_c_i64_201_x(CONSTANT,167)
    assign i_auxbuffers_glfwchoosefbconfig0_c_i64_201_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000010100);

    // i_auxbuffers_glfwchoosefbconfig0_add_x(ADD,166)@2
    assign i_auxbuffers_glfwchoosefbconfig0_add_x_a = {1'b0, bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b};
    assign i_auxbuffers_glfwchoosefbconfig0_add_x_b = {1'b0, i_auxbuffers_glfwchoosefbconfig0_c_i64_201_x_q};
    assign i_auxbuffers_glfwchoosefbconfig0_add_x_o = $unsigned(i_auxbuffers_glfwchoosefbconfig0_add_x_a) + $unsigned(i_auxbuffers_glfwchoosefbconfig0_add_x_b);
    assign i_auxbuffers_glfwchoosefbconfig0_add_x_q = i_auxbuffers_glfwchoosefbconfig0_add_x_o[64:0];

    // i_auxbuffers_glfwchoosefbconfig0_trunc_sel_x(BITSELECT,169)@2
    assign i_auxbuffers_glfwchoosefbconfig0_trunc_sel_x_b = i_auxbuffers_glfwchoosefbconfig0_add_x_q[63:0];

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28(BLACKBOX,25)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000005Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_auxbuffers_glfwchoosefbconfig0_trunc_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V3),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40(BLACKBOX,20)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_cmp131_glfwchoosefbconfig20_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V2),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x(BLACKBOX,187)@2
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_intel_reserved_ffwd_0_0_0_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_1_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_2_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_3_tpl@20000000
    // out out_intel_reserved_ffwd_0_0_4_tpl@20000000
    glfwChooseFBConfig_i_llvm_fpga_ffwd_sourA000019Z_glfwchoosefbconfig0 thei_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x (
        .in_predicate_in(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_backStall),
        .in_valid_in(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V1),
        .in_src_data_in_0_0_0_tpl(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_b),
        .in_src_data_in_0_0_1_tpl(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_c),
        .in_src_data_in_0_0_2_tpl(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_d),
        .in_src_data_in_0_0_3_tpl(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_e),
        .in_src_data_in_0_0_4_tpl(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_f),
        .out_stall_out(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_valid_out),
        .out_intel_reserved_ffwd_0_0_0_tpl(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_intel_reserved_ffwd_0_0_2_tpl(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl),
        .out_intel_reserved_ffwd_0_0_3_tpl(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_3_tpl),
        .out_intel_reserved_ffwd_0_0_4_tpl(i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23(BLACKBOX,41)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address@20000000
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount@20000000
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable@20000000
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable@20000000
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read@20000000
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write@20000000
    // out out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata@20000000
    glfwChooseFBConfig_i_llvm_fpga_mem_unnamA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_f),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V0),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdata(in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdata),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdatavalid(in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdatavalid),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_waitrequest(in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_waitrequest),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writeack(in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_valid),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata(i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x(STALLENABLE,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg2 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg3 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg4 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg5 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg6 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg7 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg8 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg9 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg10 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg11 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg12 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg13 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg14 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg15 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg16 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg17 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg18 <= '0;
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg19 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg3 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg4 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg5 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg6 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg7 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg8 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg8;
            // Successor 9
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg9 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg9;
            // Successor 10
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg10 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg10;
            // Successor 11
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg11 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg11;
            // Successor 12
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg12 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg12;
            // Successor 13
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg13 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg13;
            // Successor 14
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg14 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg14;
            // Successor 15
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg15 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg15;
            // Successor 16
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg16 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg16;
            // Successor 17
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg17 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg17;
            // Successor 18
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg18 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg18;
            // Successor 19
            SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg19 <= SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg19;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_o_stall) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed2 = (~ (i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg2;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed3 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg3;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed4 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg4;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed5 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg5;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed6 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg6;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed7 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg7;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed8 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg8;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed9 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg9;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed10 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg10;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed11 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg11;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed12 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg12;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed13 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg13;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed14 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg14;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed15 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg15;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed16 = (~ (i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_stall_out) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg16;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed17 = (~ (i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_o_stall) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg17;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed18 = (~ (i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_o_stall) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg18;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed19 = (~ (SE_redist0_bgTrunc_i_unnamed_glfwchoosefbconfig46_sel_x_b_1_0_backStall) & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid) | SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg19;
    // Consuming
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_backStall & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg0 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg1 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg2 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed2;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg3 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed3;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg4 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed4;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg5 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed5;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg6 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed6;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg7 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed7;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg8 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed8;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg9 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed9;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg10 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed10;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg11 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed11;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg12 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed12;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg13 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed13;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg14 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed14;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg15 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed15;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg16 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed16;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg17 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed17;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg18 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed18;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_toReg19 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_StallValid & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed19;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or0 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or1 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed1 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or2 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed2 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or1;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or3 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed3 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or2;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or4 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed4 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or3;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or5 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed5 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or4;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or6 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed6 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or5;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or7 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed7 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or6;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or8 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed8 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or7;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or9 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed9 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or8;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or10 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed10 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or9;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or11 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed11 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or10;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or12 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed12 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or11;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or13 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed13 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or12;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or14 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed14 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or13;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or15 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed15 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or14;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or16 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed16 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or15;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or17 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed17 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or16;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or18 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed18 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or17;
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_consumed19 & SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_or18);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_backStall = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V0 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V1 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V2 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg2);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V3 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg3);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V4 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg4);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V5 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg5);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V6 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg6);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V7 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg7);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V8 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg8);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V9 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg9);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V10 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg10);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V11 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg11);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V12 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg12);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V13 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg13);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V14 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg14);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V15 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg15);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V16 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg16);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V17 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg17);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V18 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg18);
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_V19 = SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_fromReg19);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_wireValid = i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_valid;

    // bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1(BITJOIN,243)
    assign bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_q = i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1(BITSELECT,244)
    assign bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_b = $unsigned(bubble_join_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_q[0:0]);

    // i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x(BLACKBOX,186)@2
    // in in_i_stall@20000000
    // out out_iord_bl_call_glfwChooseFBConfig_o_fifoready@20000000
    // out out_o_stall@20000000
    glfwChooseFBConfig_i_iord_bl_call_glfwchA000000Z_glfwchoosefbconfig0 thei_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x (
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_b),
        .in_i_stall(SE_out_i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_V0),
        .in_iord_bl_call_glfwChooseFBConfig_i_fifodata(in_iord_bl_call_glfwChooseFBConfig_i_fifodata),
        .in_iord_bl_call_glfwChooseFBConfig_i_fifovalid(in_iord_bl_call_glfwChooseFBConfig_i_fifovalid),
        .out_iord_bl_call_glfwChooseFBConfig_o_fifoready(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_iord_bl_call_glfwChooseFBConfig_o_fifoready),
        .out_o_stall(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1(STALLENABLE,300)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_V0 = SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_backStall = i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_wireValid = i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_valid_out;

    // i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1(BLACKBOX,42)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_1@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    glfwChooseFBConfig_i_llvm_fpga_pop_throtA000000Z_glfwchoosefbconfig0 thei_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1 (
        .in_data_in(GND_q),
        .in_dir(GND_q),
        .in_feedback_in_1(in_feedback_in_1),
        .in_feedback_valid_in_1(in_feedback_valid_in_1),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_backStall),
        .in_valid_in(SE_out_glfwChooseFBConfig_B1_start_merge_reg_V0),
        .out_data_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_data_out),
        .out_feedback_stall_out_1(i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_feedback_stall_out_1),
        .out_stall_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,307)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = glfwChooseFBConfig_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // glfwChooseFBConfig_B1_start_merge_reg(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    glfwChooseFBConfig_B1_start_merge_reg theglfwChooseFBConfig_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_glfwChooseFBConfig_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(glfwChooseFBConfig_B1_start_merge_reg_out_stall_out),
        .out_valid_out(glfwChooseFBConfig_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_glfwChooseFBConfig_B1_start_merge_reg(STALLENABLE,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg0 <= SE_out_glfwChooseFBConfig_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg1 <= SE_out_glfwChooseFBConfig_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed0 = (~ (i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_stall_out) & SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid) | SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg0;
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_o_stall) & SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid) | SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_StallValid = SE_out_glfwChooseFBConfig_B1_start_merge_reg_backStall & SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid;
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_toReg0 = SE_out_glfwChooseFBConfig_B1_start_merge_reg_StallValid & SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed0;
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_toReg1 = SE_out_glfwChooseFBConfig_B1_start_merge_reg_StallValid & SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_or0 = SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed0;
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireStall = ~ (SE_out_glfwChooseFBConfig_B1_start_merge_reg_consumed1 & SE_out_glfwChooseFBConfig_B1_start_merge_reg_or0);
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_backStall = SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_V0 = SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid & ~ (SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg0);
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_V1 = SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid & ~ (SE_out_glfwChooseFBConfig_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_glfwChooseFBConfig_B1_start_merge_reg_wireValid = glfwChooseFBConfig_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x(STALLENABLE,340)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x(BLACKBOX,196)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    glfwChooseFBConfig_i_sfc_s_c0_in_wt_entrA000000Z_glfwchoosefbconfig0 thei_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_backStall),
        .in_i_valid(SE_out_glfwChooseFBConfig_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_glfwChooseFBConfig0_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out(i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out(i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out = i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out = i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going116_glfwchoosefbconfig1_exiting_stall_out;

    // feedback_stall_out_1_sync(GPOUT,15)
    assign out_feedback_stall_out_1 = i_llvm_fpga_pop_throttle_i1_throttle_pop_glfwchoosefbconfig1_out_feedback_stall_out_1;

    // pipeline_valid_out_sync(GPOUT,108)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,113)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,119)
    assign out_iord_bl_call_glfwChooseFBConfig_o_fifoready = i_iord_bl_call_glfwchoosefbconfig_unnamed_glfwchoosefbconfig2_glfwchoosefbconfig2_aunroll_x_out_iord_bl_call_glfwChooseFBConfig_o_fifoready;

    // dupName_0_regfree_osync_x(GPOUT,120)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig12_glfwchoosefbconfig30_out_intel_reserved_ffwd_10_0;

    // dupName_0_sync_out_x(GPOUT,121)@34
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_glfwchoosefbconfigs_c0_enter1_glfwchoosefbconfig0_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,124)
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address;
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable;
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read;
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write;
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata;
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable;
    assign out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount = i_llvm_fpga_mem_unnamed_glfwchoosefbconfig5_glfwchoosefbconfig23_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,125)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig22_glfwchoosefbconfig45_out_intel_reserved_ffwd_11_0;

    // dupName_2_ext_sig_sync_out_x(GPOUT,127)
    assign out_lm1629_glfwChooseFBConfig_avm_address = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_address;
    assign out_lm1629_glfwChooseFBConfig_avm_enable = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_enable;
    assign out_lm1629_glfwChooseFBConfig_avm_read = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_read;
    assign out_lm1629_glfwChooseFBConfig_avm_write = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_write;
    assign out_lm1629_glfwChooseFBConfig_avm_writedata = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_writedata;
    assign out_lm1629_glfwChooseFBConfig_avm_byteenable = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_byteenable;
    assign out_lm1629_glfwChooseFBConfig_avm_burstcount = i_llvm_fpga_mem_lm1629_glfwchoosefbconfig38_out_lm1629_glfwChooseFBConfig_avm_burstcount;

    // dupName_2_regfree_osync_x(GPOUT,128)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig13_glfwchoosefbconfig31_out_intel_reserved_ffwd_12_0;

    // dupName_3_ext_sig_sync_out_x(GPOUT,129)
    assign out_lm16410_glfwChooseFBConfig_avm_address = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_address;
    assign out_lm16410_glfwChooseFBConfig_avm_enable = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_enable;
    assign out_lm16410_glfwChooseFBConfig_avm_read = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_read;
    assign out_lm16410_glfwChooseFBConfig_avm_write = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_write;
    assign out_lm16410_glfwChooseFBConfig_avm_writedata = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_writedata;
    assign out_lm16410_glfwChooseFBConfig_avm_byteenable = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_byteenable;
    assign out_lm16410_glfwChooseFBConfig_avm_burstcount = i_llvm_fpga_mem_lm16410_glfwchoosefbconfig39_out_lm16410_glfwChooseFBConfig_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,130)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig14_glfwchoosefbconfig32_out_intel_reserved_ffwd_13_0;

    // dupName_4_regfree_osync_x(GPOUT,131)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig15_glfwchoosefbconfig33_out_intel_reserved_ffwd_14_0;

    // dupName_5_regfree_osync_x(GPOUT,132)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig16_glfwchoosefbconfig34_out_intel_reserved_ffwd_15_0;

    // dupName_6_regfree_osync_x(GPOUT,133)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig17_glfwchoosefbconfig35_out_intel_reserved_ffwd_16_0;

    // dupName_7_regfree_osync_x(GPOUT,134)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig18_glfwchoosefbconfig36_out_intel_reserved_ffwd_17_0;

    // dupName_8_regfree_osync_x(GPOUT,135)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig19_glfwchoosefbconfig37_out_intel_reserved_ffwd_18_0;

    // dupName_9_regfree_osync_x(GPOUT,136)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i33_unnamed_glfwchoosefbconfig24_glfwchoosefbconfig50_out_intel_reserved_ffwd_19_0;

    // dupName_10_regfree_osync_x(GPOUT,137)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_glfwchoosefbconfig21_glfwchoosefbconfig42_out_intel_reserved_ffwd_1_0;

    // dupName_11_regfree_osync_x(GPOUT,138)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig20_glfwchoosefbconfig40_out_intel_reserved_ffwd_2_0;

    // dupName_12_regfree_osync_x(GPOUT,139)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i1_unnamed_glfwchoosefbconfig23_glfwchoosefbconfig47_out_intel_reserved_ffwd_3_0;

    // dupName_13_regfree_osync_x(GPOUT,140)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig6_glfwchoosefbconfig24_out_intel_reserved_ffwd_4_0;

    // dupName_14_regfree_osync_x(GPOUT,141)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig7_glfwchoosefbconfig25_out_intel_reserved_ffwd_5_0;

    // dupName_15_regfree_osync_x(GPOUT,142)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig8_glfwchoosefbconfig26_out_intel_reserved_ffwd_6_0;

    // dupName_16_regfree_osync_x(GPOUT,143)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig9_glfwchoosefbconfig27_out_intel_reserved_ffwd_7_0;

    // dupName_17_regfree_osync_x(GPOUT,144)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig10_glfwchoosefbconfig28_out_intel_reserved_ffwd_8_0;

    // dupName_18_regfree_osync_x(GPOUT,145)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_glfwchoosefbconfig11_glfwchoosefbconfig29_out_intel_reserved_ffwd_9_0;

    // regfree_osync_aunroll_x(GPOUT,206)
    assign out_intel_reserved_ffwd_0_0_0_tpl = i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    assign out_intel_reserved_ffwd_0_0_1_tpl = i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    assign out_intel_reserved_ffwd_0_0_2_tpl = i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_2_tpl;
    assign out_intel_reserved_ffwd_0_0_3_tpl = i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_3_tpl;
    assign out_intel_reserved_ffwd_0_0_4_tpl = i_llvm_fpga_ffwd_source_s_struct_z19_glfwchoosefbconfigpk8type_5_s1_j_inputss_unnamed_glfwchoosefbconfig3_glfwchoosefbconfig4_aunroll_x_out_intel_reserved_ffwd_0_0_4_tpl;

endmodule
