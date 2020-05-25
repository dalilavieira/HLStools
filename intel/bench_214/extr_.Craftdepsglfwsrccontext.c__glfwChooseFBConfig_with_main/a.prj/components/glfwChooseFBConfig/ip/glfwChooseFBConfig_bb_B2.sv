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

// SystemVerilog created from glfwChooseFBConfig_bb_B2
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_bb_B2 (
    output wire [0:0] out_exiting_stall_out,
    output wire [0:0] out_exiting_valid_out,
    output wire [63:0] out_intel_reserved_ffwd_20_0,
    output wire [63:0] out_lm11630_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm11630_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm11630_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm11630_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm11630_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm11630_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm11630_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm11_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm11_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm11_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm11_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm11_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm11_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm11_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm12131_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm12131_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm12131_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm12131_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm12131_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm12131_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm12131_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm12332_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm12332_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm12332_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm12332_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm12332_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm12332_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm12332_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm12833_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm12833_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm12833_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm12833_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm12833_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm12833_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm12833_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm13034_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm13034_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm13034_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm13034_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm13034_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm13034_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm13034_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm13535_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm13535_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm13535_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm13535_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm13535_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm13535_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm13535_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm13736_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm13736_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm13736_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm13736_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm13736_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm13736_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm13736_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm14237_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm14237_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm14237_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm14237_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm14237_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm14237_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm14237_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm14938_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm14938_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm14938_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm14938_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm14938_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm14938_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm14938_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm15439_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm15439_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm15439_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm15439_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm15439_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm15439_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm15439_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm3912_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm3912_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm3912_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm3912_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm3912_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm3912_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm3912_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm4113_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm4113_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm4113_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm4113_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm4113_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm4113_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm4113_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm4514_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm4514_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm4514_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm4514_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm4514_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm4514_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm4514_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm5015_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm5015_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm5015_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm5015_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm5015_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm5015_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm5015_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm5216_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm5216_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm5216_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm5216_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm5216_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm5216_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm5216_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm5717_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm5717_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm5717_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm5717_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm5717_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm5717_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm5717_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm5918_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm5918_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm5918_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm5918_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm5918_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm5918_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm5918_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm6419_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm6419_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm6419_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm6419_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm6419_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm6419_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm6419_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm6620_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm6620_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm6620_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm6620_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm6620_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm6620_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm6620_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm7121_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm7121_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm7121_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm7121_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm7121_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm7121_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm7121_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm7322_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm7322_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm7322_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm7322_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm7322_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm7322_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm7322_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm7823_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm7823_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm7823_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm7823_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm7823_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm7823_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm7823_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm8024_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm8024_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm8024_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm8024_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm8024_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm8024_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm8024_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm8525_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm8525_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm8525_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm8525_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm8525_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm8525_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm8525_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm8726_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm8726_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm8726_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm8726_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm8726_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm8726_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm8726_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm9227_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm9227_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm9227_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm9227_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm9227_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm9227_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm9227_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm9428_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm9428_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm9428_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm9428_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm9428_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm9428_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm9428_glfwChooseFBConfig_avm_writedata,
    output wire [63:0] out_lm9929_glfwChooseFBConfig_avm_address,
    output wire [0:0] out_lm9929_glfwChooseFBConfig_avm_burstcount,
    output wire [7:0] out_lm9929_glfwChooseFBConfig_avm_byteenable,
    output wire [0:0] out_lm9929_glfwChooseFBConfig_avm_enable,
    output wire [0:0] out_lm9929_glfwChooseFBConfig_avm_read,
    output wire [0:0] out_lm9929_glfwChooseFBConfig_avm_write,
    output wire [63:0] out_lm9929_glfwChooseFBConfig_avm_writedata,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [63:0] in_intel_reserved_ffwd_14_0,
    input wire [63:0] in_intel_reserved_ffwd_15_0,
    input wire [63:0] in_intel_reserved_ffwd_16_0,
    input wire [63:0] in_intel_reserved_ffwd_17_0,
    input wire [63:0] in_intel_reserved_ffwd_18_0,
    input wire [32:0] in_intel_reserved_ffwd_19_0,
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_3_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [63:0] in_intel_reserved_ffwd_6_0,
    input wire [63:0] in_intel_reserved_ffwd_7_0,
    input wire [63:0] in_intel_reserved_ffwd_8_0,
    input wire [63:0] in_intel_reserved_ffwd_9_0,
    input wire [63:0] in_lm11630_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm11630_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm11630_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm11630_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm11_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm11_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm11_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm11_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm12131_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm12131_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm12131_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm12131_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm12332_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm12332_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm12332_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm12332_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm12833_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm12833_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm12833_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm12833_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm13034_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm13034_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm13034_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm13034_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm13535_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm13535_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm13535_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm13535_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm13736_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm13736_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm13736_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm13736_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm14237_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm14237_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm14237_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm14237_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm14938_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm14938_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm14938_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm14938_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm15439_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm15439_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm15439_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm15439_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm3912_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm3912_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm3912_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm3912_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm4113_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm4113_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm4113_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm4113_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm4514_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm4514_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm4514_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm4514_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm5015_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm5015_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm5015_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm5015_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm5216_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm5216_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm5216_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm5216_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm5717_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm5717_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm5717_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm5717_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm5918_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm5918_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm5918_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm5918_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm6419_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm6419_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm6419_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm6419_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm6620_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm6620_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm6620_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm6620_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm7121_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm7121_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm7121_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm7121_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm7322_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm7322_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm7322_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm7322_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm7823_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm7823_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm7823_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm7823_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm8024_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm8024_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm8024_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm8024_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm8525_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm8525_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm8525_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm8525_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm8726_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm8726_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm8726_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm8726_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm9227_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm9227_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm9227_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm9227_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm9428_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm9428_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm9428_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm9428_glfwChooseFBConfig_avm_writeack,
    input wire [63:0] in_lm9929_glfwChooseFBConfig_avm_readdata,
    input wire [0:0] in_lm9929_glfwChooseFBConfig_avm_readdatavalid,
    input wire [0:0] in_lm9929_glfwChooseFBConfig_avm_waitrequest,
    input wire [0:0] in_lm9929_glfwChooseFBConfig_avm_writeack,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_2_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_3_tpl,
    input wire [63:0] in_intel_reserved_ffwd_0_0_4_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_c0_exe20;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_intel_reserved_ffwd_20_0;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_writedata;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_address;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_enable;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_read;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_write;
    wire [63:0] bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_writedata;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_pipeline_valid_out;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_stall_out;
    wire [0:0] bb_glfwChooseFBConfig_B2_stall_region_out_valid_out;
    wire [0:0] glfwChooseFBConfig_B2_branch_out_stall_out;
    wire [0:0] glfwChooseFBConfig_B2_branch_out_valid_out_0;
    wire [0:0] glfwChooseFBConfig_B2_branch_out_valid_out_1;
    wire [0:0] glfwChooseFBConfig_B2_merge_out_forked;
    wire [0:0] glfwChooseFBConfig_B2_merge_out_stall_out_0;
    wire [0:0] glfwChooseFBConfig_B2_merge_out_stall_out_1;
    wire [0:0] glfwChooseFBConfig_B2_merge_out_valid_out;


    // glfwChooseFBConfig_B2_branch(BLACKBOX,3)
    glfwChooseFBConfig_B2_branch theglfwChooseFBConfig_B2_branch (
        .in_c0_exe20(bb_glfwChooseFBConfig_B2_stall_region_out_c0_exe20),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_glfwChooseFBConfig_B2_stall_region_out_valid_out),
        .out_stall_out(glfwChooseFBConfig_B2_branch_out_stall_out),
        .out_valid_out_0(glfwChooseFBConfig_B2_branch_out_valid_out_0),
        .out_valid_out_1(glfwChooseFBConfig_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // glfwChooseFBConfig_B2_merge(BLACKBOX,4)
    glfwChooseFBConfig_B2_merge theglfwChooseFBConfig_B2_merge (
        .in_forked_0(in_forked_0),
        .in_forked_1(in_forked_1),
        .in_stall_in(bb_glfwChooseFBConfig_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_forked(glfwChooseFBConfig_B2_merge_out_forked),
        .out_stall_out_0(glfwChooseFBConfig_B2_merge_out_stall_out_0),
        .out_stall_out_1(glfwChooseFBConfig_B2_merge_out_stall_out_1),
        .out_valid_out(glfwChooseFBConfig_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_glfwChooseFBConfig_B2_stall_region(BLACKBOX,2)
    glfwChooseFBConfig_bb_B2_stall_region thebb_glfwChooseFBConfig_B2_stall_region (
        .in_flush(in_flush),
        .in_forked(glfwChooseFBConfig_B2_merge_out_forked),
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_9_0(in_intel_reserved_ffwd_9_0),
        .in_lm11630_glfwChooseFBConfig_avm_readdata(in_lm11630_glfwChooseFBConfig_avm_readdata),
        .in_lm11630_glfwChooseFBConfig_avm_readdatavalid(in_lm11630_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm11630_glfwChooseFBConfig_avm_waitrequest(in_lm11630_glfwChooseFBConfig_avm_waitrequest),
        .in_lm11630_glfwChooseFBConfig_avm_writeack(in_lm11630_glfwChooseFBConfig_avm_writeack),
        .in_lm11_glfwChooseFBConfig_avm_readdata(in_lm11_glfwChooseFBConfig_avm_readdata),
        .in_lm11_glfwChooseFBConfig_avm_readdatavalid(in_lm11_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm11_glfwChooseFBConfig_avm_waitrequest(in_lm11_glfwChooseFBConfig_avm_waitrequest),
        .in_lm11_glfwChooseFBConfig_avm_writeack(in_lm11_glfwChooseFBConfig_avm_writeack),
        .in_lm12131_glfwChooseFBConfig_avm_readdata(in_lm12131_glfwChooseFBConfig_avm_readdata),
        .in_lm12131_glfwChooseFBConfig_avm_readdatavalid(in_lm12131_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm12131_glfwChooseFBConfig_avm_waitrequest(in_lm12131_glfwChooseFBConfig_avm_waitrequest),
        .in_lm12131_glfwChooseFBConfig_avm_writeack(in_lm12131_glfwChooseFBConfig_avm_writeack),
        .in_lm12332_glfwChooseFBConfig_avm_readdata(in_lm12332_glfwChooseFBConfig_avm_readdata),
        .in_lm12332_glfwChooseFBConfig_avm_readdatavalid(in_lm12332_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm12332_glfwChooseFBConfig_avm_waitrequest(in_lm12332_glfwChooseFBConfig_avm_waitrequest),
        .in_lm12332_glfwChooseFBConfig_avm_writeack(in_lm12332_glfwChooseFBConfig_avm_writeack),
        .in_lm12833_glfwChooseFBConfig_avm_readdata(in_lm12833_glfwChooseFBConfig_avm_readdata),
        .in_lm12833_glfwChooseFBConfig_avm_readdatavalid(in_lm12833_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm12833_glfwChooseFBConfig_avm_waitrequest(in_lm12833_glfwChooseFBConfig_avm_waitrequest),
        .in_lm12833_glfwChooseFBConfig_avm_writeack(in_lm12833_glfwChooseFBConfig_avm_writeack),
        .in_lm13034_glfwChooseFBConfig_avm_readdata(in_lm13034_glfwChooseFBConfig_avm_readdata),
        .in_lm13034_glfwChooseFBConfig_avm_readdatavalid(in_lm13034_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm13034_glfwChooseFBConfig_avm_waitrequest(in_lm13034_glfwChooseFBConfig_avm_waitrequest),
        .in_lm13034_glfwChooseFBConfig_avm_writeack(in_lm13034_glfwChooseFBConfig_avm_writeack),
        .in_lm13535_glfwChooseFBConfig_avm_readdata(in_lm13535_glfwChooseFBConfig_avm_readdata),
        .in_lm13535_glfwChooseFBConfig_avm_readdatavalid(in_lm13535_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm13535_glfwChooseFBConfig_avm_waitrequest(in_lm13535_glfwChooseFBConfig_avm_waitrequest),
        .in_lm13535_glfwChooseFBConfig_avm_writeack(in_lm13535_glfwChooseFBConfig_avm_writeack),
        .in_lm13736_glfwChooseFBConfig_avm_readdata(in_lm13736_glfwChooseFBConfig_avm_readdata),
        .in_lm13736_glfwChooseFBConfig_avm_readdatavalid(in_lm13736_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm13736_glfwChooseFBConfig_avm_waitrequest(in_lm13736_glfwChooseFBConfig_avm_waitrequest),
        .in_lm13736_glfwChooseFBConfig_avm_writeack(in_lm13736_glfwChooseFBConfig_avm_writeack),
        .in_lm14237_glfwChooseFBConfig_avm_readdata(in_lm14237_glfwChooseFBConfig_avm_readdata),
        .in_lm14237_glfwChooseFBConfig_avm_readdatavalid(in_lm14237_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm14237_glfwChooseFBConfig_avm_waitrequest(in_lm14237_glfwChooseFBConfig_avm_waitrequest),
        .in_lm14237_glfwChooseFBConfig_avm_writeack(in_lm14237_glfwChooseFBConfig_avm_writeack),
        .in_lm14938_glfwChooseFBConfig_avm_readdata(in_lm14938_glfwChooseFBConfig_avm_readdata),
        .in_lm14938_glfwChooseFBConfig_avm_readdatavalid(in_lm14938_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm14938_glfwChooseFBConfig_avm_waitrequest(in_lm14938_glfwChooseFBConfig_avm_waitrequest),
        .in_lm14938_glfwChooseFBConfig_avm_writeack(in_lm14938_glfwChooseFBConfig_avm_writeack),
        .in_lm15439_glfwChooseFBConfig_avm_readdata(in_lm15439_glfwChooseFBConfig_avm_readdata),
        .in_lm15439_glfwChooseFBConfig_avm_readdatavalid(in_lm15439_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm15439_glfwChooseFBConfig_avm_waitrequest(in_lm15439_glfwChooseFBConfig_avm_waitrequest),
        .in_lm15439_glfwChooseFBConfig_avm_writeack(in_lm15439_glfwChooseFBConfig_avm_writeack),
        .in_lm3912_glfwChooseFBConfig_avm_readdata(in_lm3912_glfwChooseFBConfig_avm_readdata),
        .in_lm3912_glfwChooseFBConfig_avm_readdatavalid(in_lm3912_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm3912_glfwChooseFBConfig_avm_waitrequest(in_lm3912_glfwChooseFBConfig_avm_waitrequest),
        .in_lm3912_glfwChooseFBConfig_avm_writeack(in_lm3912_glfwChooseFBConfig_avm_writeack),
        .in_lm4113_glfwChooseFBConfig_avm_readdata(in_lm4113_glfwChooseFBConfig_avm_readdata),
        .in_lm4113_glfwChooseFBConfig_avm_readdatavalid(in_lm4113_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm4113_glfwChooseFBConfig_avm_waitrequest(in_lm4113_glfwChooseFBConfig_avm_waitrequest),
        .in_lm4113_glfwChooseFBConfig_avm_writeack(in_lm4113_glfwChooseFBConfig_avm_writeack),
        .in_lm4514_glfwChooseFBConfig_avm_readdata(in_lm4514_glfwChooseFBConfig_avm_readdata),
        .in_lm4514_glfwChooseFBConfig_avm_readdatavalid(in_lm4514_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm4514_glfwChooseFBConfig_avm_waitrequest(in_lm4514_glfwChooseFBConfig_avm_waitrequest),
        .in_lm4514_glfwChooseFBConfig_avm_writeack(in_lm4514_glfwChooseFBConfig_avm_writeack),
        .in_lm5015_glfwChooseFBConfig_avm_readdata(in_lm5015_glfwChooseFBConfig_avm_readdata),
        .in_lm5015_glfwChooseFBConfig_avm_readdatavalid(in_lm5015_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm5015_glfwChooseFBConfig_avm_waitrequest(in_lm5015_glfwChooseFBConfig_avm_waitrequest),
        .in_lm5015_glfwChooseFBConfig_avm_writeack(in_lm5015_glfwChooseFBConfig_avm_writeack),
        .in_lm5216_glfwChooseFBConfig_avm_readdata(in_lm5216_glfwChooseFBConfig_avm_readdata),
        .in_lm5216_glfwChooseFBConfig_avm_readdatavalid(in_lm5216_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm5216_glfwChooseFBConfig_avm_waitrequest(in_lm5216_glfwChooseFBConfig_avm_waitrequest),
        .in_lm5216_glfwChooseFBConfig_avm_writeack(in_lm5216_glfwChooseFBConfig_avm_writeack),
        .in_lm5717_glfwChooseFBConfig_avm_readdata(in_lm5717_glfwChooseFBConfig_avm_readdata),
        .in_lm5717_glfwChooseFBConfig_avm_readdatavalid(in_lm5717_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm5717_glfwChooseFBConfig_avm_waitrequest(in_lm5717_glfwChooseFBConfig_avm_waitrequest),
        .in_lm5717_glfwChooseFBConfig_avm_writeack(in_lm5717_glfwChooseFBConfig_avm_writeack),
        .in_lm5918_glfwChooseFBConfig_avm_readdata(in_lm5918_glfwChooseFBConfig_avm_readdata),
        .in_lm5918_glfwChooseFBConfig_avm_readdatavalid(in_lm5918_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm5918_glfwChooseFBConfig_avm_waitrequest(in_lm5918_glfwChooseFBConfig_avm_waitrequest),
        .in_lm5918_glfwChooseFBConfig_avm_writeack(in_lm5918_glfwChooseFBConfig_avm_writeack),
        .in_lm6419_glfwChooseFBConfig_avm_readdata(in_lm6419_glfwChooseFBConfig_avm_readdata),
        .in_lm6419_glfwChooseFBConfig_avm_readdatavalid(in_lm6419_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm6419_glfwChooseFBConfig_avm_waitrequest(in_lm6419_glfwChooseFBConfig_avm_waitrequest),
        .in_lm6419_glfwChooseFBConfig_avm_writeack(in_lm6419_glfwChooseFBConfig_avm_writeack),
        .in_lm6620_glfwChooseFBConfig_avm_readdata(in_lm6620_glfwChooseFBConfig_avm_readdata),
        .in_lm6620_glfwChooseFBConfig_avm_readdatavalid(in_lm6620_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm6620_glfwChooseFBConfig_avm_waitrequest(in_lm6620_glfwChooseFBConfig_avm_waitrequest),
        .in_lm6620_glfwChooseFBConfig_avm_writeack(in_lm6620_glfwChooseFBConfig_avm_writeack),
        .in_lm7121_glfwChooseFBConfig_avm_readdata(in_lm7121_glfwChooseFBConfig_avm_readdata),
        .in_lm7121_glfwChooseFBConfig_avm_readdatavalid(in_lm7121_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm7121_glfwChooseFBConfig_avm_waitrequest(in_lm7121_glfwChooseFBConfig_avm_waitrequest),
        .in_lm7121_glfwChooseFBConfig_avm_writeack(in_lm7121_glfwChooseFBConfig_avm_writeack),
        .in_lm7322_glfwChooseFBConfig_avm_readdata(in_lm7322_glfwChooseFBConfig_avm_readdata),
        .in_lm7322_glfwChooseFBConfig_avm_readdatavalid(in_lm7322_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm7322_glfwChooseFBConfig_avm_waitrequest(in_lm7322_glfwChooseFBConfig_avm_waitrequest),
        .in_lm7322_glfwChooseFBConfig_avm_writeack(in_lm7322_glfwChooseFBConfig_avm_writeack),
        .in_lm7823_glfwChooseFBConfig_avm_readdata(in_lm7823_glfwChooseFBConfig_avm_readdata),
        .in_lm7823_glfwChooseFBConfig_avm_readdatavalid(in_lm7823_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm7823_glfwChooseFBConfig_avm_waitrequest(in_lm7823_glfwChooseFBConfig_avm_waitrequest),
        .in_lm7823_glfwChooseFBConfig_avm_writeack(in_lm7823_glfwChooseFBConfig_avm_writeack),
        .in_lm8024_glfwChooseFBConfig_avm_readdata(in_lm8024_glfwChooseFBConfig_avm_readdata),
        .in_lm8024_glfwChooseFBConfig_avm_readdatavalid(in_lm8024_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm8024_glfwChooseFBConfig_avm_waitrequest(in_lm8024_glfwChooseFBConfig_avm_waitrequest),
        .in_lm8024_glfwChooseFBConfig_avm_writeack(in_lm8024_glfwChooseFBConfig_avm_writeack),
        .in_lm8525_glfwChooseFBConfig_avm_readdata(in_lm8525_glfwChooseFBConfig_avm_readdata),
        .in_lm8525_glfwChooseFBConfig_avm_readdatavalid(in_lm8525_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm8525_glfwChooseFBConfig_avm_waitrequest(in_lm8525_glfwChooseFBConfig_avm_waitrequest),
        .in_lm8525_glfwChooseFBConfig_avm_writeack(in_lm8525_glfwChooseFBConfig_avm_writeack),
        .in_lm8726_glfwChooseFBConfig_avm_readdata(in_lm8726_glfwChooseFBConfig_avm_readdata),
        .in_lm8726_glfwChooseFBConfig_avm_readdatavalid(in_lm8726_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm8726_glfwChooseFBConfig_avm_waitrequest(in_lm8726_glfwChooseFBConfig_avm_waitrequest),
        .in_lm8726_glfwChooseFBConfig_avm_writeack(in_lm8726_glfwChooseFBConfig_avm_writeack),
        .in_lm9227_glfwChooseFBConfig_avm_readdata(in_lm9227_glfwChooseFBConfig_avm_readdata),
        .in_lm9227_glfwChooseFBConfig_avm_readdatavalid(in_lm9227_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm9227_glfwChooseFBConfig_avm_waitrequest(in_lm9227_glfwChooseFBConfig_avm_waitrequest),
        .in_lm9227_glfwChooseFBConfig_avm_writeack(in_lm9227_glfwChooseFBConfig_avm_writeack),
        .in_lm9428_glfwChooseFBConfig_avm_readdata(in_lm9428_glfwChooseFBConfig_avm_readdata),
        .in_lm9428_glfwChooseFBConfig_avm_readdatavalid(in_lm9428_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm9428_glfwChooseFBConfig_avm_waitrequest(in_lm9428_glfwChooseFBConfig_avm_waitrequest),
        .in_lm9428_glfwChooseFBConfig_avm_writeack(in_lm9428_glfwChooseFBConfig_avm_writeack),
        .in_lm9929_glfwChooseFBConfig_avm_readdata(in_lm9929_glfwChooseFBConfig_avm_readdata),
        .in_lm9929_glfwChooseFBConfig_avm_readdatavalid(in_lm9929_glfwChooseFBConfig_avm_readdatavalid),
        .in_lm9929_glfwChooseFBConfig_avm_waitrequest(in_lm9929_glfwChooseFBConfig_avm_waitrequest),
        .in_lm9929_glfwChooseFBConfig_avm_writeack(in_lm9929_glfwChooseFBConfig_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(glfwChooseFBConfig_B2_branch_out_stall_out),
        .in_valid_in(glfwChooseFBConfig_B2_merge_out_valid_out),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .in_intel_reserved_ffwd_0_0_2_tpl(in_intel_reserved_ffwd_0_0_2_tpl),
        .in_intel_reserved_ffwd_0_0_3_tpl(in_intel_reserved_ffwd_0_0_3_tpl),
        .in_intel_reserved_ffwd_0_0_4_tpl(in_intel_reserved_ffwd_0_0_4_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out(bb_glfwChooseFBConfig_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out(bb_glfwChooseFBConfig_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out),
        .out_c0_exe20(bb_glfwChooseFBConfig_B2_stall_region_out_c0_exe20),
        .out_intel_reserved_ffwd_20_0(bb_glfwChooseFBConfig_B2_stall_region_out_intel_reserved_ffwd_20_0),
        .out_lm11630_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_address),
        .out_lm11630_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_burstcount),
        .out_lm11630_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_byteenable),
        .out_lm11630_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_enable),
        .out_lm11630_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_read),
        .out_lm11630_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_write),
        .out_lm11630_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_writedata),
        .out_lm11_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_address),
        .out_lm11_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_burstcount),
        .out_lm11_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_byteenable),
        .out_lm11_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_enable),
        .out_lm11_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_read),
        .out_lm11_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_write),
        .out_lm11_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_writedata),
        .out_lm12131_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_address),
        .out_lm12131_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_burstcount),
        .out_lm12131_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_byteenable),
        .out_lm12131_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_enable),
        .out_lm12131_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_read),
        .out_lm12131_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_write),
        .out_lm12131_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_writedata),
        .out_lm12332_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_address),
        .out_lm12332_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_burstcount),
        .out_lm12332_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_byteenable),
        .out_lm12332_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_enable),
        .out_lm12332_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_read),
        .out_lm12332_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_write),
        .out_lm12332_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_writedata),
        .out_lm12833_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_address),
        .out_lm12833_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_burstcount),
        .out_lm12833_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_byteenable),
        .out_lm12833_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_enable),
        .out_lm12833_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_read),
        .out_lm12833_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_write),
        .out_lm12833_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_writedata),
        .out_lm13034_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_address),
        .out_lm13034_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_burstcount),
        .out_lm13034_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_byteenable),
        .out_lm13034_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_enable),
        .out_lm13034_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_read),
        .out_lm13034_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_write),
        .out_lm13034_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_writedata),
        .out_lm13535_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_address),
        .out_lm13535_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_burstcount),
        .out_lm13535_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_byteenable),
        .out_lm13535_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_enable),
        .out_lm13535_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_read),
        .out_lm13535_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_write),
        .out_lm13535_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_writedata),
        .out_lm13736_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_address),
        .out_lm13736_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_burstcount),
        .out_lm13736_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_byteenable),
        .out_lm13736_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_enable),
        .out_lm13736_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_read),
        .out_lm13736_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_write),
        .out_lm13736_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_writedata),
        .out_lm14237_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_address),
        .out_lm14237_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_burstcount),
        .out_lm14237_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_byteenable),
        .out_lm14237_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_enable),
        .out_lm14237_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_read),
        .out_lm14237_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_write),
        .out_lm14237_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_writedata),
        .out_lm14938_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_address),
        .out_lm14938_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_burstcount),
        .out_lm14938_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_byteenable),
        .out_lm14938_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_enable),
        .out_lm14938_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_read),
        .out_lm14938_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_write),
        .out_lm14938_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_writedata),
        .out_lm15439_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_address),
        .out_lm15439_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_burstcount),
        .out_lm15439_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_byteenable),
        .out_lm15439_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_enable),
        .out_lm15439_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_read),
        .out_lm15439_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_write),
        .out_lm15439_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_writedata),
        .out_lm3912_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_address),
        .out_lm3912_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_burstcount),
        .out_lm3912_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_byteenable),
        .out_lm3912_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_enable),
        .out_lm3912_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_read),
        .out_lm3912_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_write),
        .out_lm3912_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_writedata),
        .out_lm4113_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_address),
        .out_lm4113_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_burstcount),
        .out_lm4113_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_byteenable),
        .out_lm4113_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_enable),
        .out_lm4113_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_read),
        .out_lm4113_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_write),
        .out_lm4113_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_writedata),
        .out_lm4514_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_address),
        .out_lm4514_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_burstcount),
        .out_lm4514_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_byteenable),
        .out_lm4514_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_enable),
        .out_lm4514_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_read),
        .out_lm4514_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_write),
        .out_lm4514_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_writedata),
        .out_lm5015_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_address),
        .out_lm5015_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_burstcount),
        .out_lm5015_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_byteenable),
        .out_lm5015_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_enable),
        .out_lm5015_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_read),
        .out_lm5015_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_write),
        .out_lm5015_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_writedata),
        .out_lm5216_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_address),
        .out_lm5216_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_burstcount),
        .out_lm5216_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_byteenable),
        .out_lm5216_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_enable),
        .out_lm5216_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_read),
        .out_lm5216_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_write),
        .out_lm5216_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_writedata),
        .out_lm5717_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_address),
        .out_lm5717_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_burstcount),
        .out_lm5717_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_byteenable),
        .out_lm5717_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_enable),
        .out_lm5717_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_read),
        .out_lm5717_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_write),
        .out_lm5717_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_writedata),
        .out_lm5918_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_address),
        .out_lm5918_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_burstcount),
        .out_lm5918_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_byteenable),
        .out_lm5918_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_enable),
        .out_lm5918_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_read),
        .out_lm5918_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_write),
        .out_lm5918_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_writedata),
        .out_lm6419_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_address),
        .out_lm6419_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_burstcount),
        .out_lm6419_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_byteenable),
        .out_lm6419_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_enable),
        .out_lm6419_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_read),
        .out_lm6419_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_write),
        .out_lm6419_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_writedata),
        .out_lm6620_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_address),
        .out_lm6620_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_burstcount),
        .out_lm6620_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_byteenable),
        .out_lm6620_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_enable),
        .out_lm6620_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_read),
        .out_lm6620_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_write),
        .out_lm6620_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_writedata),
        .out_lm7121_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_address),
        .out_lm7121_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_burstcount),
        .out_lm7121_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_byteenable),
        .out_lm7121_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_enable),
        .out_lm7121_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_read),
        .out_lm7121_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_write),
        .out_lm7121_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_writedata),
        .out_lm7322_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_address),
        .out_lm7322_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_burstcount),
        .out_lm7322_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_byteenable),
        .out_lm7322_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_enable),
        .out_lm7322_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_read),
        .out_lm7322_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_write),
        .out_lm7322_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_writedata),
        .out_lm7823_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_address),
        .out_lm7823_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_burstcount),
        .out_lm7823_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_byteenable),
        .out_lm7823_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_enable),
        .out_lm7823_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_read),
        .out_lm7823_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_write),
        .out_lm7823_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_writedata),
        .out_lm8024_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_address),
        .out_lm8024_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_burstcount),
        .out_lm8024_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_byteenable),
        .out_lm8024_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_enable),
        .out_lm8024_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_read),
        .out_lm8024_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_write),
        .out_lm8024_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_writedata),
        .out_lm8525_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_address),
        .out_lm8525_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_burstcount),
        .out_lm8525_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_byteenable),
        .out_lm8525_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_enable),
        .out_lm8525_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_read),
        .out_lm8525_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_write),
        .out_lm8525_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_writedata),
        .out_lm8726_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_address),
        .out_lm8726_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_burstcount),
        .out_lm8726_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_byteenable),
        .out_lm8726_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_enable),
        .out_lm8726_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_read),
        .out_lm8726_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_write),
        .out_lm8726_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_writedata),
        .out_lm9227_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_address),
        .out_lm9227_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_burstcount),
        .out_lm9227_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_byteenable),
        .out_lm9227_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_enable),
        .out_lm9227_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_read),
        .out_lm9227_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_write),
        .out_lm9227_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_writedata),
        .out_lm9428_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_address),
        .out_lm9428_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_burstcount),
        .out_lm9428_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_byteenable),
        .out_lm9428_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_enable),
        .out_lm9428_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_read),
        .out_lm9428_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_write),
        .out_lm9428_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_writedata),
        .out_lm9929_glfwChooseFBConfig_avm_address(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_address),
        .out_lm9929_glfwChooseFBConfig_avm_burstcount(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_burstcount),
        .out_lm9929_glfwChooseFBConfig_avm_byteenable(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_byteenable),
        .out_lm9929_glfwChooseFBConfig_avm_enable(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_enable),
        .out_lm9929_glfwChooseFBConfig_avm_read(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_read),
        .out_lm9929_glfwChooseFBConfig_avm_write(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_write),
        .out_lm9929_glfwChooseFBConfig_avm_writedata(bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_writedata),
        .out_pipeline_valid_out(bb_glfwChooseFBConfig_B2_stall_region_out_pipeline_valid_out),
        .out_stall_out(bb_glfwChooseFBConfig_B2_stall_region_out_stall_out),
        .out_valid_out(bb_glfwChooseFBConfig_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // out_exiting_stall_out(GPOUT,5)
    assign out_exiting_stall_out = bb_glfwChooseFBConfig_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_stall_out;

    // out_exiting_valid_out(GPOUT,6)
    assign out_exiting_valid_out = bb_glfwChooseFBConfig_B2_stall_region_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_glfwchoosefbconfig6_exiting_valid_out;

    // out_intel_reserved_ffwd_20_0(GPOUT,7)
    assign out_intel_reserved_ffwd_20_0 = bb_glfwChooseFBConfig_B2_stall_region_out_intel_reserved_ffwd_20_0;

    // out_lm11630_glfwChooseFBConfig_avm_address(GPOUT,8)
    assign out_lm11630_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_address;

    // out_lm11630_glfwChooseFBConfig_avm_burstcount(GPOUT,9)
    assign out_lm11630_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_burstcount;

    // out_lm11630_glfwChooseFBConfig_avm_byteenable(GPOUT,10)
    assign out_lm11630_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_byteenable;

    // out_lm11630_glfwChooseFBConfig_avm_enable(GPOUT,11)
    assign out_lm11630_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_enable;

    // out_lm11630_glfwChooseFBConfig_avm_read(GPOUT,12)
    assign out_lm11630_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_read;

    // out_lm11630_glfwChooseFBConfig_avm_write(GPOUT,13)
    assign out_lm11630_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_write;

    // out_lm11630_glfwChooseFBConfig_avm_writedata(GPOUT,14)
    assign out_lm11630_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm11630_glfwChooseFBConfig_avm_writedata;

    // out_lm11_glfwChooseFBConfig_avm_address(GPOUT,15)
    assign out_lm11_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_address;

    // out_lm11_glfwChooseFBConfig_avm_burstcount(GPOUT,16)
    assign out_lm11_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_burstcount;

    // out_lm11_glfwChooseFBConfig_avm_byteenable(GPOUT,17)
    assign out_lm11_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_byteenable;

    // out_lm11_glfwChooseFBConfig_avm_enable(GPOUT,18)
    assign out_lm11_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_enable;

    // out_lm11_glfwChooseFBConfig_avm_read(GPOUT,19)
    assign out_lm11_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_read;

    // out_lm11_glfwChooseFBConfig_avm_write(GPOUT,20)
    assign out_lm11_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_write;

    // out_lm11_glfwChooseFBConfig_avm_writedata(GPOUT,21)
    assign out_lm11_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm11_glfwChooseFBConfig_avm_writedata;

    // out_lm12131_glfwChooseFBConfig_avm_address(GPOUT,22)
    assign out_lm12131_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_address;

    // out_lm12131_glfwChooseFBConfig_avm_burstcount(GPOUT,23)
    assign out_lm12131_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_burstcount;

    // out_lm12131_glfwChooseFBConfig_avm_byteenable(GPOUT,24)
    assign out_lm12131_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_byteenable;

    // out_lm12131_glfwChooseFBConfig_avm_enable(GPOUT,25)
    assign out_lm12131_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_enable;

    // out_lm12131_glfwChooseFBConfig_avm_read(GPOUT,26)
    assign out_lm12131_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_read;

    // out_lm12131_glfwChooseFBConfig_avm_write(GPOUT,27)
    assign out_lm12131_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_write;

    // out_lm12131_glfwChooseFBConfig_avm_writedata(GPOUT,28)
    assign out_lm12131_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm12131_glfwChooseFBConfig_avm_writedata;

    // out_lm12332_glfwChooseFBConfig_avm_address(GPOUT,29)
    assign out_lm12332_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_address;

    // out_lm12332_glfwChooseFBConfig_avm_burstcount(GPOUT,30)
    assign out_lm12332_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_burstcount;

    // out_lm12332_glfwChooseFBConfig_avm_byteenable(GPOUT,31)
    assign out_lm12332_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_byteenable;

    // out_lm12332_glfwChooseFBConfig_avm_enable(GPOUT,32)
    assign out_lm12332_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_enable;

    // out_lm12332_glfwChooseFBConfig_avm_read(GPOUT,33)
    assign out_lm12332_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_read;

    // out_lm12332_glfwChooseFBConfig_avm_write(GPOUT,34)
    assign out_lm12332_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_write;

    // out_lm12332_glfwChooseFBConfig_avm_writedata(GPOUT,35)
    assign out_lm12332_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm12332_glfwChooseFBConfig_avm_writedata;

    // out_lm12833_glfwChooseFBConfig_avm_address(GPOUT,36)
    assign out_lm12833_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_address;

    // out_lm12833_glfwChooseFBConfig_avm_burstcount(GPOUT,37)
    assign out_lm12833_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_burstcount;

    // out_lm12833_glfwChooseFBConfig_avm_byteenable(GPOUT,38)
    assign out_lm12833_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_byteenable;

    // out_lm12833_glfwChooseFBConfig_avm_enable(GPOUT,39)
    assign out_lm12833_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_enable;

    // out_lm12833_glfwChooseFBConfig_avm_read(GPOUT,40)
    assign out_lm12833_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_read;

    // out_lm12833_glfwChooseFBConfig_avm_write(GPOUT,41)
    assign out_lm12833_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_write;

    // out_lm12833_glfwChooseFBConfig_avm_writedata(GPOUT,42)
    assign out_lm12833_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm12833_glfwChooseFBConfig_avm_writedata;

    // out_lm13034_glfwChooseFBConfig_avm_address(GPOUT,43)
    assign out_lm13034_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_address;

    // out_lm13034_glfwChooseFBConfig_avm_burstcount(GPOUT,44)
    assign out_lm13034_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_burstcount;

    // out_lm13034_glfwChooseFBConfig_avm_byteenable(GPOUT,45)
    assign out_lm13034_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_byteenable;

    // out_lm13034_glfwChooseFBConfig_avm_enable(GPOUT,46)
    assign out_lm13034_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_enable;

    // out_lm13034_glfwChooseFBConfig_avm_read(GPOUT,47)
    assign out_lm13034_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_read;

    // out_lm13034_glfwChooseFBConfig_avm_write(GPOUT,48)
    assign out_lm13034_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_write;

    // out_lm13034_glfwChooseFBConfig_avm_writedata(GPOUT,49)
    assign out_lm13034_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm13034_glfwChooseFBConfig_avm_writedata;

    // out_lm13535_glfwChooseFBConfig_avm_address(GPOUT,50)
    assign out_lm13535_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_address;

    // out_lm13535_glfwChooseFBConfig_avm_burstcount(GPOUT,51)
    assign out_lm13535_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_burstcount;

    // out_lm13535_glfwChooseFBConfig_avm_byteenable(GPOUT,52)
    assign out_lm13535_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_byteenable;

    // out_lm13535_glfwChooseFBConfig_avm_enable(GPOUT,53)
    assign out_lm13535_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_enable;

    // out_lm13535_glfwChooseFBConfig_avm_read(GPOUT,54)
    assign out_lm13535_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_read;

    // out_lm13535_glfwChooseFBConfig_avm_write(GPOUT,55)
    assign out_lm13535_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_write;

    // out_lm13535_glfwChooseFBConfig_avm_writedata(GPOUT,56)
    assign out_lm13535_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm13535_glfwChooseFBConfig_avm_writedata;

    // out_lm13736_glfwChooseFBConfig_avm_address(GPOUT,57)
    assign out_lm13736_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_address;

    // out_lm13736_glfwChooseFBConfig_avm_burstcount(GPOUT,58)
    assign out_lm13736_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_burstcount;

    // out_lm13736_glfwChooseFBConfig_avm_byteenable(GPOUT,59)
    assign out_lm13736_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_byteenable;

    // out_lm13736_glfwChooseFBConfig_avm_enable(GPOUT,60)
    assign out_lm13736_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_enable;

    // out_lm13736_glfwChooseFBConfig_avm_read(GPOUT,61)
    assign out_lm13736_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_read;

    // out_lm13736_glfwChooseFBConfig_avm_write(GPOUT,62)
    assign out_lm13736_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_write;

    // out_lm13736_glfwChooseFBConfig_avm_writedata(GPOUT,63)
    assign out_lm13736_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm13736_glfwChooseFBConfig_avm_writedata;

    // out_lm14237_glfwChooseFBConfig_avm_address(GPOUT,64)
    assign out_lm14237_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_address;

    // out_lm14237_glfwChooseFBConfig_avm_burstcount(GPOUT,65)
    assign out_lm14237_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_burstcount;

    // out_lm14237_glfwChooseFBConfig_avm_byteenable(GPOUT,66)
    assign out_lm14237_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_byteenable;

    // out_lm14237_glfwChooseFBConfig_avm_enable(GPOUT,67)
    assign out_lm14237_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_enable;

    // out_lm14237_glfwChooseFBConfig_avm_read(GPOUT,68)
    assign out_lm14237_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_read;

    // out_lm14237_glfwChooseFBConfig_avm_write(GPOUT,69)
    assign out_lm14237_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_write;

    // out_lm14237_glfwChooseFBConfig_avm_writedata(GPOUT,70)
    assign out_lm14237_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm14237_glfwChooseFBConfig_avm_writedata;

    // out_lm14938_glfwChooseFBConfig_avm_address(GPOUT,71)
    assign out_lm14938_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_address;

    // out_lm14938_glfwChooseFBConfig_avm_burstcount(GPOUT,72)
    assign out_lm14938_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_burstcount;

    // out_lm14938_glfwChooseFBConfig_avm_byteenable(GPOUT,73)
    assign out_lm14938_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_byteenable;

    // out_lm14938_glfwChooseFBConfig_avm_enable(GPOUT,74)
    assign out_lm14938_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_enable;

    // out_lm14938_glfwChooseFBConfig_avm_read(GPOUT,75)
    assign out_lm14938_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_read;

    // out_lm14938_glfwChooseFBConfig_avm_write(GPOUT,76)
    assign out_lm14938_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_write;

    // out_lm14938_glfwChooseFBConfig_avm_writedata(GPOUT,77)
    assign out_lm14938_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm14938_glfwChooseFBConfig_avm_writedata;

    // out_lm15439_glfwChooseFBConfig_avm_address(GPOUT,78)
    assign out_lm15439_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_address;

    // out_lm15439_glfwChooseFBConfig_avm_burstcount(GPOUT,79)
    assign out_lm15439_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_burstcount;

    // out_lm15439_glfwChooseFBConfig_avm_byteenable(GPOUT,80)
    assign out_lm15439_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_byteenable;

    // out_lm15439_glfwChooseFBConfig_avm_enable(GPOUT,81)
    assign out_lm15439_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_enable;

    // out_lm15439_glfwChooseFBConfig_avm_read(GPOUT,82)
    assign out_lm15439_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_read;

    // out_lm15439_glfwChooseFBConfig_avm_write(GPOUT,83)
    assign out_lm15439_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_write;

    // out_lm15439_glfwChooseFBConfig_avm_writedata(GPOUT,84)
    assign out_lm15439_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm15439_glfwChooseFBConfig_avm_writedata;

    // out_lm3912_glfwChooseFBConfig_avm_address(GPOUT,85)
    assign out_lm3912_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_address;

    // out_lm3912_glfwChooseFBConfig_avm_burstcount(GPOUT,86)
    assign out_lm3912_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_burstcount;

    // out_lm3912_glfwChooseFBConfig_avm_byteenable(GPOUT,87)
    assign out_lm3912_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_byteenable;

    // out_lm3912_glfwChooseFBConfig_avm_enable(GPOUT,88)
    assign out_lm3912_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_enable;

    // out_lm3912_glfwChooseFBConfig_avm_read(GPOUT,89)
    assign out_lm3912_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_read;

    // out_lm3912_glfwChooseFBConfig_avm_write(GPOUT,90)
    assign out_lm3912_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_write;

    // out_lm3912_glfwChooseFBConfig_avm_writedata(GPOUT,91)
    assign out_lm3912_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm3912_glfwChooseFBConfig_avm_writedata;

    // out_lm4113_glfwChooseFBConfig_avm_address(GPOUT,92)
    assign out_lm4113_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_address;

    // out_lm4113_glfwChooseFBConfig_avm_burstcount(GPOUT,93)
    assign out_lm4113_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_burstcount;

    // out_lm4113_glfwChooseFBConfig_avm_byteenable(GPOUT,94)
    assign out_lm4113_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_byteenable;

    // out_lm4113_glfwChooseFBConfig_avm_enable(GPOUT,95)
    assign out_lm4113_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_enable;

    // out_lm4113_glfwChooseFBConfig_avm_read(GPOUT,96)
    assign out_lm4113_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_read;

    // out_lm4113_glfwChooseFBConfig_avm_write(GPOUT,97)
    assign out_lm4113_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_write;

    // out_lm4113_glfwChooseFBConfig_avm_writedata(GPOUT,98)
    assign out_lm4113_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm4113_glfwChooseFBConfig_avm_writedata;

    // out_lm4514_glfwChooseFBConfig_avm_address(GPOUT,99)
    assign out_lm4514_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_address;

    // out_lm4514_glfwChooseFBConfig_avm_burstcount(GPOUT,100)
    assign out_lm4514_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_burstcount;

    // out_lm4514_glfwChooseFBConfig_avm_byteenable(GPOUT,101)
    assign out_lm4514_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_byteenable;

    // out_lm4514_glfwChooseFBConfig_avm_enable(GPOUT,102)
    assign out_lm4514_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_enable;

    // out_lm4514_glfwChooseFBConfig_avm_read(GPOUT,103)
    assign out_lm4514_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_read;

    // out_lm4514_glfwChooseFBConfig_avm_write(GPOUT,104)
    assign out_lm4514_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_write;

    // out_lm4514_glfwChooseFBConfig_avm_writedata(GPOUT,105)
    assign out_lm4514_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm4514_glfwChooseFBConfig_avm_writedata;

    // out_lm5015_glfwChooseFBConfig_avm_address(GPOUT,106)
    assign out_lm5015_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_address;

    // out_lm5015_glfwChooseFBConfig_avm_burstcount(GPOUT,107)
    assign out_lm5015_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_burstcount;

    // out_lm5015_glfwChooseFBConfig_avm_byteenable(GPOUT,108)
    assign out_lm5015_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_byteenable;

    // out_lm5015_glfwChooseFBConfig_avm_enable(GPOUT,109)
    assign out_lm5015_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_enable;

    // out_lm5015_glfwChooseFBConfig_avm_read(GPOUT,110)
    assign out_lm5015_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_read;

    // out_lm5015_glfwChooseFBConfig_avm_write(GPOUT,111)
    assign out_lm5015_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_write;

    // out_lm5015_glfwChooseFBConfig_avm_writedata(GPOUT,112)
    assign out_lm5015_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm5015_glfwChooseFBConfig_avm_writedata;

    // out_lm5216_glfwChooseFBConfig_avm_address(GPOUT,113)
    assign out_lm5216_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_address;

    // out_lm5216_glfwChooseFBConfig_avm_burstcount(GPOUT,114)
    assign out_lm5216_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_burstcount;

    // out_lm5216_glfwChooseFBConfig_avm_byteenable(GPOUT,115)
    assign out_lm5216_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_byteenable;

    // out_lm5216_glfwChooseFBConfig_avm_enable(GPOUT,116)
    assign out_lm5216_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_enable;

    // out_lm5216_glfwChooseFBConfig_avm_read(GPOUT,117)
    assign out_lm5216_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_read;

    // out_lm5216_glfwChooseFBConfig_avm_write(GPOUT,118)
    assign out_lm5216_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_write;

    // out_lm5216_glfwChooseFBConfig_avm_writedata(GPOUT,119)
    assign out_lm5216_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm5216_glfwChooseFBConfig_avm_writedata;

    // out_lm5717_glfwChooseFBConfig_avm_address(GPOUT,120)
    assign out_lm5717_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_address;

    // out_lm5717_glfwChooseFBConfig_avm_burstcount(GPOUT,121)
    assign out_lm5717_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_burstcount;

    // out_lm5717_glfwChooseFBConfig_avm_byteenable(GPOUT,122)
    assign out_lm5717_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_byteenable;

    // out_lm5717_glfwChooseFBConfig_avm_enable(GPOUT,123)
    assign out_lm5717_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_enable;

    // out_lm5717_glfwChooseFBConfig_avm_read(GPOUT,124)
    assign out_lm5717_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_read;

    // out_lm5717_glfwChooseFBConfig_avm_write(GPOUT,125)
    assign out_lm5717_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_write;

    // out_lm5717_glfwChooseFBConfig_avm_writedata(GPOUT,126)
    assign out_lm5717_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm5717_glfwChooseFBConfig_avm_writedata;

    // out_lm5918_glfwChooseFBConfig_avm_address(GPOUT,127)
    assign out_lm5918_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_address;

    // out_lm5918_glfwChooseFBConfig_avm_burstcount(GPOUT,128)
    assign out_lm5918_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_burstcount;

    // out_lm5918_glfwChooseFBConfig_avm_byteenable(GPOUT,129)
    assign out_lm5918_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_byteenable;

    // out_lm5918_glfwChooseFBConfig_avm_enable(GPOUT,130)
    assign out_lm5918_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_enable;

    // out_lm5918_glfwChooseFBConfig_avm_read(GPOUT,131)
    assign out_lm5918_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_read;

    // out_lm5918_glfwChooseFBConfig_avm_write(GPOUT,132)
    assign out_lm5918_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_write;

    // out_lm5918_glfwChooseFBConfig_avm_writedata(GPOUT,133)
    assign out_lm5918_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm5918_glfwChooseFBConfig_avm_writedata;

    // out_lm6419_glfwChooseFBConfig_avm_address(GPOUT,134)
    assign out_lm6419_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_address;

    // out_lm6419_glfwChooseFBConfig_avm_burstcount(GPOUT,135)
    assign out_lm6419_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_burstcount;

    // out_lm6419_glfwChooseFBConfig_avm_byteenable(GPOUT,136)
    assign out_lm6419_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_byteenable;

    // out_lm6419_glfwChooseFBConfig_avm_enable(GPOUT,137)
    assign out_lm6419_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_enable;

    // out_lm6419_glfwChooseFBConfig_avm_read(GPOUT,138)
    assign out_lm6419_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_read;

    // out_lm6419_glfwChooseFBConfig_avm_write(GPOUT,139)
    assign out_lm6419_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_write;

    // out_lm6419_glfwChooseFBConfig_avm_writedata(GPOUT,140)
    assign out_lm6419_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm6419_glfwChooseFBConfig_avm_writedata;

    // out_lm6620_glfwChooseFBConfig_avm_address(GPOUT,141)
    assign out_lm6620_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_address;

    // out_lm6620_glfwChooseFBConfig_avm_burstcount(GPOUT,142)
    assign out_lm6620_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_burstcount;

    // out_lm6620_glfwChooseFBConfig_avm_byteenable(GPOUT,143)
    assign out_lm6620_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_byteenable;

    // out_lm6620_glfwChooseFBConfig_avm_enable(GPOUT,144)
    assign out_lm6620_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_enable;

    // out_lm6620_glfwChooseFBConfig_avm_read(GPOUT,145)
    assign out_lm6620_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_read;

    // out_lm6620_glfwChooseFBConfig_avm_write(GPOUT,146)
    assign out_lm6620_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_write;

    // out_lm6620_glfwChooseFBConfig_avm_writedata(GPOUT,147)
    assign out_lm6620_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm6620_glfwChooseFBConfig_avm_writedata;

    // out_lm7121_glfwChooseFBConfig_avm_address(GPOUT,148)
    assign out_lm7121_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_address;

    // out_lm7121_glfwChooseFBConfig_avm_burstcount(GPOUT,149)
    assign out_lm7121_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_burstcount;

    // out_lm7121_glfwChooseFBConfig_avm_byteenable(GPOUT,150)
    assign out_lm7121_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_byteenable;

    // out_lm7121_glfwChooseFBConfig_avm_enable(GPOUT,151)
    assign out_lm7121_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_enable;

    // out_lm7121_glfwChooseFBConfig_avm_read(GPOUT,152)
    assign out_lm7121_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_read;

    // out_lm7121_glfwChooseFBConfig_avm_write(GPOUT,153)
    assign out_lm7121_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_write;

    // out_lm7121_glfwChooseFBConfig_avm_writedata(GPOUT,154)
    assign out_lm7121_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm7121_glfwChooseFBConfig_avm_writedata;

    // out_lm7322_glfwChooseFBConfig_avm_address(GPOUT,155)
    assign out_lm7322_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_address;

    // out_lm7322_glfwChooseFBConfig_avm_burstcount(GPOUT,156)
    assign out_lm7322_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_burstcount;

    // out_lm7322_glfwChooseFBConfig_avm_byteenable(GPOUT,157)
    assign out_lm7322_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_byteenable;

    // out_lm7322_glfwChooseFBConfig_avm_enable(GPOUT,158)
    assign out_lm7322_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_enable;

    // out_lm7322_glfwChooseFBConfig_avm_read(GPOUT,159)
    assign out_lm7322_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_read;

    // out_lm7322_glfwChooseFBConfig_avm_write(GPOUT,160)
    assign out_lm7322_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_write;

    // out_lm7322_glfwChooseFBConfig_avm_writedata(GPOUT,161)
    assign out_lm7322_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm7322_glfwChooseFBConfig_avm_writedata;

    // out_lm7823_glfwChooseFBConfig_avm_address(GPOUT,162)
    assign out_lm7823_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_address;

    // out_lm7823_glfwChooseFBConfig_avm_burstcount(GPOUT,163)
    assign out_lm7823_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_burstcount;

    // out_lm7823_glfwChooseFBConfig_avm_byteenable(GPOUT,164)
    assign out_lm7823_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_byteenable;

    // out_lm7823_glfwChooseFBConfig_avm_enable(GPOUT,165)
    assign out_lm7823_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_enable;

    // out_lm7823_glfwChooseFBConfig_avm_read(GPOUT,166)
    assign out_lm7823_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_read;

    // out_lm7823_glfwChooseFBConfig_avm_write(GPOUT,167)
    assign out_lm7823_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_write;

    // out_lm7823_glfwChooseFBConfig_avm_writedata(GPOUT,168)
    assign out_lm7823_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm7823_glfwChooseFBConfig_avm_writedata;

    // out_lm8024_glfwChooseFBConfig_avm_address(GPOUT,169)
    assign out_lm8024_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_address;

    // out_lm8024_glfwChooseFBConfig_avm_burstcount(GPOUT,170)
    assign out_lm8024_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_burstcount;

    // out_lm8024_glfwChooseFBConfig_avm_byteenable(GPOUT,171)
    assign out_lm8024_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_byteenable;

    // out_lm8024_glfwChooseFBConfig_avm_enable(GPOUT,172)
    assign out_lm8024_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_enable;

    // out_lm8024_glfwChooseFBConfig_avm_read(GPOUT,173)
    assign out_lm8024_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_read;

    // out_lm8024_glfwChooseFBConfig_avm_write(GPOUT,174)
    assign out_lm8024_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_write;

    // out_lm8024_glfwChooseFBConfig_avm_writedata(GPOUT,175)
    assign out_lm8024_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm8024_glfwChooseFBConfig_avm_writedata;

    // out_lm8525_glfwChooseFBConfig_avm_address(GPOUT,176)
    assign out_lm8525_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_address;

    // out_lm8525_glfwChooseFBConfig_avm_burstcount(GPOUT,177)
    assign out_lm8525_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_burstcount;

    // out_lm8525_glfwChooseFBConfig_avm_byteenable(GPOUT,178)
    assign out_lm8525_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_byteenable;

    // out_lm8525_glfwChooseFBConfig_avm_enable(GPOUT,179)
    assign out_lm8525_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_enable;

    // out_lm8525_glfwChooseFBConfig_avm_read(GPOUT,180)
    assign out_lm8525_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_read;

    // out_lm8525_glfwChooseFBConfig_avm_write(GPOUT,181)
    assign out_lm8525_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_write;

    // out_lm8525_glfwChooseFBConfig_avm_writedata(GPOUT,182)
    assign out_lm8525_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm8525_glfwChooseFBConfig_avm_writedata;

    // out_lm8726_glfwChooseFBConfig_avm_address(GPOUT,183)
    assign out_lm8726_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_address;

    // out_lm8726_glfwChooseFBConfig_avm_burstcount(GPOUT,184)
    assign out_lm8726_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_burstcount;

    // out_lm8726_glfwChooseFBConfig_avm_byteenable(GPOUT,185)
    assign out_lm8726_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_byteenable;

    // out_lm8726_glfwChooseFBConfig_avm_enable(GPOUT,186)
    assign out_lm8726_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_enable;

    // out_lm8726_glfwChooseFBConfig_avm_read(GPOUT,187)
    assign out_lm8726_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_read;

    // out_lm8726_glfwChooseFBConfig_avm_write(GPOUT,188)
    assign out_lm8726_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_write;

    // out_lm8726_glfwChooseFBConfig_avm_writedata(GPOUT,189)
    assign out_lm8726_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm8726_glfwChooseFBConfig_avm_writedata;

    // out_lm9227_glfwChooseFBConfig_avm_address(GPOUT,190)
    assign out_lm9227_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_address;

    // out_lm9227_glfwChooseFBConfig_avm_burstcount(GPOUT,191)
    assign out_lm9227_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_burstcount;

    // out_lm9227_glfwChooseFBConfig_avm_byteenable(GPOUT,192)
    assign out_lm9227_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_byteenable;

    // out_lm9227_glfwChooseFBConfig_avm_enable(GPOUT,193)
    assign out_lm9227_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_enable;

    // out_lm9227_glfwChooseFBConfig_avm_read(GPOUT,194)
    assign out_lm9227_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_read;

    // out_lm9227_glfwChooseFBConfig_avm_write(GPOUT,195)
    assign out_lm9227_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_write;

    // out_lm9227_glfwChooseFBConfig_avm_writedata(GPOUT,196)
    assign out_lm9227_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm9227_glfwChooseFBConfig_avm_writedata;

    // out_lm9428_glfwChooseFBConfig_avm_address(GPOUT,197)
    assign out_lm9428_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_address;

    // out_lm9428_glfwChooseFBConfig_avm_burstcount(GPOUT,198)
    assign out_lm9428_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_burstcount;

    // out_lm9428_glfwChooseFBConfig_avm_byteenable(GPOUT,199)
    assign out_lm9428_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_byteenable;

    // out_lm9428_glfwChooseFBConfig_avm_enable(GPOUT,200)
    assign out_lm9428_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_enable;

    // out_lm9428_glfwChooseFBConfig_avm_read(GPOUT,201)
    assign out_lm9428_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_read;

    // out_lm9428_glfwChooseFBConfig_avm_write(GPOUT,202)
    assign out_lm9428_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_write;

    // out_lm9428_glfwChooseFBConfig_avm_writedata(GPOUT,203)
    assign out_lm9428_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm9428_glfwChooseFBConfig_avm_writedata;

    // out_lm9929_glfwChooseFBConfig_avm_address(GPOUT,204)
    assign out_lm9929_glfwChooseFBConfig_avm_address = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_address;

    // out_lm9929_glfwChooseFBConfig_avm_burstcount(GPOUT,205)
    assign out_lm9929_glfwChooseFBConfig_avm_burstcount = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_burstcount;

    // out_lm9929_glfwChooseFBConfig_avm_byteenable(GPOUT,206)
    assign out_lm9929_glfwChooseFBConfig_avm_byteenable = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_byteenable;

    // out_lm9929_glfwChooseFBConfig_avm_enable(GPOUT,207)
    assign out_lm9929_glfwChooseFBConfig_avm_enable = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_enable;

    // out_lm9929_glfwChooseFBConfig_avm_read(GPOUT,208)
    assign out_lm9929_glfwChooseFBConfig_avm_read = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_read;

    // out_lm9929_glfwChooseFBConfig_avm_write(GPOUT,209)
    assign out_lm9929_glfwChooseFBConfig_avm_write = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_write;

    // out_lm9929_glfwChooseFBConfig_avm_writedata(GPOUT,210)
    assign out_lm9929_glfwChooseFBConfig_avm_writedata = bb_glfwChooseFBConfig_B2_stall_region_out_lm9929_glfwChooseFBConfig_avm_writedata;

    // out_stall_out_0(GPOUT,211)
    assign out_stall_out_0 = glfwChooseFBConfig_B2_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,212)
    assign out_stall_out_1 = glfwChooseFBConfig_B2_merge_out_stall_out_1;

    // out_valid_out_0(GPOUT,213)
    assign out_valid_out_0 = glfwChooseFBConfig_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,214)
    assign out_valid_out_1 = glfwChooseFBConfig_B2_branch_out_valid_out_1;

    // pipeline_valid_out_sync(GPOUT,216)
    assign out_pipeline_valid_out = bb_glfwChooseFBConfig_B2_stall_region_out_pipeline_valid_out;

endmodule
