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

// SystemVerilog created from glfwChooseFBConfig_function_wrapper
// SystemVerilog created on Sun May 24 22:33:25 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_function_wrapper (
    input wire [63:0] GLFW_DONT_CARE,
    input wire [63:0] UINT_MAX,
    input wire [63:0] alternatives,
    input wire [63:0] avm_lm10331_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm10331_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm10331_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm10331_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm11_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm11_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm11_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm11_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm12032_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm12032_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm12032_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm12032_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm12533_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm12533_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm12533_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm12533_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm12734_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm12734_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm12734_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm12734_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm13235_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm13235_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm13235_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm13235_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm13436_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm13436_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm13436_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm13436_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm13937_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm13937_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm13937_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm13937_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm14138_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm14138_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm14138_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm14138_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm14639_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm14639_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm14639_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm14639_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm15340_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm15340_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm15340_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm15340_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm15841_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm15841_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm15841_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm15841_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm1669_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm1669_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm1669_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm1669_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm16810_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm16810_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm16810_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm16810_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm3912_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm3912_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm3912_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm3912_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm4113_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm4113_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm4113_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm4113_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm4514_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm4514_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm4514_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm4514_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm5015_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm5015_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm5015_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm5015_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm5216_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm5216_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm5216_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm5216_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm5717_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm5717_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm5717_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm5717_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm5918_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm5918_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm5918_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm5918_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm6419_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm6419_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm6419_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm6419_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm6620_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm6620_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm6620_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm6620_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm7121_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm7121_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm7121_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm7121_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm7322_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm7322_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm7322_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm7322_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm7823_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm7823_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm7823_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm7823_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm8024_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm8024_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm8024_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm8024_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm8225_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm8225_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm8225_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm8225_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm8426_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm8426_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm8426_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm8426_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm8927_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm8927_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm8927_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm8927_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm9128_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm9128_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm9128_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm9128_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm9629_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm9629_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm9629_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm9629_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm9830_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm9830_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm9830_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm9830_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writeack,
    input wire [319:0] avst_iord_bl_call_glfwChooseFBConfig_data,
    input wire [0:0] avst_iord_bl_call_glfwChooseFBConfig_valid,
    input wire [0:0] avst_iowr_bl_return_glfwChooseFBConfig_almostfull,
    input wire [0:0] avst_iowr_bl_return_glfwChooseFBConfig_ready,
    input wire [31:0] count,
    input wire [63:0] desired,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm10331_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm10331_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm10331_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm10331_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm10331_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm10331_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm10331_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm11_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm11_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm11_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm12032_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm12032_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm12032_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm12032_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm12032_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm12032_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm12032_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm12533_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm12533_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm12533_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm12533_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm12533_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm12533_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm12533_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm12734_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm12734_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm12734_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm12734_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm12734_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm12734_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm12734_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm13235_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm13235_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm13235_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm13235_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm13235_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm13235_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm13235_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm13436_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm13436_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm13436_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm13436_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm13436_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm13436_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm13436_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm13937_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm13937_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm13937_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm13937_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm13937_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm13937_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm13937_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm14138_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm14138_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm14138_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm14138_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm14138_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm14138_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm14138_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm14639_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm14639_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm14639_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm14639_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm14639_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm14639_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm14639_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm15340_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm15340_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm15340_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm15340_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm15340_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm15340_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm15340_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm15841_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm15841_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm15841_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm15841_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm15841_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm15841_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm15841_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm1669_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm1669_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm1669_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm1669_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm1669_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm1669_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm1669_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm16810_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm16810_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm16810_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm16810_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm16810_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm16810_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm16810_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm3912_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm3912_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm3912_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm3912_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm3912_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm3912_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm3912_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm4113_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm4113_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm4113_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm4113_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm4113_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm4113_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm4113_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm4514_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm4514_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm4514_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm4514_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm4514_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm4514_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm4514_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm5015_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm5015_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm5015_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm5015_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm5015_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm5015_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm5015_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm5216_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm5216_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm5216_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm5216_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm5216_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm5216_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm5216_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm5717_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm5717_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm5717_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm5717_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm5717_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm5717_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm5717_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm5918_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm5918_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm5918_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm5918_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm5918_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm5918_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm5918_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm6419_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm6419_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm6419_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm6419_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm6419_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm6419_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm6419_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm6620_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm6620_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm6620_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm6620_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm6620_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm6620_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm6620_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm7121_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm7121_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm7121_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm7121_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm7121_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm7121_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm7121_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm7322_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm7322_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm7322_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm7322_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm7322_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm7322_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm7322_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm7823_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm7823_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm7823_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm7823_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm7823_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm7823_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm7823_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm8024_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm8024_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm8024_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm8024_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm8024_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm8024_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm8024_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm8225_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm8225_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm8225_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm8225_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm8225_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm8225_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm8225_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm8426_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm8426_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm8426_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm8426_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm8426_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm8426_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm8426_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm8927_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm8927_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm8927_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm8927_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm8927_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm8927_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm8927_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm9128_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm9128_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm9128_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm9128_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm9128_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm9128_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm9128_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm9629_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm9629_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm9629_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm9629_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm9629_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm9629_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm9629_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm9830_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm9830_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm9830_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm9830_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm9830_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm9830_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm9830_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_address,
    output wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_enable,
    output wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_read,
    output wire [0:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_write,
    output wire [63:0] avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writedata,
    output wire [0:0] avst_iord_bl_call_glfwChooseFBConfig_ready,
    output wire [63:0] avst_iowr_bl_return_glfwChooseFBConfig_data,
    output wire [0:0] avst_iowr_bl_return_glfwChooseFBConfig_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [63:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] alternatives_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [0:0] glfwChooseFBConfig_function_out_iord_bl_call_glfwChooseFBConfig_o_fifoready;
    wire [63:0] glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;
    wire [0:0] glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;
    wire [63:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata;
    wire [319:0] implicit_input_q;
    wire [31:0] implicit_input_pad_const_3_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,162)
    assign not_stall_q = ~ (stall);

    // implicit_input_pad_const_3(CONSTANT,11)
    assign implicit_input_pad_const_3_q = $unsigned(32'b00000000000000000000000000000000);

    // implicit_input(BITJOIN,10)
    assign implicit_input_q = {UINT_MAX, GLFW_DONT_CARE, implicit_input_pad_const_3_q, count, alternatives, desired};

    // alternatives_const(CONSTANT,2)
    assign alternatives_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // glfwChooseFBConfig_function(BLACKBOX,9)
    glfwChooseFBConfig_function theglfwChooseFBConfig_function (
        .in_arg_alternatives(alternatives_const_q),
        .in_arg_call(alternatives_const_q),
        .in_arg_desired(alternatives_const_q),
        .in_arg_return(alternatives_const_q),
        .in_iord_bl_call_glfwChooseFBConfig_i_fifodata(implicit_input_q),
        .in_iord_bl_call_glfwChooseFBConfig_i_fifovalid(start),
        .in_iowr_bl_return_glfwChooseFBConfig_i_fifoready(not_stall_q),
        .in_lm10331_glfwChooseFBConfig_avm_readdata(avm_lm10331_glfwChooseFBConfig_readdata),
        .in_lm10331_glfwChooseFBConfig_avm_readdatavalid(avm_lm10331_glfwChooseFBConfig_readdatavalid),
        .in_lm10331_glfwChooseFBConfig_avm_waitrequest(avm_lm10331_glfwChooseFBConfig_waitrequest),
        .in_lm10331_glfwChooseFBConfig_avm_writeack(avm_lm10331_glfwChooseFBConfig_writeack),
        .in_lm11_glfwChooseFBConfig_avm_readdata(avm_lm11_glfwChooseFBConfig_readdata),
        .in_lm11_glfwChooseFBConfig_avm_readdatavalid(avm_lm11_glfwChooseFBConfig_readdatavalid),
        .in_lm11_glfwChooseFBConfig_avm_waitrequest(avm_lm11_glfwChooseFBConfig_waitrequest),
        .in_lm11_glfwChooseFBConfig_avm_writeack(avm_lm11_glfwChooseFBConfig_writeack),
        .in_lm12032_glfwChooseFBConfig_avm_readdata(avm_lm12032_glfwChooseFBConfig_readdata),
        .in_lm12032_glfwChooseFBConfig_avm_readdatavalid(avm_lm12032_glfwChooseFBConfig_readdatavalid),
        .in_lm12032_glfwChooseFBConfig_avm_waitrequest(avm_lm12032_glfwChooseFBConfig_waitrequest),
        .in_lm12032_glfwChooseFBConfig_avm_writeack(avm_lm12032_glfwChooseFBConfig_writeack),
        .in_lm12533_glfwChooseFBConfig_avm_readdata(avm_lm12533_glfwChooseFBConfig_readdata),
        .in_lm12533_glfwChooseFBConfig_avm_readdatavalid(avm_lm12533_glfwChooseFBConfig_readdatavalid),
        .in_lm12533_glfwChooseFBConfig_avm_waitrequest(avm_lm12533_glfwChooseFBConfig_waitrequest),
        .in_lm12533_glfwChooseFBConfig_avm_writeack(avm_lm12533_glfwChooseFBConfig_writeack),
        .in_lm12734_glfwChooseFBConfig_avm_readdata(avm_lm12734_glfwChooseFBConfig_readdata),
        .in_lm12734_glfwChooseFBConfig_avm_readdatavalid(avm_lm12734_glfwChooseFBConfig_readdatavalid),
        .in_lm12734_glfwChooseFBConfig_avm_waitrequest(avm_lm12734_glfwChooseFBConfig_waitrequest),
        .in_lm12734_glfwChooseFBConfig_avm_writeack(avm_lm12734_glfwChooseFBConfig_writeack),
        .in_lm13235_glfwChooseFBConfig_avm_readdata(avm_lm13235_glfwChooseFBConfig_readdata),
        .in_lm13235_glfwChooseFBConfig_avm_readdatavalid(avm_lm13235_glfwChooseFBConfig_readdatavalid),
        .in_lm13235_glfwChooseFBConfig_avm_waitrequest(avm_lm13235_glfwChooseFBConfig_waitrequest),
        .in_lm13235_glfwChooseFBConfig_avm_writeack(avm_lm13235_glfwChooseFBConfig_writeack),
        .in_lm13436_glfwChooseFBConfig_avm_readdata(avm_lm13436_glfwChooseFBConfig_readdata),
        .in_lm13436_glfwChooseFBConfig_avm_readdatavalid(avm_lm13436_glfwChooseFBConfig_readdatavalid),
        .in_lm13436_glfwChooseFBConfig_avm_waitrequest(avm_lm13436_glfwChooseFBConfig_waitrequest),
        .in_lm13436_glfwChooseFBConfig_avm_writeack(avm_lm13436_glfwChooseFBConfig_writeack),
        .in_lm13937_glfwChooseFBConfig_avm_readdata(avm_lm13937_glfwChooseFBConfig_readdata),
        .in_lm13937_glfwChooseFBConfig_avm_readdatavalid(avm_lm13937_glfwChooseFBConfig_readdatavalid),
        .in_lm13937_glfwChooseFBConfig_avm_waitrequest(avm_lm13937_glfwChooseFBConfig_waitrequest),
        .in_lm13937_glfwChooseFBConfig_avm_writeack(avm_lm13937_glfwChooseFBConfig_writeack),
        .in_lm14138_glfwChooseFBConfig_avm_readdata(avm_lm14138_glfwChooseFBConfig_readdata),
        .in_lm14138_glfwChooseFBConfig_avm_readdatavalid(avm_lm14138_glfwChooseFBConfig_readdatavalid),
        .in_lm14138_glfwChooseFBConfig_avm_waitrequest(avm_lm14138_glfwChooseFBConfig_waitrequest),
        .in_lm14138_glfwChooseFBConfig_avm_writeack(avm_lm14138_glfwChooseFBConfig_writeack),
        .in_lm14639_glfwChooseFBConfig_avm_readdata(avm_lm14639_glfwChooseFBConfig_readdata),
        .in_lm14639_glfwChooseFBConfig_avm_readdatavalid(avm_lm14639_glfwChooseFBConfig_readdatavalid),
        .in_lm14639_glfwChooseFBConfig_avm_waitrequest(avm_lm14639_glfwChooseFBConfig_waitrequest),
        .in_lm14639_glfwChooseFBConfig_avm_writeack(avm_lm14639_glfwChooseFBConfig_writeack),
        .in_lm15340_glfwChooseFBConfig_avm_readdata(avm_lm15340_glfwChooseFBConfig_readdata),
        .in_lm15340_glfwChooseFBConfig_avm_readdatavalid(avm_lm15340_glfwChooseFBConfig_readdatavalid),
        .in_lm15340_glfwChooseFBConfig_avm_waitrequest(avm_lm15340_glfwChooseFBConfig_waitrequest),
        .in_lm15340_glfwChooseFBConfig_avm_writeack(avm_lm15340_glfwChooseFBConfig_writeack),
        .in_lm15841_glfwChooseFBConfig_avm_readdata(avm_lm15841_glfwChooseFBConfig_readdata),
        .in_lm15841_glfwChooseFBConfig_avm_readdatavalid(avm_lm15841_glfwChooseFBConfig_readdatavalid),
        .in_lm15841_glfwChooseFBConfig_avm_waitrequest(avm_lm15841_glfwChooseFBConfig_waitrequest),
        .in_lm15841_glfwChooseFBConfig_avm_writeack(avm_lm15841_glfwChooseFBConfig_writeack),
        .in_lm1669_glfwChooseFBConfig_avm_readdata(avm_lm1669_glfwChooseFBConfig_readdata),
        .in_lm1669_glfwChooseFBConfig_avm_readdatavalid(avm_lm1669_glfwChooseFBConfig_readdatavalid),
        .in_lm1669_glfwChooseFBConfig_avm_waitrequest(avm_lm1669_glfwChooseFBConfig_waitrequest),
        .in_lm1669_glfwChooseFBConfig_avm_writeack(avm_lm1669_glfwChooseFBConfig_writeack),
        .in_lm16810_glfwChooseFBConfig_avm_readdata(avm_lm16810_glfwChooseFBConfig_readdata),
        .in_lm16810_glfwChooseFBConfig_avm_readdatavalid(avm_lm16810_glfwChooseFBConfig_readdatavalid),
        .in_lm16810_glfwChooseFBConfig_avm_waitrequest(avm_lm16810_glfwChooseFBConfig_waitrequest),
        .in_lm16810_glfwChooseFBConfig_avm_writeack(avm_lm16810_glfwChooseFBConfig_writeack),
        .in_lm3912_glfwChooseFBConfig_avm_readdata(avm_lm3912_glfwChooseFBConfig_readdata),
        .in_lm3912_glfwChooseFBConfig_avm_readdatavalid(avm_lm3912_glfwChooseFBConfig_readdatavalid),
        .in_lm3912_glfwChooseFBConfig_avm_waitrequest(avm_lm3912_glfwChooseFBConfig_waitrequest),
        .in_lm3912_glfwChooseFBConfig_avm_writeack(avm_lm3912_glfwChooseFBConfig_writeack),
        .in_lm4113_glfwChooseFBConfig_avm_readdata(avm_lm4113_glfwChooseFBConfig_readdata),
        .in_lm4113_glfwChooseFBConfig_avm_readdatavalid(avm_lm4113_glfwChooseFBConfig_readdatavalid),
        .in_lm4113_glfwChooseFBConfig_avm_waitrequest(avm_lm4113_glfwChooseFBConfig_waitrequest),
        .in_lm4113_glfwChooseFBConfig_avm_writeack(avm_lm4113_glfwChooseFBConfig_writeack),
        .in_lm4514_glfwChooseFBConfig_avm_readdata(avm_lm4514_glfwChooseFBConfig_readdata),
        .in_lm4514_glfwChooseFBConfig_avm_readdatavalid(avm_lm4514_glfwChooseFBConfig_readdatavalid),
        .in_lm4514_glfwChooseFBConfig_avm_waitrequest(avm_lm4514_glfwChooseFBConfig_waitrequest),
        .in_lm4514_glfwChooseFBConfig_avm_writeack(avm_lm4514_glfwChooseFBConfig_writeack),
        .in_lm5015_glfwChooseFBConfig_avm_readdata(avm_lm5015_glfwChooseFBConfig_readdata),
        .in_lm5015_glfwChooseFBConfig_avm_readdatavalid(avm_lm5015_glfwChooseFBConfig_readdatavalid),
        .in_lm5015_glfwChooseFBConfig_avm_waitrequest(avm_lm5015_glfwChooseFBConfig_waitrequest),
        .in_lm5015_glfwChooseFBConfig_avm_writeack(avm_lm5015_glfwChooseFBConfig_writeack),
        .in_lm5216_glfwChooseFBConfig_avm_readdata(avm_lm5216_glfwChooseFBConfig_readdata),
        .in_lm5216_glfwChooseFBConfig_avm_readdatavalid(avm_lm5216_glfwChooseFBConfig_readdatavalid),
        .in_lm5216_glfwChooseFBConfig_avm_waitrequest(avm_lm5216_glfwChooseFBConfig_waitrequest),
        .in_lm5216_glfwChooseFBConfig_avm_writeack(avm_lm5216_glfwChooseFBConfig_writeack),
        .in_lm5717_glfwChooseFBConfig_avm_readdata(avm_lm5717_glfwChooseFBConfig_readdata),
        .in_lm5717_glfwChooseFBConfig_avm_readdatavalid(avm_lm5717_glfwChooseFBConfig_readdatavalid),
        .in_lm5717_glfwChooseFBConfig_avm_waitrequest(avm_lm5717_glfwChooseFBConfig_waitrequest),
        .in_lm5717_glfwChooseFBConfig_avm_writeack(avm_lm5717_glfwChooseFBConfig_writeack),
        .in_lm5918_glfwChooseFBConfig_avm_readdata(avm_lm5918_glfwChooseFBConfig_readdata),
        .in_lm5918_glfwChooseFBConfig_avm_readdatavalid(avm_lm5918_glfwChooseFBConfig_readdatavalid),
        .in_lm5918_glfwChooseFBConfig_avm_waitrequest(avm_lm5918_glfwChooseFBConfig_waitrequest),
        .in_lm5918_glfwChooseFBConfig_avm_writeack(avm_lm5918_glfwChooseFBConfig_writeack),
        .in_lm6419_glfwChooseFBConfig_avm_readdata(avm_lm6419_glfwChooseFBConfig_readdata),
        .in_lm6419_glfwChooseFBConfig_avm_readdatavalid(avm_lm6419_glfwChooseFBConfig_readdatavalid),
        .in_lm6419_glfwChooseFBConfig_avm_waitrequest(avm_lm6419_glfwChooseFBConfig_waitrequest),
        .in_lm6419_glfwChooseFBConfig_avm_writeack(avm_lm6419_glfwChooseFBConfig_writeack),
        .in_lm6620_glfwChooseFBConfig_avm_readdata(avm_lm6620_glfwChooseFBConfig_readdata),
        .in_lm6620_glfwChooseFBConfig_avm_readdatavalid(avm_lm6620_glfwChooseFBConfig_readdatavalid),
        .in_lm6620_glfwChooseFBConfig_avm_waitrequest(avm_lm6620_glfwChooseFBConfig_waitrequest),
        .in_lm6620_glfwChooseFBConfig_avm_writeack(avm_lm6620_glfwChooseFBConfig_writeack),
        .in_lm7121_glfwChooseFBConfig_avm_readdata(avm_lm7121_glfwChooseFBConfig_readdata),
        .in_lm7121_glfwChooseFBConfig_avm_readdatavalid(avm_lm7121_glfwChooseFBConfig_readdatavalid),
        .in_lm7121_glfwChooseFBConfig_avm_waitrequest(avm_lm7121_glfwChooseFBConfig_waitrequest),
        .in_lm7121_glfwChooseFBConfig_avm_writeack(avm_lm7121_glfwChooseFBConfig_writeack),
        .in_lm7322_glfwChooseFBConfig_avm_readdata(avm_lm7322_glfwChooseFBConfig_readdata),
        .in_lm7322_glfwChooseFBConfig_avm_readdatavalid(avm_lm7322_glfwChooseFBConfig_readdatavalid),
        .in_lm7322_glfwChooseFBConfig_avm_waitrequest(avm_lm7322_glfwChooseFBConfig_waitrequest),
        .in_lm7322_glfwChooseFBConfig_avm_writeack(avm_lm7322_glfwChooseFBConfig_writeack),
        .in_lm7823_glfwChooseFBConfig_avm_readdata(avm_lm7823_glfwChooseFBConfig_readdata),
        .in_lm7823_glfwChooseFBConfig_avm_readdatavalid(avm_lm7823_glfwChooseFBConfig_readdatavalid),
        .in_lm7823_glfwChooseFBConfig_avm_waitrequest(avm_lm7823_glfwChooseFBConfig_waitrequest),
        .in_lm7823_glfwChooseFBConfig_avm_writeack(avm_lm7823_glfwChooseFBConfig_writeack),
        .in_lm8024_glfwChooseFBConfig_avm_readdata(avm_lm8024_glfwChooseFBConfig_readdata),
        .in_lm8024_glfwChooseFBConfig_avm_readdatavalid(avm_lm8024_glfwChooseFBConfig_readdatavalid),
        .in_lm8024_glfwChooseFBConfig_avm_waitrequest(avm_lm8024_glfwChooseFBConfig_waitrequest),
        .in_lm8024_glfwChooseFBConfig_avm_writeack(avm_lm8024_glfwChooseFBConfig_writeack),
        .in_lm8225_glfwChooseFBConfig_avm_readdata(avm_lm8225_glfwChooseFBConfig_readdata),
        .in_lm8225_glfwChooseFBConfig_avm_readdatavalid(avm_lm8225_glfwChooseFBConfig_readdatavalid),
        .in_lm8225_glfwChooseFBConfig_avm_waitrequest(avm_lm8225_glfwChooseFBConfig_waitrequest),
        .in_lm8225_glfwChooseFBConfig_avm_writeack(avm_lm8225_glfwChooseFBConfig_writeack),
        .in_lm8426_glfwChooseFBConfig_avm_readdata(avm_lm8426_glfwChooseFBConfig_readdata),
        .in_lm8426_glfwChooseFBConfig_avm_readdatavalid(avm_lm8426_glfwChooseFBConfig_readdatavalid),
        .in_lm8426_glfwChooseFBConfig_avm_waitrequest(avm_lm8426_glfwChooseFBConfig_waitrequest),
        .in_lm8426_glfwChooseFBConfig_avm_writeack(avm_lm8426_glfwChooseFBConfig_writeack),
        .in_lm8927_glfwChooseFBConfig_avm_readdata(avm_lm8927_glfwChooseFBConfig_readdata),
        .in_lm8927_glfwChooseFBConfig_avm_readdatavalid(avm_lm8927_glfwChooseFBConfig_readdatavalid),
        .in_lm8927_glfwChooseFBConfig_avm_waitrequest(avm_lm8927_glfwChooseFBConfig_waitrequest),
        .in_lm8927_glfwChooseFBConfig_avm_writeack(avm_lm8927_glfwChooseFBConfig_writeack),
        .in_lm9128_glfwChooseFBConfig_avm_readdata(avm_lm9128_glfwChooseFBConfig_readdata),
        .in_lm9128_glfwChooseFBConfig_avm_readdatavalid(avm_lm9128_glfwChooseFBConfig_readdatavalid),
        .in_lm9128_glfwChooseFBConfig_avm_waitrequest(avm_lm9128_glfwChooseFBConfig_waitrequest),
        .in_lm9128_glfwChooseFBConfig_avm_writeack(avm_lm9128_glfwChooseFBConfig_writeack),
        .in_lm9629_glfwChooseFBConfig_avm_readdata(avm_lm9629_glfwChooseFBConfig_readdata),
        .in_lm9629_glfwChooseFBConfig_avm_readdatavalid(avm_lm9629_glfwChooseFBConfig_readdatavalid),
        .in_lm9629_glfwChooseFBConfig_avm_waitrequest(avm_lm9629_glfwChooseFBConfig_waitrequest),
        .in_lm9629_glfwChooseFBConfig_avm_writeack(avm_lm9629_glfwChooseFBConfig_writeack),
        .in_lm9830_glfwChooseFBConfig_avm_readdata(avm_lm9830_glfwChooseFBConfig_readdata),
        .in_lm9830_glfwChooseFBConfig_avm_readdatavalid(avm_lm9830_glfwChooseFBConfig_readdatavalid),
        .in_lm9830_glfwChooseFBConfig_avm_waitrequest(avm_lm9830_glfwChooseFBConfig_waitrequest),
        .in_lm9830_glfwChooseFBConfig_avm_writeack(avm_lm9830_glfwChooseFBConfig_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdata(avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_readdata),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_readdatavalid(avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_readdatavalid),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_waitrequest(avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_waitrequest),
        .in_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writeack(avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_glfwChooseFBConfig_o_fifoready(glfwChooseFBConfig_function_out_iord_bl_call_glfwChooseFBConfig_o_fifoready),
        .out_iowr_bl_return_glfwChooseFBConfig_o_fifodata(glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata),
        .out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid(glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid),
        .out_lm10331_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_address),
        .out_lm10331_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_burstcount),
        .out_lm10331_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_byteenable),
        .out_lm10331_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_enable),
        .out_lm10331_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_read),
        .out_lm10331_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_write),
        .out_lm10331_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_writedata),
        .out_lm11_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_address),
        .out_lm11_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_burstcount),
        .out_lm11_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_byteenable),
        .out_lm11_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_enable),
        .out_lm11_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_read),
        .out_lm11_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_write),
        .out_lm11_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_writedata),
        .out_lm12032_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_address),
        .out_lm12032_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_burstcount),
        .out_lm12032_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_byteenable),
        .out_lm12032_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_enable),
        .out_lm12032_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_read),
        .out_lm12032_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_write),
        .out_lm12032_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_writedata),
        .out_lm12533_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_address),
        .out_lm12533_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_burstcount),
        .out_lm12533_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_byteenable),
        .out_lm12533_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_enable),
        .out_lm12533_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_read),
        .out_lm12533_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_write),
        .out_lm12533_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_writedata),
        .out_lm12734_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_address),
        .out_lm12734_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_burstcount),
        .out_lm12734_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_byteenable),
        .out_lm12734_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_enable),
        .out_lm12734_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_read),
        .out_lm12734_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_write),
        .out_lm12734_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_writedata),
        .out_lm13235_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_address),
        .out_lm13235_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_burstcount),
        .out_lm13235_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_byteenable),
        .out_lm13235_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_enable),
        .out_lm13235_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_read),
        .out_lm13235_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_write),
        .out_lm13235_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_writedata),
        .out_lm13436_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_address),
        .out_lm13436_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_burstcount),
        .out_lm13436_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_byteenable),
        .out_lm13436_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_enable),
        .out_lm13436_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_read),
        .out_lm13436_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_write),
        .out_lm13436_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_writedata),
        .out_lm13937_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_address),
        .out_lm13937_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_burstcount),
        .out_lm13937_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_byteenable),
        .out_lm13937_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_enable),
        .out_lm13937_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_read),
        .out_lm13937_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_write),
        .out_lm13937_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_writedata),
        .out_lm14138_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_address),
        .out_lm14138_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_burstcount),
        .out_lm14138_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_byteenable),
        .out_lm14138_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_enable),
        .out_lm14138_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_read),
        .out_lm14138_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_write),
        .out_lm14138_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_writedata),
        .out_lm14639_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_address),
        .out_lm14639_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_burstcount),
        .out_lm14639_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_byteenable),
        .out_lm14639_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_enable),
        .out_lm14639_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_read),
        .out_lm14639_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_write),
        .out_lm14639_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_writedata),
        .out_lm15340_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_address),
        .out_lm15340_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_burstcount),
        .out_lm15340_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_byteenable),
        .out_lm15340_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_enable),
        .out_lm15340_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_read),
        .out_lm15340_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_write),
        .out_lm15340_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_writedata),
        .out_lm15841_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_address),
        .out_lm15841_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_burstcount),
        .out_lm15841_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_byteenable),
        .out_lm15841_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_enable),
        .out_lm15841_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_read),
        .out_lm15841_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_write),
        .out_lm15841_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_writedata),
        .out_lm1669_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_address),
        .out_lm1669_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_burstcount),
        .out_lm1669_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_byteenable),
        .out_lm1669_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_enable),
        .out_lm1669_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_read),
        .out_lm1669_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_write),
        .out_lm1669_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_writedata),
        .out_lm16810_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_address),
        .out_lm16810_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_burstcount),
        .out_lm16810_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_byteenable),
        .out_lm16810_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_enable),
        .out_lm16810_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_read),
        .out_lm16810_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_write),
        .out_lm16810_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_writedata),
        .out_lm3912_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_address),
        .out_lm3912_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_burstcount),
        .out_lm3912_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_byteenable),
        .out_lm3912_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_enable),
        .out_lm3912_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_read),
        .out_lm3912_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_write),
        .out_lm3912_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_writedata),
        .out_lm4113_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_address),
        .out_lm4113_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_burstcount),
        .out_lm4113_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_byteenable),
        .out_lm4113_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_enable),
        .out_lm4113_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_read),
        .out_lm4113_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_write),
        .out_lm4113_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_writedata),
        .out_lm4514_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_address),
        .out_lm4514_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_burstcount),
        .out_lm4514_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_byteenable),
        .out_lm4514_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_enable),
        .out_lm4514_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_read),
        .out_lm4514_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_write),
        .out_lm4514_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_writedata),
        .out_lm5015_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_address),
        .out_lm5015_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_burstcount),
        .out_lm5015_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_byteenable),
        .out_lm5015_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_enable),
        .out_lm5015_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_read),
        .out_lm5015_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_write),
        .out_lm5015_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_writedata),
        .out_lm5216_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_address),
        .out_lm5216_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_burstcount),
        .out_lm5216_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_byteenable),
        .out_lm5216_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_enable),
        .out_lm5216_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_read),
        .out_lm5216_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_write),
        .out_lm5216_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_writedata),
        .out_lm5717_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_address),
        .out_lm5717_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_burstcount),
        .out_lm5717_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_byteenable),
        .out_lm5717_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_enable),
        .out_lm5717_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_read),
        .out_lm5717_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_write),
        .out_lm5717_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_writedata),
        .out_lm5918_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_address),
        .out_lm5918_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_burstcount),
        .out_lm5918_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_byteenable),
        .out_lm5918_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_enable),
        .out_lm5918_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_read),
        .out_lm5918_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_write),
        .out_lm5918_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_writedata),
        .out_lm6419_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_address),
        .out_lm6419_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_burstcount),
        .out_lm6419_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_byteenable),
        .out_lm6419_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_enable),
        .out_lm6419_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_read),
        .out_lm6419_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_write),
        .out_lm6419_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_writedata),
        .out_lm6620_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_address),
        .out_lm6620_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_burstcount),
        .out_lm6620_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_byteenable),
        .out_lm6620_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_enable),
        .out_lm6620_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_read),
        .out_lm6620_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_write),
        .out_lm6620_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_writedata),
        .out_lm7121_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_address),
        .out_lm7121_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_burstcount),
        .out_lm7121_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_byteenable),
        .out_lm7121_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_enable),
        .out_lm7121_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_read),
        .out_lm7121_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_write),
        .out_lm7121_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_writedata),
        .out_lm7322_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_address),
        .out_lm7322_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_burstcount),
        .out_lm7322_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_byteenable),
        .out_lm7322_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_enable),
        .out_lm7322_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_read),
        .out_lm7322_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_write),
        .out_lm7322_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_writedata),
        .out_lm7823_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_address),
        .out_lm7823_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_burstcount),
        .out_lm7823_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_byteenable),
        .out_lm7823_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_enable),
        .out_lm7823_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_read),
        .out_lm7823_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_write),
        .out_lm7823_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_writedata),
        .out_lm8024_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_address),
        .out_lm8024_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_burstcount),
        .out_lm8024_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_byteenable),
        .out_lm8024_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_enable),
        .out_lm8024_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_read),
        .out_lm8024_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_write),
        .out_lm8024_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_writedata),
        .out_lm8225_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_address),
        .out_lm8225_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_burstcount),
        .out_lm8225_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_byteenable),
        .out_lm8225_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_enable),
        .out_lm8225_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_read),
        .out_lm8225_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_write),
        .out_lm8225_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_writedata),
        .out_lm8426_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_address),
        .out_lm8426_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_burstcount),
        .out_lm8426_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_byteenable),
        .out_lm8426_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_enable),
        .out_lm8426_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_read),
        .out_lm8426_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_write),
        .out_lm8426_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_writedata),
        .out_lm8927_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_address),
        .out_lm8927_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_burstcount),
        .out_lm8927_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_byteenable),
        .out_lm8927_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_enable),
        .out_lm8927_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_read),
        .out_lm8927_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_write),
        .out_lm8927_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_writedata),
        .out_lm9128_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_address),
        .out_lm9128_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_burstcount),
        .out_lm9128_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_byteenable),
        .out_lm9128_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_enable),
        .out_lm9128_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_read),
        .out_lm9128_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_write),
        .out_lm9128_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_writedata),
        .out_lm9629_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_address),
        .out_lm9629_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_burstcount),
        .out_lm9629_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_byteenable),
        .out_lm9629_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_enable),
        .out_lm9629_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_read),
        .out_lm9629_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_write),
        .out_lm9629_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_writedata),
        .out_lm9830_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_address),
        .out_lm9830_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_burstcount),
        .out_lm9830_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_byteenable),
        .out_lm9830_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_enable),
        .out_lm9830_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_read),
        .out_lm9830_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_write),
        .out_lm9830_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_writedata),
        .out_stall_out(),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write),
        .out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm10331_glfwChooseFBConfig_address(GPOUT,163)
    assign avm_lm10331_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_address;

    // avm_lm10331_glfwChooseFBConfig_burstcount(GPOUT,164)
    assign avm_lm10331_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_burstcount;

    // avm_lm10331_glfwChooseFBConfig_byteenable(GPOUT,165)
    assign avm_lm10331_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_byteenable;

    // avm_lm10331_glfwChooseFBConfig_enable(GPOUT,166)
    assign avm_lm10331_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_enable;

    // avm_lm10331_glfwChooseFBConfig_read(GPOUT,167)
    assign avm_lm10331_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_read;

    // avm_lm10331_glfwChooseFBConfig_write(GPOUT,168)
    assign avm_lm10331_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_write;

    // avm_lm10331_glfwChooseFBConfig_writedata(GPOUT,169)
    assign avm_lm10331_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm10331_glfwChooseFBConfig_avm_writedata;

    // avm_lm11_glfwChooseFBConfig_address(GPOUT,170)
    assign avm_lm11_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_address;

    // avm_lm11_glfwChooseFBConfig_burstcount(GPOUT,171)
    assign avm_lm11_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_burstcount;

    // avm_lm11_glfwChooseFBConfig_byteenable(GPOUT,172)
    assign avm_lm11_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_byteenable;

    // avm_lm11_glfwChooseFBConfig_enable(GPOUT,173)
    assign avm_lm11_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_enable;

    // avm_lm11_glfwChooseFBConfig_read(GPOUT,174)
    assign avm_lm11_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_read;

    // avm_lm11_glfwChooseFBConfig_write(GPOUT,175)
    assign avm_lm11_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_write;

    // avm_lm11_glfwChooseFBConfig_writedata(GPOUT,176)
    assign avm_lm11_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_writedata;

    // avm_lm12032_glfwChooseFBConfig_address(GPOUT,177)
    assign avm_lm12032_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_address;

    // avm_lm12032_glfwChooseFBConfig_burstcount(GPOUT,178)
    assign avm_lm12032_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_burstcount;

    // avm_lm12032_glfwChooseFBConfig_byteenable(GPOUT,179)
    assign avm_lm12032_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_byteenable;

    // avm_lm12032_glfwChooseFBConfig_enable(GPOUT,180)
    assign avm_lm12032_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_enable;

    // avm_lm12032_glfwChooseFBConfig_read(GPOUT,181)
    assign avm_lm12032_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_read;

    // avm_lm12032_glfwChooseFBConfig_write(GPOUT,182)
    assign avm_lm12032_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_write;

    // avm_lm12032_glfwChooseFBConfig_writedata(GPOUT,183)
    assign avm_lm12032_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm12032_glfwChooseFBConfig_avm_writedata;

    // avm_lm12533_glfwChooseFBConfig_address(GPOUT,184)
    assign avm_lm12533_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_address;

    // avm_lm12533_glfwChooseFBConfig_burstcount(GPOUT,185)
    assign avm_lm12533_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_burstcount;

    // avm_lm12533_glfwChooseFBConfig_byteenable(GPOUT,186)
    assign avm_lm12533_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_byteenable;

    // avm_lm12533_glfwChooseFBConfig_enable(GPOUT,187)
    assign avm_lm12533_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_enable;

    // avm_lm12533_glfwChooseFBConfig_read(GPOUT,188)
    assign avm_lm12533_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_read;

    // avm_lm12533_glfwChooseFBConfig_write(GPOUT,189)
    assign avm_lm12533_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_write;

    // avm_lm12533_glfwChooseFBConfig_writedata(GPOUT,190)
    assign avm_lm12533_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm12533_glfwChooseFBConfig_avm_writedata;

    // avm_lm12734_glfwChooseFBConfig_address(GPOUT,191)
    assign avm_lm12734_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_address;

    // avm_lm12734_glfwChooseFBConfig_burstcount(GPOUT,192)
    assign avm_lm12734_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_burstcount;

    // avm_lm12734_glfwChooseFBConfig_byteenable(GPOUT,193)
    assign avm_lm12734_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_byteenable;

    // avm_lm12734_glfwChooseFBConfig_enable(GPOUT,194)
    assign avm_lm12734_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_enable;

    // avm_lm12734_glfwChooseFBConfig_read(GPOUT,195)
    assign avm_lm12734_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_read;

    // avm_lm12734_glfwChooseFBConfig_write(GPOUT,196)
    assign avm_lm12734_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_write;

    // avm_lm12734_glfwChooseFBConfig_writedata(GPOUT,197)
    assign avm_lm12734_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm12734_glfwChooseFBConfig_avm_writedata;

    // avm_lm13235_glfwChooseFBConfig_address(GPOUT,198)
    assign avm_lm13235_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_address;

    // avm_lm13235_glfwChooseFBConfig_burstcount(GPOUT,199)
    assign avm_lm13235_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_burstcount;

    // avm_lm13235_glfwChooseFBConfig_byteenable(GPOUT,200)
    assign avm_lm13235_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_byteenable;

    // avm_lm13235_glfwChooseFBConfig_enable(GPOUT,201)
    assign avm_lm13235_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_enable;

    // avm_lm13235_glfwChooseFBConfig_read(GPOUT,202)
    assign avm_lm13235_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_read;

    // avm_lm13235_glfwChooseFBConfig_write(GPOUT,203)
    assign avm_lm13235_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_write;

    // avm_lm13235_glfwChooseFBConfig_writedata(GPOUT,204)
    assign avm_lm13235_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm13235_glfwChooseFBConfig_avm_writedata;

    // avm_lm13436_glfwChooseFBConfig_address(GPOUT,205)
    assign avm_lm13436_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_address;

    // avm_lm13436_glfwChooseFBConfig_burstcount(GPOUT,206)
    assign avm_lm13436_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_burstcount;

    // avm_lm13436_glfwChooseFBConfig_byteenable(GPOUT,207)
    assign avm_lm13436_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_byteenable;

    // avm_lm13436_glfwChooseFBConfig_enable(GPOUT,208)
    assign avm_lm13436_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_enable;

    // avm_lm13436_glfwChooseFBConfig_read(GPOUT,209)
    assign avm_lm13436_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_read;

    // avm_lm13436_glfwChooseFBConfig_write(GPOUT,210)
    assign avm_lm13436_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_write;

    // avm_lm13436_glfwChooseFBConfig_writedata(GPOUT,211)
    assign avm_lm13436_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm13436_glfwChooseFBConfig_avm_writedata;

    // avm_lm13937_glfwChooseFBConfig_address(GPOUT,212)
    assign avm_lm13937_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_address;

    // avm_lm13937_glfwChooseFBConfig_burstcount(GPOUT,213)
    assign avm_lm13937_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_burstcount;

    // avm_lm13937_glfwChooseFBConfig_byteenable(GPOUT,214)
    assign avm_lm13937_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_byteenable;

    // avm_lm13937_glfwChooseFBConfig_enable(GPOUT,215)
    assign avm_lm13937_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_enable;

    // avm_lm13937_glfwChooseFBConfig_read(GPOUT,216)
    assign avm_lm13937_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_read;

    // avm_lm13937_glfwChooseFBConfig_write(GPOUT,217)
    assign avm_lm13937_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_write;

    // avm_lm13937_glfwChooseFBConfig_writedata(GPOUT,218)
    assign avm_lm13937_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm13937_glfwChooseFBConfig_avm_writedata;

    // avm_lm14138_glfwChooseFBConfig_address(GPOUT,219)
    assign avm_lm14138_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_address;

    // avm_lm14138_glfwChooseFBConfig_burstcount(GPOUT,220)
    assign avm_lm14138_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_burstcount;

    // avm_lm14138_glfwChooseFBConfig_byteenable(GPOUT,221)
    assign avm_lm14138_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_byteenable;

    // avm_lm14138_glfwChooseFBConfig_enable(GPOUT,222)
    assign avm_lm14138_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_enable;

    // avm_lm14138_glfwChooseFBConfig_read(GPOUT,223)
    assign avm_lm14138_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_read;

    // avm_lm14138_glfwChooseFBConfig_write(GPOUT,224)
    assign avm_lm14138_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_write;

    // avm_lm14138_glfwChooseFBConfig_writedata(GPOUT,225)
    assign avm_lm14138_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm14138_glfwChooseFBConfig_avm_writedata;

    // avm_lm14639_glfwChooseFBConfig_address(GPOUT,226)
    assign avm_lm14639_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_address;

    // avm_lm14639_glfwChooseFBConfig_burstcount(GPOUT,227)
    assign avm_lm14639_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_burstcount;

    // avm_lm14639_glfwChooseFBConfig_byteenable(GPOUT,228)
    assign avm_lm14639_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_byteenable;

    // avm_lm14639_glfwChooseFBConfig_enable(GPOUT,229)
    assign avm_lm14639_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_enable;

    // avm_lm14639_glfwChooseFBConfig_read(GPOUT,230)
    assign avm_lm14639_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_read;

    // avm_lm14639_glfwChooseFBConfig_write(GPOUT,231)
    assign avm_lm14639_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_write;

    // avm_lm14639_glfwChooseFBConfig_writedata(GPOUT,232)
    assign avm_lm14639_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm14639_glfwChooseFBConfig_avm_writedata;

    // avm_lm15340_glfwChooseFBConfig_address(GPOUT,233)
    assign avm_lm15340_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_address;

    // avm_lm15340_glfwChooseFBConfig_burstcount(GPOUT,234)
    assign avm_lm15340_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_burstcount;

    // avm_lm15340_glfwChooseFBConfig_byteenable(GPOUT,235)
    assign avm_lm15340_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_byteenable;

    // avm_lm15340_glfwChooseFBConfig_enable(GPOUT,236)
    assign avm_lm15340_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_enable;

    // avm_lm15340_glfwChooseFBConfig_read(GPOUT,237)
    assign avm_lm15340_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_read;

    // avm_lm15340_glfwChooseFBConfig_write(GPOUT,238)
    assign avm_lm15340_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_write;

    // avm_lm15340_glfwChooseFBConfig_writedata(GPOUT,239)
    assign avm_lm15340_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm15340_glfwChooseFBConfig_avm_writedata;

    // avm_lm15841_glfwChooseFBConfig_address(GPOUT,240)
    assign avm_lm15841_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_address;

    // avm_lm15841_glfwChooseFBConfig_burstcount(GPOUT,241)
    assign avm_lm15841_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_burstcount;

    // avm_lm15841_glfwChooseFBConfig_byteenable(GPOUT,242)
    assign avm_lm15841_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_byteenable;

    // avm_lm15841_glfwChooseFBConfig_enable(GPOUT,243)
    assign avm_lm15841_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_enable;

    // avm_lm15841_glfwChooseFBConfig_read(GPOUT,244)
    assign avm_lm15841_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_read;

    // avm_lm15841_glfwChooseFBConfig_write(GPOUT,245)
    assign avm_lm15841_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_write;

    // avm_lm15841_glfwChooseFBConfig_writedata(GPOUT,246)
    assign avm_lm15841_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm15841_glfwChooseFBConfig_avm_writedata;

    // avm_lm1669_glfwChooseFBConfig_address(GPOUT,247)
    assign avm_lm1669_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_address;

    // avm_lm1669_glfwChooseFBConfig_burstcount(GPOUT,248)
    assign avm_lm1669_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_burstcount;

    // avm_lm1669_glfwChooseFBConfig_byteenable(GPOUT,249)
    assign avm_lm1669_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_byteenable;

    // avm_lm1669_glfwChooseFBConfig_enable(GPOUT,250)
    assign avm_lm1669_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_enable;

    // avm_lm1669_glfwChooseFBConfig_read(GPOUT,251)
    assign avm_lm1669_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_read;

    // avm_lm1669_glfwChooseFBConfig_write(GPOUT,252)
    assign avm_lm1669_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_write;

    // avm_lm1669_glfwChooseFBConfig_writedata(GPOUT,253)
    assign avm_lm1669_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm1669_glfwChooseFBConfig_avm_writedata;

    // avm_lm16810_glfwChooseFBConfig_address(GPOUT,254)
    assign avm_lm16810_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_address;

    // avm_lm16810_glfwChooseFBConfig_burstcount(GPOUT,255)
    assign avm_lm16810_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_burstcount;

    // avm_lm16810_glfwChooseFBConfig_byteenable(GPOUT,256)
    assign avm_lm16810_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_byteenable;

    // avm_lm16810_glfwChooseFBConfig_enable(GPOUT,257)
    assign avm_lm16810_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_enable;

    // avm_lm16810_glfwChooseFBConfig_read(GPOUT,258)
    assign avm_lm16810_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_read;

    // avm_lm16810_glfwChooseFBConfig_write(GPOUT,259)
    assign avm_lm16810_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_write;

    // avm_lm16810_glfwChooseFBConfig_writedata(GPOUT,260)
    assign avm_lm16810_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm16810_glfwChooseFBConfig_avm_writedata;

    // avm_lm3912_glfwChooseFBConfig_address(GPOUT,261)
    assign avm_lm3912_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_address;

    // avm_lm3912_glfwChooseFBConfig_burstcount(GPOUT,262)
    assign avm_lm3912_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_burstcount;

    // avm_lm3912_glfwChooseFBConfig_byteenable(GPOUT,263)
    assign avm_lm3912_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_byteenable;

    // avm_lm3912_glfwChooseFBConfig_enable(GPOUT,264)
    assign avm_lm3912_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_enable;

    // avm_lm3912_glfwChooseFBConfig_read(GPOUT,265)
    assign avm_lm3912_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_read;

    // avm_lm3912_glfwChooseFBConfig_write(GPOUT,266)
    assign avm_lm3912_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_write;

    // avm_lm3912_glfwChooseFBConfig_writedata(GPOUT,267)
    assign avm_lm3912_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_writedata;

    // avm_lm4113_glfwChooseFBConfig_address(GPOUT,268)
    assign avm_lm4113_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_address;

    // avm_lm4113_glfwChooseFBConfig_burstcount(GPOUT,269)
    assign avm_lm4113_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_burstcount;

    // avm_lm4113_glfwChooseFBConfig_byteenable(GPOUT,270)
    assign avm_lm4113_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_byteenable;

    // avm_lm4113_glfwChooseFBConfig_enable(GPOUT,271)
    assign avm_lm4113_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_enable;

    // avm_lm4113_glfwChooseFBConfig_read(GPOUT,272)
    assign avm_lm4113_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_read;

    // avm_lm4113_glfwChooseFBConfig_write(GPOUT,273)
    assign avm_lm4113_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_write;

    // avm_lm4113_glfwChooseFBConfig_writedata(GPOUT,274)
    assign avm_lm4113_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_writedata;

    // avm_lm4514_glfwChooseFBConfig_address(GPOUT,275)
    assign avm_lm4514_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_address;

    // avm_lm4514_glfwChooseFBConfig_burstcount(GPOUT,276)
    assign avm_lm4514_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_burstcount;

    // avm_lm4514_glfwChooseFBConfig_byteenable(GPOUT,277)
    assign avm_lm4514_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_byteenable;

    // avm_lm4514_glfwChooseFBConfig_enable(GPOUT,278)
    assign avm_lm4514_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_enable;

    // avm_lm4514_glfwChooseFBConfig_read(GPOUT,279)
    assign avm_lm4514_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_read;

    // avm_lm4514_glfwChooseFBConfig_write(GPOUT,280)
    assign avm_lm4514_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_write;

    // avm_lm4514_glfwChooseFBConfig_writedata(GPOUT,281)
    assign avm_lm4514_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_writedata;

    // avm_lm5015_glfwChooseFBConfig_address(GPOUT,282)
    assign avm_lm5015_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_address;

    // avm_lm5015_glfwChooseFBConfig_burstcount(GPOUT,283)
    assign avm_lm5015_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5015_glfwChooseFBConfig_byteenable(GPOUT,284)
    assign avm_lm5015_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5015_glfwChooseFBConfig_enable(GPOUT,285)
    assign avm_lm5015_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_enable;

    // avm_lm5015_glfwChooseFBConfig_read(GPOUT,286)
    assign avm_lm5015_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_read;

    // avm_lm5015_glfwChooseFBConfig_write(GPOUT,287)
    assign avm_lm5015_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_write;

    // avm_lm5015_glfwChooseFBConfig_writedata(GPOUT,288)
    assign avm_lm5015_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_writedata;

    // avm_lm5216_glfwChooseFBConfig_address(GPOUT,289)
    assign avm_lm5216_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_address;

    // avm_lm5216_glfwChooseFBConfig_burstcount(GPOUT,290)
    assign avm_lm5216_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5216_glfwChooseFBConfig_byteenable(GPOUT,291)
    assign avm_lm5216_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5216_glfwChooseFBConfig_enable(GPOUT,292)
    assign avm_lm5216_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_enable;

    // avm_lm5216_glfwChooseFBConfig_read(GPOUT,293)
    assign avm_lm5216_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_read;

    // avm_lm5216_glfwChooseFBConfig_write(GPOUT,294)
    assign avm_lm5216_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_write;

    // avm_lm5216_glfwChooseFBConfig_writedata(GPOUT,295)
    assign avm_lm5216_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_writedata;

    // avm_lm5717_glfwChooseFBConfig_address(GPOUT,296)
    assign avm_lm5717_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_address;

    // avm_lm5717_glfwChooseFBConfig_burstcount(GPOUT,297)
    assign avm_lm5717_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5717_glfwChooseFBConfig_byteenable(GPOUT,298)
    assign avm_lm5717_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5717_glfwChooseFBConfig_enable(GPOUT,299)
    assign avm_lm5717_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_enable;

    // avm_lm5717_glfwChooseFBConfig_read(GPOUT,300)
    assign avm_lm5717_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_read;

    // avm_lm5717_glfwChooseFBConfig_write(GPOUT,301)
    assign avm_lm5717_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_write;

    // avm_lm5717_glfwChooseFBConfig_writedata(GPOUT,302)
    assign avm_lm5717_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_writedata;

    // avm_lm5918_glfwChooseFBConfig_address(GPOUT,303)
    assign avm_lm5918_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_address;

    // avm_lm5918_glfwChooseFBConfig_burstcount(GPOUT,304)
    assign avm_lm5918_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5918_glfwChooseFBConfig_byteenable(GPOUT,305)
    assign avm_lm5918_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5918_glfwChooseFBConfig_enable(GPOUT,306)
    assign avm_lm5918_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_enable;

    // avm_lm5918_glfwChooseFBConfig_read(GPOUT,307)
    assign avm_lm5918_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_read;

    // avm_lm5918_glfwChooseFBConfig_write(GPOUT,308)
    assign avm_lm5918_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_write;

    // avm_lm5918_glfwChooseFBConfig_writedata(GPOUT,309)
    assign avm_lm5918_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_writedata;

    // avm_lm6419_glfwChooseFBConfig_address(GPOUT,310)
    assign avm_lm6419_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_address;

    // avm_lm6419_glfwChooseFBConfig_burstcount(GPOUT,311)
    assign avm_lm6419_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_burstcount;

    // avm_lm6419_glfwChooseFBConfig_byteenable(GPOUT,312)
    assign avm_lm6419_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_byteenable;

    // avm_lm6419_glfwChooseFBConfig_enable(GPOUT,313)
    assign avm_lm6419_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_enable;

    // avm_lm6419_glfwChooseFBConfig_read(GPOUT,314)
    assign avm_lm6419_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_read;

    // avm_lm6419_glfwChooseFBConfig_write(GPOUT,315)
    assign avm_lm6419_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_write;

    // avm_lm6419_glfwChooseFBConfig_writedata(GPOUT,316)
    assign avm_lm6419_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_writedata;

    // avm_lm6620_glfwChooseFBConfig_address(GPOUT,317)
    assign avm_lm6620_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_address;

    // avm_lm6620_glfwChooseFBConfig_burstcount(GPOUT,318)
    assign avm_lm6620_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_burstcount;

    // avm_lm6620_glfwChooseFBConfig_byteenable(GPOUT,319)
    assign avm_lm6620_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_byteenable;

    // avm_lm6620_glfwChooseFBConfig_enable(GPOUT,320)
    assign avm_lm6620_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_enable;

    // avm_lm6620_glfwChooseFBConfig_read(GPOUT,321)
    assign avm_lm6620_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_read;

    // avm_lm6620_glfwChooseFBConfig_write(GPOUT,322)
    assign avm_lm6620_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_write;

    // avm_lm6620_glfwChooseFBConfig_writedata(GPOUT,323)
    assign avm_lm6620_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_writedata;

    // avm_lm7121_glfwChooseFBConfig_address(GPOUT,324)
    assign avm_lm7121_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_address;

    // avm_lm7121_glfwChooseFBConfig_burstcount(GPOUT,325)
    assign avm_lm7121_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_burstcount;

    // avm_lm7121_glfwChooseFBConfig_byteenable(GPOUT,326)
    assign avm_lm7121_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_byteenable;

    // avm_lm7121_glfwChooseFBConfig_enable(GPOUT,327)
    assign avm_lm7121_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_enable;

    // avm_lm7121_glfwChooseFBConfig_read(GPOUT,328)
    assign avm_lm7121_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_read;

    // avm_lm7121_glfwChooseFBConfig_write(GPOUT,329)
    assign avm_lm7121_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_write;

    // avm_lm7121_glfwChooseFBConfig_writedata(GPOUT,330)
    assign avm_lm7121_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_writedata;

    // avm_lm7322_glfwChooseFBConfig_address(GPOUT,331)
    assign avm_lm7322_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_address;

    // avm_lm7322_glfwChooseFBConfig_burstcount(GPOUT,332)
    assign avm_lm7322_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_burstcount;

    // avm_lm7322_glfwChooseFBConfig_byteenable(GPOUT,333)
    assign avm_lm7322_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_byteenable;

    // avm_lm7322_glfwChooseFBConfig_enable(GPOUT,334)
    assign avm_lm7322_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_enable;

    // avm_lm7322_glfwChooseFBConfig_read(GPOUT,335)
    assign avm_lm7322_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_read;

    // avm_lm7322_glfwChooseFBConfig_write(GPOUT,336)
    assign avm_lm7322_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_write;

    // avm_lm7322_glfwChooseFBConfig_writedata(GPOUT,337)
    assign avm_lm7322_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_writedata;

    // avm_lm7823_glfwChooseFBConfig_address(GPOUT,338)
    assign avm_lm7823_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_address;

    // avm_lm7823_glfwChooseFBConfig_burstcount(GPOUT,339)
    assign avm_lm7823_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_burstcount;

    // avm_lm7823_glfwChooseFBConfig_byteenable(GPOUT,340)
    assign avm_lm7823_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_byteenable;

    // avm_lm7823_glfwChooseFBConfig_enable(GPOUT,341)
    assign avm_lm7823_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_enable;

    // avm_lm7823_glfwChooseFBConfig_read(GPOUT,342)
    assign avm_lm7823_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_read;

    // avm_lm7823_glfwChooseFBConfig_write(GPOUT,343)
    assign avm_lm7823_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_write;

    // avm_lm7823_glfwChooseFBConfig_writedata(GPOUT,344)
    assign avm_lm7823_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_writedata;

    // avm_lm8024_glfwChooseFBConfig_address(GPOUT,345)
    assign avm_lm8024_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_address;

    // avm_lm8024_glfwChooseFBConfig_burstcount(GPOUT,346)
    assign avm_lm8024_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8024_glfwChooseFBConfig_byteenable(GPOUT,347)
    assign avm_lm8024_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8024_glfwChooseFBConfig_enable(GPOUT,348)
    assign avm_lm8024_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_enable;

    // avm_lm8024_glfwChooseFBConfig_read(GPOUT,349)
    assign avm_lm8024_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_read;

    // avm_lm8024_glfwChooseFBConfig_write(GPOUT,350)
    assign avm_lm8024_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_write;

    // avm_lm8024_glfwChooseFBConfig_writedata(GPOUT,351)
    assign avm_lm8024_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_writedata;

    // avm_lm8225_glfwChooseFBConfig_address(GPOUT,352)
    assign avm_lm8225_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_address;

    // avm_lm8225_glfwChooseFBConfig_burstcount(GPOUT,353)
    assign avm_lm8225_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8225_glfwChooseFBConfig_byteenable(GPOUT,354)
    assign avm_lm8225_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8225_glfwChooseFBConfig_enable(GPOUT,355)
    assign avm_lm8225_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_enable;

    // avm_lm8225_glfwChooseFBConfig_read(GPOUT,356)
    assign avm_lm8225_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_read;

    // avm_lm8225_glfwChooseFBConfig_write(GPOUT,357)
    assign avm_lm8225_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_write;

    // avm_lm8225_glfwChooseFBConfig_writedata(GPOUT,358)
    assign avm_lm8225_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8225_glfwChooseFBConfig_avm_writedata;

    // avm_lm8426_glfwChooseFBConfig_address(GPOUT,359)
    assign avm_lm8426_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_address;

    // avm_lm8426_glfwChooseFBConfig_burstcount(GPOUT,360)
    assign avm_lm8426_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8426_glfwChooseFBConfig_byteenable(GPOUT,361)
    assign avm_lm8426_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8426_glfwChooseFBConfig_enable(GPOUT,362)
    assign avm_lm8426_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_enable;

    // avm_lm8426_glfwChooseFBConfig_read(GPOUT,363)
    assign avm_lm8426_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_read;

    // avm_lm8426_glfwChooseFBConfig_write(GPOUT,364)
    assign avm_lm8426_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_write;

    // avm_lm8426_glfwChooseFBConfig_writedata(GPOUT,365)
    assign avm_lm8426_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8426_glfwChooseFBConfig_avm_writedata;

    // avm_lm8927_glfwChooseFBConfig_address(GPOUT,366)
    assign avm_lm8927_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_address;

    // avm_lm8927_glfwChooseFBConfig_burstcount(GPOUT,367)
    assign avm_lm8927_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8927_glfwChooseFBConfig_byteenable(GPOUT,368)
    assign avm_lm8927_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8927_glfwChooseFBConfig_enable(GPOUT,369)
    assign avm_lm8927_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_enable;

    // avm_lm8927_glfwChooseFBConfig_read(GPOUT,370)
    assign avm_lm8927_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_read;

    // avm_lm8927_glfwChooseFBConfig_write(GPOUT,371)
    assign avm_lm8927_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_write;

    // avm_lm8927_glfwChooseFBConfig_writedata(GPOUT,372)
    assign avm_lm8927_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8927_glfwChooseFBConfig_avm_writedata;

    // avm_lm9128_glfwChooseFBConfig_address(GPOUT,373)
    assign avm_lm9128_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_address;

    // avm_lm9128_glfwChooseFBConfig_burstcount(GPOUT,374)
    assign avm_lm9128_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_burstcount;

    // avm_lm9128_glfwChooseFBConfig_byteenable(GPOUT,375)
    assign avm_lm9128_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_byteenable;

    // avm_lm9128_glfwChooseFBConfig_enable(GPOUT,376)
    assign avm_lm9128_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_enable;

    // avm_lm9128_glfwChooseFBConfig_read(GPOUT,377)
    assign avm_lm9128_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_read;

    // avm_lm9128_glfwChooseFBConfig_write(GPOUT,378)
    assign avm_lm9128_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_write;

    // avm_lm9128_glfwChooseFBConfig_writedata(GPOUT,379)
    assign avm_lm9128_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm9128_glfwChooseFBConfig_avm_writedata;

    // avm_lm9629_glfwChooseFBConfig_address(GPOUT,380)
    assign avm_lm9629_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_address;

    // avm_lm9629_glfwChooseFBConfig_burstcount(GPOUT,381)
    assign avm_lm9629_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_burstcount;

    // avm_lm9629_glfwChooseFBConfig_byteenable(GPOUT,382)
    assign avm_lm9629_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_byteenable;

    // avm_lm9629_glfwChooseFBConfig_enable(GPOUT,383)
    assign avm_lm9629_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_enable;

    // avm_lm9629_glfwChooseFBConfig_read(GPOUT,384)
    assign avm_lm9629_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_read;

    // avm_lm9629_glfwChooseFBConfig_write(GPOUT,385)
    assign avm_lm9629_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_write;

    // avm_lm9629_glfwChooseFBConfig_writedata(GPOUT,386)
    assign avm_lm9629_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm9629_glfwChooseFBConfig_avm_writedata;

    // avm_lm9830_glfwChooseFBConfig_address(GPOUT,387)
    assign avm_lm9830_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_address;

    // avm_lm9830_glfwChooseFBConfig_burstcount(GPOUT,388)
    assign avm_lm9830_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_burstcount;

    // avm_lm9830_glfwChooseFBConfig_byteenable(GPOUT,389)
    assign avm_lm9830_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_byteenable;

    // avm_lm9830_glfwChooseFBConfig_enable(GPOUT,390)
    assign avm_lm9830_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_enable;

    // avm_lm9830_glfwChooseFBConfig_read(GPOUT,391)
    assign avm_lm9830_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_read;

    // avm_lm9830_glfwChooseFBConfig_write(GPOUT,392)
    assign avm_lm9830_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_write;

    // avm_lm9830_glfwChooseFBConfig_writedata(GPOUT,393)
    assign avm_lm9830_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm9830_glfwChooseFBConfig_avm_writedata;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_address(GPOUT,394)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_burstcount(GPOUT,395)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_byteenable(GPOUT,396)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_enable(GPOUT,397)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_read(GPOUT,398)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_write(GPOUT,399)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writedata(GPOUT,400)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata;

    // avst_iord_bl_call_glfwChooseFBConfig_ready(GPOUT,401)
    assign avst_iord_bl_call_glfwChooseFBConfig_ready = glfwChooseFBConfig_function_out_iord_bl_call_glfwChooseFBConfig_o_fifoready;

    // avst_iowr_bl_return_glfwChooseFBConfig_data(GPOUT,402)
    assign avst_iowr_bl_return_glfwChooseFBConfig_data = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;

    // avst_iowr_bl_return_glfwChooseFBConfig_valid(GPOUT,403)
    assign avst_iowr_bl_return_glfwChooseFBConfig_valid = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;

    // not_ready(LOGICAL,161)
    assign not_ready_q = ~ (glfwChooseFBConfig_function_out_iord_bl_call_glfwChooseFBConfig_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,408)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,407)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,404)
    assign busy = busy_or_q;

    // done(GPOUT,405)
    assign done = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;

    // returndata(GPOUT,406)
    assign returndata = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;

endmodule
