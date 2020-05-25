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
// SystemVerilog created on Sun May 24 22:29:58 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module glfwChooseFBConfig_function_wrapper (
    input wire [63:0] GLFW_DONT_CARE,
    input wire [63:0] UINT_MAX,
    input wire [63:0] alternatives,
    input wire [63:0] avm_lm11630_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm11630_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm11630_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm11630_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm11_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm11_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm11_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm11_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm12131_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm12131_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm12131_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm12131_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm12332_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm12332_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm12332_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm12332_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm12833_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm12833_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm12833_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm12833_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm13034_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm13034_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm13034_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm13034_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm13535_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm13535_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm13535_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm13535_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm13736_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm13736_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm13736_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm13736_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm14237_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm14237_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm14237_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm14237_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm14938_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm14938_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm14938_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm14938_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm15439_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm15439_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm15439_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm15439_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm1629_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm1629_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm1629_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm1629_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm16410_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm16410_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm16410_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm16410_glfwChooseFBConfig_writeack,
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
    input wire [63:0] avm_lm8525_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm8525_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm8525_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm8525_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm8726_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm8726_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm8726_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm8726_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm9227_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm9227_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm9227_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm9227_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm9428_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm9428_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm9428_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm9428_glfwChooseFBConfig_writeack,
    input wire [63:0] avm_lm9929_glfwChooseFBConfig_readdata,
    input wire [0:0] avm_lm9929_glfwChooseFBConfig_readdatavalid,
    input wire [0:0] avm_lm9929_glfwChooseFBConfig_waitrequest,
    input wire [0:0] avm_lm9929_glfwChooseFBConfig_writeack,
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
    output wire [63:0] avm_lm11630_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm11630_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm11630_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm11630_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm11630_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm11630_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm11630_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm11_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm11_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm11_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm11_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm12131_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm12131_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm12131_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm12131_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm12131_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm12131_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm12131_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm12332_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm12332_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm12332_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm12332_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm12332_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm12332_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm12332_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm12833_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm12833_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm12833_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm12833_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm12833_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm12833_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm12833_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm13034_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm13034_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm13034_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm13034_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm13034_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm13034_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm13034_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm13535_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm13535_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm13535_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm13535_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm13535_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm13535_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm13535_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm13736_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm13736_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm13736_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm13736_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm13736_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm13736_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm13736_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm14237_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm14237_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm14237_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm14237_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm14237_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm14237_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm14237_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm14938_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm14938_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm14938_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm14938_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm14938_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm14938_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm14938_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm15439_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm15439_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm15439_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm15439_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm15439_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm15439_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm15439_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm1629_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm1629_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm1629_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm1629_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm1629_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm1629_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm1629_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm16410_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm16410_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm16410_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm16410_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm16410_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm16410_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm16410_glfwChooseFBConfig_writedata,
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
    output wire [63:0] avm_lm8525_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm8525_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm8525_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm8525_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm8525_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm8525_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm8525_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm8726_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm8726_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm8726_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm8726_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm8726_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm8726_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm8726_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm9227_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm9227_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm9227_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm9227_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm9227_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm9227_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm9227_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm9428_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm9428_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm9428_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm9428_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm9428_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm9428_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm9428_glfwChooseFBConfig_writedata,
    output wire [63:0] avm_lm9929_glfwChooseFBConfig_address,
    output wire [0:0] avm_lm9929_glfwChooseFBConfig_burstcount,
    output wire [7:0] avm_lm9929_glfwChooseFBConfig_byteenable,
    output wire [0:0] avm_lm9929_glfwChooseFBConfig_enable,
    output wire [0:0] avm_lm9929_glfwChooseFBConfig_read,
    output wire [0:0] avm_lm9929_glfwChooseFBConfig_write,
    output wire [63:0] avm_lm9929_glfwChooseFBConfig_writedata,
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
    wire [63:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_writedata;
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
    wire [63:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_writedata;
    wire [63:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_address;
    wire [0:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_burstcount;
    wire [7:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_byteenable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_enable;
    wire [0:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_read;
    wire [0:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_write;
    wire [63:0] glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_writedata;
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

    // not_stall(LOGICAL,154)
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
        .in_lm11630_glfwChooseFBConfig_avm_readdata(avm_lm11630_glfwChooseFBConfig_readdata),
        .in_lm11630_glfwChooseFBConfig_avm_readdatavalid(avm_lm11630_glfwChooseFBConfig_readdatavalid),
        .in_lm11630_glfwChooseFBConfig_avm_waitrequest(avm_lm11630_glfwChooseFBConfig_waitrequest),
        .in_lm11630_glfwChooseFBConfig_avm_writeack(avm_lm11630_glfwChooseFBConfig_writeack),
        .in_lm11_glfwChooseFBConfig_avm_readdata(avm_lm11_glfwChooseFBConfig_readdata),
        .in_lm11_glfwChooseFBConfig_avm_readdatavalid(avm_lm11_glfwChooseFBConfig_readdatavalid),
        .in_lm11_glfwChooseFBConfig_avm_waitrequest(avm_lm11_glfwChooseFBConfig_waitrequest),
        .in_lm11_glfwChooseFBConfig_avm_writeack(avm_lm11_glfwChooseFBConfig_writeack),
        .in_lm12131_glfwChooseFBConfig_avm_readdata(avm_lm12131_glfwChooseFBConfig_readdata),
        .in_lm12131_glfwChooseFBConfig_avm_readdatavalid(avm_lm12131_glfwChooseFBConfig_readdatavalid),
        .in_lm12131_glfwChooseFBConfig_avm_waitrequest(avm_lm12131_glfwChooseFBConfig_waitrequest),
        .in_lm12131_glfwChooseFBConfig_avm_writeack(avm_lm12131_glfwChooseFBConfig_writeack),
        .in_lm12332_glfwChooseFBConfig_avm_readdata(avm_lm12332_glfwChooseFBConfig_readdata),
        .in_lm12332_glfwChooseFBConfig_avm_readdatavalid(avm_lm12332_glfwChooseFBConfig_readdatavalid),
        .in_lm12332_glfwChooseFBConfig_avm_waitrequest(avm_lm12332_glfwChooseFBConfig_waitrequest),
        .in_lm12332_glfwChooseFBConfig_avm_writeack(avm_lm12332_glfwChooseFBConfig_writeack),
        .in_lm12833_glfwChooseFBConfig_avm_readdata(avm_lm12833_glfwChooseFBConfig_readdata),
        .in_lm12833_glfwChooseFBConfig_avm_readdatavalid(avm_lm12833_glfwChooseFBConfig_readdatavalid),
        .in_lm12833_glfwChooseFBConfig_avm_waitrequest(avm_lm12833_glfwChooseFBConfig_waitrequest),
        .in_lm12833_glfwChooseFBConfig_avm_writeack(avm_lm12833_glfwChooseFBConfig_writeack),
        .in_lm13034_glfwChooseFBConfig_avm_readdata(avm_lm13034_glfwChooseFBConfig_readdata),
        .in_lm13034_glfwChooseFBConfig_avm_readdatavalid(avm_lm13034_glfwChooseFBConfig_readdatavalid),
        .in_lm13034_glfwChooseFBConfig_avm_waitrequest(avm_lm13034_glfwChooseFBConfig_waitrequest),
        .in_lm13034_glfwChooseFBConfig_avm_writeack(avm_lm13034_glfwChooseFBConfig_writeack),
        .in_lm13535_glfwChooseFBConfig_avm_readdata(avm_lm13535_glfwChooseFBConfig_readdata),
        .in_lm13535_glfwChooseFBConfig_avm_readdatavalid(avm_lm13535_glfwChooseFBConfig_readdatavalid),
        .in_lm13535_glfwChooseFBConfig_avm_waitrequest(avm_lm13535_glfwChooseFBConfig_waitrequest),
        .in_lm13535_glfwChooseFBConfig_avm_writeack(avm_lm13535_glfwChooseFBConfig_writeack),
        .in_lm13736_glfwChooseFBConfig_avm_readdata(avm_lm13736_glfwChooseFBConfig_readdata),
        .in_lm13736_glfwChooseFBConfig_avm_readdatavalid(avm_lm13736_glfwChooseFBConfig_readdatavalid),
        .in_lm13736_glfwChooseFBConfig_avm_waitrequest(avm_lm13736_glfwChooseFBConfig_waitrequest),
        .in_lm13736_glfwChooseFBConfig_avm_writeack(avm_lm13736_glfwChooseFBConfig_writeack),
        .in_lm14237_glfwChooseFBConfig_avm_readdata(avm_lm14237_glfwChooseFBConfig_readdata),
        .in_lm14237_glfwChooseFBConfig_avm_readdatavalid(avm_lm14237_glfwChooseFBConfig_readdatavalid),
        .in_lm14237_glfwChooseFBConfig_avm_waitrequest(avm_lm14237_glfwChooseFBConfig_waitrequest),
        .in_lm14237_glfwChooseFBConfig_avm_writeack(avm_lm14237_glfwChooseFBConfig_writeack),
        .in_lm14938_glfwChooseFBConfig_avm_readdata(avm_lm14938_glfwChooseFBConfig_readdata),
        .in_lm14938_glfwChooseFBConfig_avm_readdatavalid(avm_lm14938_glfwChooseFBConfig_readdatavalid),
        .in_lm14938_glfwChooseFBConfig_avm_waitrequest(avm_lm14938_glfwChooseFBConfig_waitrequest),
        .in_lm14938_glfwChooseFBConfig_avm_writeack(avm_lm14938_glfwChooseFBConfig_writeack),
        .in_lm15439_glfwChooseFBConfig_avm_readdata(avm_lm15439_glfwChooseFBConfig_readdata),
        .in_lm15439_glfwChooseFBConfig_avm_readdatavalid(avm_lm15439_glfwChooseFBConfig_readdatavalid),
        .in_lm15439_glfwChooseFBConfig_avm_waitrequest(avm_lm15439_glfwChooseFBConfig_waitrequest),
        .in_lm15439_glfwChooseFBConfig_avm_writeack(avm_lm15439_glfwChooseFBConfig_writeack),
        .in_lm1629_glfwChooseFBConfig_avm_readdata(avm_lm1629_glfwChooseFBConfig_readdata),
        .in_lm1629_glfwChooseFBConfig_avm_readdatavalid(avm_lm1629_glfwChooseFBConfig_readdatavalid),
        .in_lm1629_glfwChooseFBConfig_avm_waitrequest(avm_lm1629_glfwChooseFBConfig_waitrequest),
        .in_lm1629_glfwChooseFBConfig_avm_writeack(avm_lm1629_glfwChooseFBConfig_writeack),
        .in_lm16410_glfwChooseFBConfig_avm_readdata(avm_lm16410_glfwChooseFBConfig_readdata),
        .in_lm16410_glfwChooseFBConfig_avm_readdatavalid(avm_lm16410_glfwChooseFBConfig_readdatavalid),
        .in_lm16410_glfwChooseFBConfig_avm_waitrequest(avm_lm16410_glfwChooseFBConfig_waitrequest),
        .in_lm16410_glfwChooseFBConfig_avm_writeack(avm_lm16410_glfwChooseFBConfig_writeack),
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
        .in_lm8525_glfwChooseFBConfig_avm_readdata(avm_lm8525_glfwChooseFBConfig_readdata),
        .in_lm8525_glfwChooseFBConfig_avm_readdatavalid(avm_lm8525_glfwChooseFBConfig_readdatavalid),
        .in_lm8525_glfwChooseFBConfig_avm_waitrequest(avm_lm8525_glfwChooseFBConfig_waitrequest),
        .in_lm8525_glfwChooseFBConfig_avm_writeack(avm_lm8525_glfwChooseFBConfig_writeack),
        .in_lm8726_glfwChooseFBConfig_avm_readdata(avm_lm8726_glfwChooseFBConfig_readdata),
        .in_lm8726_glfwChooseFBConfig_avm_readdatavalid(avm_lm8726_glfwChooseFBConfig_readdatavalid),
        .in_lm8726_glfwChooseFBConfig_avm_waitrequest(avm_lm8726_glfwChooseFBConfig_waitrequest),
        .in_lm8726_glfwChooseFBConfig_avm_writeack(avm_lm8726_glfwChooseFBConfig_writeack),
        .in_lm9227_glfwChooseFBConfig_avm_readdata(avm_lm9227_glfwChooseFBConfig_readdata),
        .in_lm9227_glfwChooseFBConfig_avm_readdatavalid(avm_lm9227_glfwChooseFBConfig_readdatavalid),
        .in_lm9227_glfwChooseFBConfig_avm_waitrequest(avm_lm9227_glfwChooseFBConfig_waitrequest),
        .in_lm9227_glfwChooseFBConfig_avm_writeack(avm_lm9227_glfwChooseFBConfig_writeack),
        .in_lm9428_glfwChooseFBConfig_avm_readdata(avm_lm9428_glfwChooseFBConfig_readdata),
        .in_lm9428_glfwChooseFBConfig_avm_readdatavalid(avm_lm9428_glfwChooseFBConfig_readdatavalid),
        .in_lm9428_glfwChooseFBConfig_avm_waitrequest(avm_lm9428_glfwChooseFBConfig_waitrequest),
        .in_lm9428_glfwChooseFBConfig_avm_writeack(avm_lm9428_glfwChooseFBConfig_writeack),
        .in_lm9929_glfwChooseFBConfig_avm_readdata(avm_lm9929_glfwChooseFBConfig_readdata),
        .in_lm9929_glfwChooseFBConfig_avm_readdatavalid(avm_lm9929_glfwChooseFBConfig_readdatavalid),
        .in_lm9929_glfwChooseFBConfig_avm_waitrequest(avm_lm9929_glfwChooseFBConfig_waitrequest),
        .in_lm9929_glfwChooseFBConfig_avm_writeack(avm_lm9929_glfwChooseFBConfig_writeack),
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
        .out_lm11630_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_address),
        .out_lm11630_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_burstcount),
        .out_lm11630_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_byteenable),
        .out_lm11630_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_enable),
        .out_lm11630_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_read),
        .out_lm11630_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_write),
        .out_lm11630_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_writedata),
        .out_lm11_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_address),
        .out_lm11_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_burstcount),
        .out_lm11_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_byteenable),
        .out_lm11_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_enable),
        .out_lm11_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_read),
        .out_lm11_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_write),
        .out_lm11_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_writedata),
        .out_lm12131_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_address),
        .out_lm12131_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_burstcount),
        .out_lm12131_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_byteenable),
        .out_lm12131_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_enable),
        .out_lm12131_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_read),
        .out_lm12131_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_write),
        .out_lm12131_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_writedata),
        .out_lm12332_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_address),
        .out_lm12332_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_burstcount),
        .out_lm12332_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_byteenable),
        .out_lm12332_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_enable),
        .out_lm12332_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_read),
        .out_lm12332_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_write),
        .out_lm12332_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_writedata),
        .out_lm12833_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_address),
        .out_lm12833_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_burstcount),
        .out_lm12833_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_byteenable),
        .out_lm12833_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_enable),
        .out_lm12833_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_read),
        .out_lm12833_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_write),
        .out_lm12833_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_writedata),
        .out_lm13034_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_address),
        .out_lm13034_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_burstcount),
        .out_lm13034_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_byteenable),
        .out_lm13034_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_enable),
        .out_lm13034_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_read),
        .out_lm13034_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_write),
        .out_lm13034_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_writedata),
        .out_lm13535_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_address),
        .out_lm13535_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_burstcount),
        .out_lm13535_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_byteenable),
        .out_lm13535_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_enable),
        .out_lm13535_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_read),
        .out_lm13535_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_write),
        .out_lm13535_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_writedata),
        .out_lm13736_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_address),
        .out_lm13736_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_burstcount),
        .out_lm13736_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_byteenable),
        .out_lm13736_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_enable),
        .out_lm13736_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_read),
        .out_lm13736_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_write),
        .out_lm13736_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_writedata),
        .out_lm14237_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_address),
        .out_lm14237_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_burstcount),
        .out_lm14237_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_byteenable),
        .out_lm14237_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_enable),
        .out_lm14237_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_read),
        .out_lm14237_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_write),
        .out_lm14237_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_writedata),
        .out_lm14938_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_address),
        .out_lm14938_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_burstcount),
        .out_lm14938_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_byteenable),
        .out_lm14938_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_enable),
        .out_lm14938_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_read),
        .out_lm14938_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_write),
        .out_lm14938_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_writedata),
        .out_lm15439_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_address),
        .out_lm15439_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_burstcount),
        .out_lm15439_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_byteenable),
        .out_lm15439_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_enable),
        .out_lm15439_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_read),
        .out_lm15439_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_write),
        .out_lm15439_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_writedata),
        .out_lm1629_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_address),
        .out_lm1629_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_burstcount),
        .out_lm1629_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_byteenable),
        .out_lm1629_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_enable),
        .out_lm1629_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_read),
        .out_lm1629_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_write),
        .out_lm1629_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_writedata),
        .out_lm16410_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_address),
        .out_lm16410_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_burstcount),
        .out_lm16410_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_byteenable),
        .out_lm16410_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_enable),
        .out_lm16410_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_read),
        .out_lm16410_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_write),
        .out_lm16410_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_writedata),
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
        .out_lm8525_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_address),
        .out_lm8525_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_burstcount),
        .out_lm8525_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_byteenable),
        .out_lm8525_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_enable),
        .out_lm8525_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_read),
        .out_lm8525_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_write),
        .out_lm8525_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_writedata),
        .out_lm8726_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_address),
        .out_lm8726_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_burstcount),
        .out_lm8726_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_byteenable),
        .out_lm8726_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_enable),
        .out_lm8726_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_read),
        .out_lm8726_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_write),
        .out_lm8726_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_writedata),
        .out_lm9227_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_address),
        .out_lm9227_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_burstcount),
        .out_lm9227_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_byteenable),
        .out_lm9227_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_enable),
        .out_lm9227_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_read),
        .out_lm9227_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_write),
        .out_lm9227_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_writedata),
        .out_lm9428_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_address),
        .out_lm9428_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_burstcount),
        .out_lm9428_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_byteenable),
        .out_lm9428_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_enable),
        .out_lm9428_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_read),
        .out_lm9428_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_write),
        .out_lm9428_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_writedata),
        .out_lm9929_glfwChooseFBConfig_avm_address(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_address),
        .out_lm9929_glfwChooseFBConfig_avm_burstcount(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_burstcount),
        .out_lm9929_glfwChooseFBConfig_avm_byteenable(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_byteenable),
        .out_lm9929_glfwChooseFBConfig_avm_enable(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_enable),
        .out_lm9929_glfwChooseFBConfig_avm_read(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_read),
        .out_lm9929_glfwChooseFBConfig_avm_write(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_write),
        .out_lm9929_glfwChooseFBConfig_avm_writedata(glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_writedata),
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

    // avm_lm11630_glfwChooseFBConfig_address(GPOUT,155)
    assign avm_lm11630_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_address;

    // avm_lm11630_glfwChooseFBConfig_burstcount(GPOUT,156)
    assign avm_lm11630_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_burstcount;

    // avm_lm11630_glfwChooseFBConfig_byteenable(GPOUT,157)
    assign avm_lm11630_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_byteenable;

    // avm_lm11630_glfwChooseFBConfig_enable(GPOUT,158)
    assign avm_lm11630_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_enable;

    // avm_lm11630_glfwChooseFBConfig_read(GPOUT,159)
    assign avm_lm11630_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_read;

    // avm_lm11630_glfwChooseFBConfig_write(GPOUT,160)
    assign avm_lm11630_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_write;

    // avm_lm11630_glfwChooseFBConfig_writedata(GPOUT,161)
    assign avm_lm11630_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm11630_glfwChooseFBConfig_avm_writedata;

    // avm_lm11_glfwChooseFBConfig_address(GPOUT,162)
    assign avm_lm11_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_address;

    // avm_lm11_glfwChooseFBConfig_burstcount(GPOUT,163)
    assign avm_lm11_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_burstcount;

    // avm_lm11_glfwChooseFBConfig_byteenable(GPOUT,164)
    assign avm_lm11_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_byteenable;

    // avm_lm11_glfwChooseFBConfig_enable(GPOUT,165)
    assign avm_lm11_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_enable;

    // avm_lm11_glfwChooseFBConfig_read(GPOUT,166)
    assign avm_lm11_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_read;

    // avm_lm11_glfwChooseFBConfig_write(GPOUT,167)
    assign avm_lm11_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_write;

    // avm_lm11_glfwChooseFBConfig_writedata(GPOUT,168)
    assign avm_lm11_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm11_glfwChooseFBConfig_avm_writedata;

    // avm_lm12131_glfwChooseFBConfig_address(GPOUT,169)
    assign avm_lm12131_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_address;

    // avm_lm12131_glfwChooseFBConfig_burstcount(GPOUT,170)
    assign avm_lm12131_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_burstcount;

    // avm_lm12131_glfwChooseFBConfig_byteenable(GPOUT,171)
    assign avm_lm12131_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_byteenable;

    // avm_lm12131_glfwChooseFBConfig_enable(GPOUT,172)
    assign avm_lm12131_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_enable;

    // avm_lm12131_glfwChooseFBConfig_read(GPOUT,173)
    assign avm_lm12131_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_read;

    // avm_lm12131_glfwChooseFBConfig_write(GPOUT,174)
    assign avm_lm12131_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_write;

    // avm_lm12131_glfwChooseFBConfig_writedata(GPOUT,175)
    assign avm_lm12131_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm12131_glfwChooseFBConfig_avm_writedata;

    // avm_lm12332_glfwChooseFBConfig_address(GPOUT,176)
    assign avm_lm12332_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_address;

    // avm_lm12332_glfwChooseFBConfig_burstcount(GPOUT,177)
    assign avm_lm12332_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_burstcount;

    // avm_lm12332_glfwChooseFBConfig_byteenable(GPOUT,178)
    assign avm_lm12332_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_byteenable;

    // avm_lm12332_glfwChooseFBConfig_enable(GPOUT,179)
    assign avm_lm12332_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_enable;

    // avm_lm12332_glfwChooseFBConfig_read(GPOUT,180)
    assign avm_lm12332_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_read;

    // avm_lm12332_glfwChooseFBConfig_write(GPOUT,181)
    assign avm_lm12332_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_write;

    // avm_lm12332_glfwChooseFBConfig_writedata(GPOUT,182)
    assign avm_lm12332_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm12332_glfwChooseFBConfig_avm_writedata;

    // avm_lm12833_glfwChooseFBConfig_address(GPOUT,183)
    assign avm_lm12833_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_address;

    // avm_lm12833_glfwChooseFBConfig_burstcount(GPOUT,184)
    assign avm_lm12833_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_burstcount;

    // avm_lm12833_glfwChooseFBConfig_byteenable(GPOUT,185)
    assign avm_lm12833_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_byteenable;

    // avm_lm12833_glfwChooseFBConfig_enable(GPOUT,186)
    assign avm_lm12833_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_enable;

    // avm_lm12833_glfwChooseFBConfig_read(GPOUT,187)
    assign avm_lm12833_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_read;

    // avm_lm12833_glfwChooseFBConfig_write(GPOUT,188)
    assign avm_lm12833_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_write;

    // avm_lm12833_glfwChooseFBConfig_writedata(GPOUT,189)
    assign avm_lm12833_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm12833_glfwChooseFBConfig_avm_writedata;

    // avm_lm13034_glfwChooseFBConfig_address(GPOUT,190)
    assign avm_lm13034_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_address;

    // avm_lm13034_glfwChooseFBConfig_burstcount(GPOUT,191)
    assign avm_lm13034_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_burstcount;

    // avm_lm13034_glfwChooseFBConfig_byteenable(GPOUT,192)
    assign avm_lm13034_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_byteenable;

    // avm_lm13034_glfwChooseFBConfig_enable(GPOUT,193)
    assign avm_lm13034_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_enable;

    // avm_lm13034_glfwChooseFBConfig_read(GPOUT,194)
    assign avm_lm13034_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_read;

    // avm_lm13034_glfwChooseFBConfig_write(GPOUT,195)
    assign avm_lm13034_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_write;

    // avm_lm13034_glfwChooseFBConfig_writedata(GPOUT,196)
    assign avm_lm13034_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm13034_glfwChooseFBConfig_avm_writedata;

    // avm_lm13535_glfwChooseFBConfig_address(GPOUT,197)
    assign avm_lm13535_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_address;

    // avm_lm13535_glfwChooseFBConfig_burstcount(GPOUT,198)
    assign avm_lm13535_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_burstcount;

    // avm_lm13535_glfwChooseFBConfig_byteenable(GPOUT,199)
    assign avm_lm13535_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_byteenable;

    // avm_lm13535_glfwChooseFBConfig_enable(GPOUT,200)
    assign avm_lm13535_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_enable;

    // avm_lm13535_glfwChooseFBConfig_read(GPOUT,201)
    assign avm_lm13535_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_read;

    // avm_lm13535_glfwChooseFBConfig_write(GPOUT,202)
    assign avm_lm13535_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_write;

    // avm_lm13535_glfwChooseFBConfig_writedata(GPOUT,203)
    assign avm_lm13535_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm13535_glfwChooseFBConfig_avm_writedata;

    // avm_lm13736_glfwChooseFBConfig_address(GPOUT,204)
    assign avm_lm13736_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_address;

    // avm_lm13736_glfwChooseFBConfig_burstcount(GPOUT,205)
    assign avm_lm13736_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_burstcount;

    // avm_lm13736_glfwChooseFBConfig_byteenable(GPOUT,206)
    assign avm_lm13736_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_byteenable;

    // avm_lm13736_glfwChooseFBConfig_enable(GPOUT,207)
    assign avm_lm13736_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_enable;

    // avm_lm13736_glfwChooseFBConfig_read(GPOUT,208)
    assign avm_lm13736_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_read;

    // avm_lm13736_glfwChooseFBConfig_write(GPOUT,209)
    assign avm_lm13736_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_write;

    // avm_lm13736_glfwChooseFBConfig_writedata(GPOUT,210)
    assign avm_lm13736_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm13736_glfwChooseFBConfig_avm_writedata;

    // avm_lm14237_glfwChooseFBConfig_address(GPOUT,211)
    assign avm_lm14237_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_address;

    // avm_lm14237_glfwChooseFBConfig_burstcount(GPOUT,212)
    assign avm_lm14237_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_burstcount;

    // avm_lm14237_glfwChooseFBConfig_byteenable(GPOUT,213)
    assign avm_lm14237_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_byteenable;

    // avm_lm14237_glfwChooseFBConfig_enable(GPOUT,214)
    assign avm_lm14237_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_enable;

    // avm_lm14237_glfwChooseFBConfig_read(GPOUT,215)
    assign avm_lm14237_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_read;

    // avm_lm14237_glfwChooseFBConfig_write(GPOUT,216)
    assign avm_lm14237_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_write;

    // avm_lm14237_glfwChooseFBConfig_writedata(GPOUT,217)
    assign avm_lm14237_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm14237_glfwChooseFBConfig_avm_writedata;

    // avm_lm14938_glfwChooseFBConfig_address(GPOUT,218)
    assign avm_lm14938_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_address;

    // avm_lm14938_glfwChooseFBConfig_burstcount(GPOUT,219)
    assign avm_lm14938_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_burstcount;

    // avm_lm14938_glfwChooseFBConfig_byteenable(GPOUT,220)
    assign avm_lm14938_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_byteenable;

    // avm_lm14938_glfwChooseFBConfig_enable(GPOUT,221)
    assign avm_lm14938_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_enable;

    // avm_lm14938_glfwChooseFBConfig_read(GPOUT,222)
    assign avm_lm14938_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_read;

    // avm_lm14938_glfwChooseFBConfig_write(GPOUT,223)
    assign avm_lm14938_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_write;

    // avm_lm14938_glfwChooseFBConfig_writedata(GPOUT,224)
    assign avm_lm14938_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm14938_glfwChooseFBConfig_avm_writedata;

    // avm_lm15439_glfwChooseFBConfig_address(GPOUT,225)
    assign avm_lm15439_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_address;

    // avm_lm15439_glfwChooseFBConfig_burstcount(GPOUT,226)
    assign avm_lm15439_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_burstcount;

    // avm_lm15439_glfwChooseFBConfig_byteenable(GPOUT,227)
    assign avm_lm15439_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_byteenable;

    // avm_lm15439_glfwChooseFBConfig_enable(GPOUT,228)
    assign avm_lm15439_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_enable;

    // avm_lm15439_glfwChooseFBConfig_read(GPOUT,229)
    assign avm_lm15439_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_read;

    // avm_lm15439_glfwChooseFBConfig_write(GPOUT,230)
    assign avm_lm15439_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_write;

    // avm_lm15439_glfwChooseFBConfig_writedata(GPOUT,231)
    assign avm_lm15439_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm15439_glfwChooseFBConfig_avm_writedata;

    // avm_lm1629_glfwChooseFBConfig_address(GPOUT,232)
    assign avm_lm1629_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_address;

    // avm_lm1629_glfwChooseFBConfig_burstcount(GPOUT,233)
    assign avm_lm1629_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_burstcount;

    // avm_lm1629_glfwChooseFBConfig_byteenable(GPOUT,234)
    assign avm_lm1629_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_byteenable;

    // avm_lm1629_glfwChooseFBConfig_enable(GPOUT,235)
    assign avm_lm1629_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_enable;

    // avm_lm1629_glfwChooseFBConfig_read(GPOUT,236)
    assign avm_lm1629_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_read;

    // avm_lm1629_glfwChooseFBConfig_write(GPOUT,237)
    assign avm_lm1629_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_write;

    // avm_lm1629_glfwChooseFBConfig_writedata(GPOUT,238)
    assign avm_lm1629_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm1629_glfwChooseFBConfig_avm_writedata;

    // avm_lm16410_glfwChooseFBConfig_address(GPOUT,239)
    assign avm_lm16410_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_address;

    // avm_lm16410_glfwChooseFBConfig_burstcount(GPOUT,240)
    assign avm_lm16410_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_burstcount;

    // avm_lm16410_glfwChooseFBConfig_byteenable(GPOUT,241)
    assign avm_lm16410_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_byteenable;

    // avm_lm16410_glfwChooseFBConfig_enable(GPOUT,242)
    assign avm_lm16410_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_enable;

    // avm_lm16410_glfwChooseFBConfig_read(GPOUT,243)
    assign avm_lm16410_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_read;

    // avm_lm16410_glfwChooseFBConfig_write(GPOUT,244)
    assign avm_lm16410_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_write;

    // avm_lm16410_glfwChooseFBConfig_writedata(GPOUT,245)
    assign avm_lm16410_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm16410_glfwChooseFBConfig_avm_writedata;

    // avm_lm3912_glfwChooseFBConfig_address(GPOUT,246)
    assign avm_lm3912_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_address;

    // avm_lm3912_glfwChooseFBConfig_burstcount(GPOUT,247)
    assign avm_lm3912_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_burstcount;

    // avm_lm3912_glfwChooseFBConfig_byteenable(GPOUT,248)
    assign avm_lm3912_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_byteenable;

    // avm_lm3912_glfwChooseFBConfig_enable(GPOUT,249)
    assign avm_lm3912_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_enable;

    // avm_lm3912_glfwChooseFBConfig_read(GPOUT,250)
    assign avm_lm3912_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_read;

    // avm_lm3912_glfwChooseFBConfig_write(GPOUT,251)
    assign avm_lm3912_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_write;

    // avm_lm3912_glfwChooseFBConfig_writedata(GPOUT,252)
    assign avm_lm3912_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm3912_glfwChooseFBConfig_avm_writedata;

    // avm_lm4113_glfwChooseFBConfig_address(GPOUT,253)
    assign avm_lm4113_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_address;

    // avm_lm4113_glfwChooseFBConfig_burstcount(GPOUT,254)
    assign avm_lm4113_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_burstcount;

    // avm_lm4113_glfwChooseFBConfig_byteenable(GPOUT,255)
    assign avm_lm4113_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_byteenable;

    // avm_lm4113_glfwChooseFBConfig_enable(GPOUT,256)
    assign avm_lm4113_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_enable;

    // avm_lm4113_glfwChooseFBConfig_read(GPOUT,257)
    assign avm_lm4113_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_read;

    // avm_lm4113_glfwChooseFBConfig_write(GPOUT,258)
    assign avm_lm4113_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_write;

    // avm_lm4113_glfwChooseFBConfig_writedata(GPOUT,259)
    assign avm_lm4113_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm4113_glfwChooseFBConfig_avm_writedata;

    // avm_lm4514_glfwChooseFBConfig_address(GPOUT,260)
    assign avm_lm4514_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_address;

    // avm_lm4514_glfwChooseFBConfig_burstcount(GPOUT,261)
    assign avm_lm4514_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_burstcount;

    // avm_lm4514_glfwChooseFBConfig_byteenable(GPOUT,262)
    assign avm_lm4514_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_byteenable;

    // avm_lm4514_glfwChooseFBConfig_enable(GPOUT,263)
    assign avm_lm4514_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_enable;

    // avm_lm4514_glfwChooseFBConfig_read(GPOUT,264)
    assign avm_lm4514_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_read;

    // avm_lm4514_glfwChooseFBConfig_write(GPOUT,265)
    assign avm_lm4514_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_write;

    // avm_lm4514_glfwChooseFBConfig_writedata(GPOUT,266)
    assign avm_lm4514_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm4514_glfwChooseFBConfig_avm_writedata;

    // avm_lm5015_glfwChooseFBConfig_address(GPOUT,267)
    assign avm_lm5015_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_address;

    // avm_lm5015_glfwChooseFBConfig_burstcount(GPOUT,268)
    assign avm_lm5015_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5015_glfwChooseFBConfig_byteenable(GPOUT,269)
    assign avm_lm5015_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5015_glfwChooseFBConfig_enable(GPOUT,270)
    assign avm_lm5015_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_enable;

    // avm_lm5015_glfwChooseFBConfig_read(GPOUT,271)
    assign avm_lm5015_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_read;

    // avm_lm5015_glfwChooseFBConfig_write(GPOUT,272)
    assign avm_lm5015_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_write;

    // avm_lm5015_glfwChooseFBConfig_writedata(GPOUT,273)
    assign avm_lm5015_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5015_glfwChooseFBConfig_avm_writedata;

    // avm_lm5216_glfwChooseFBConfig_address(GPOUT,274)
    assign avm_lm5216_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_address;

    // avm_lm5216_glfwChooseFBConfig_burstcount(GPOUT,275)
    assign avm_lm5216_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5216_glfwChooseFBConfig_byteenable(GPOUT,276)
    assign avm_lm5216_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5216_glfwChooseFBConfig_enable(GPOUT,277)
    assign avm_lm5216_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_enable;

    // avm_lm5216_glfwChooseFBConfig_read(GPOUT,278)
    assign avm_lm5216_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_read;

    // avm_lm5216_glfwChooseFBConfig_write(GPOUT,279)
    assign avm_lm5216_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_write;

    // avm_lm5216_glfwChooseFBConfig_writedata(GPOUT,280)
    assign avm_lm5216_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5216_glfwChooseFBConfig_avm_writedata;

    // avm_lm5717_glfwChooseFBConfig_address(GPOUT,281)
    assign avm_lm5717_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_address;

    // avm_lm5717_glfwChooseFBConfig_burstcount(GPOUT,282)
    assign avm_lm5717_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5717_glfwChooseFBConfig_byteenable(GPOUT,283)
    assign avm_lm5717_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5717_glfwChooseFBConfig_enable(GPOUT,284)
    assign avm_lm5717_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_enable;

    // avm_lm5717_glfwChooseFBConfig_read(GPOUT,285)
    assign avm_lm5717_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_read;

    // avm_lm5717_glfwChooseFBConfig_write(GPOUT,286)
    assign avm_lm5717_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_write;

    // avm_lm5717_glfwChooseFBConfig_writedata(GPOUT,287)
    assign avm_lm5717_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5717_glfwChooseFBConfig_avm_writedata;

    // avm_lm5918_glfwChooseFBConfig_address(GPOUT,288)
    assign avm_lm5918_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_address;

    // avm_lm5918_glfwChooseFBConfig_burstcount(GPOUT,289)
    assign avm_lm5918_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_burstcount;

    // avm_lm5918_glfwChooseFBConfig_byteenable(GPOUT,290)
    assign avm_lm5918_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_byteenable;

    // avm_lm5918_glfwChooseFBConfig_enable(GPOUT,291)
    assign avm_lm5918_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_enable;

    // avm_lm5918_glfwChooseFBConfig_read(GPOUT,292)
    assign avm_lm5918_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_read;

    // avm_lm5918_glfwChooseFBConfig_write(GPOUT,293)
    assign avm_lm5918_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_write;

    // avm_lm5918_glfwChooseFBConfig_writedata(GPOUT,294)
    assign avm_lm5918_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm5918_glfwChooseFBConfig_avm_writedata;

    // avm_lm6419_glfwChooseFBConfig_address(GPOUT,295)
    assign avm_lm6419_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_address;

    // avm_lm6419_glfwChooseFBConfig_burstcount(GPOUT,296)
    assign avm_lm6419_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_burstcount;

    // avm_lm6419_glfwChooseFBConfig_byteenable(GPOUT,297)
    assign avm_lm6419_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_byteenable;

    // avm_lm6419_glfwChooseFBConfig_enable(GPOUT,298)
    assign avm_lm6419_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_enable;

    // avm_lm6419_glfwChooseFBConfig_read(GPOUT,299)
    assign avm_lm6419_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_read;

    // avm_lm6419_glfwChooseFBConfig_write(GPOUT,300)
    assign avm_lm6419_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_write;

    // avm_lm6419_glfwChooseFBConfig_writedata(GPOUT,301)
    assign avm_lm6419_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm6419_glfwChooseFBConfig_avm_writedata;

    // avm_lm6620_glfwChooseFBConfig_address(GPOUT,302)
    assign avm_lm6620_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_address;

    // avm_lm6620_glfwChooseFBConfig_burstcount(GPOUT,303)
    assign avm_lm6620_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_burstcount;

    // avm_lm6620_glfwChooseFBConfig_byteenable(GPOUT,304)
    assign avm_lm6620_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_byteenable;

    // avm_lm6620_glfwChooseFBConfig_enable(GPOUT,305)
    assign avm_lm6620_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_enable;

    // avm_lm6620_glfwChooseFBConfig_read(GPOUT,306)
    assign avm_lm6620_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_read;

    // avm_lm6620_glfwChooseFBConfig_write(GPOUT,307)
    assign avm_lm6620_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_write;

    // avm_lm6620_glfwChooseFBConfig_writedata(GPOUT,308)
    assign avm_lm6620_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm6620_glfwChooseFBConfig_avm_writedata;

    // avm_lm7121_glfwChooseFBConfig_address(GPOUT,309)
    assign avm_lm7121_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_address;

    // avm_lm7121_glfwChooseFBConfig_burstcount(GPOUT,310)
    assign avm_lm7121_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_burstcount;

    // avm_lm7121_glfwChooseFBConfig_byteenable(GPOUT,311)
    assign avm_lm7121_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_byteenable;

    // avm_lm7121_glfwChooseFBConfig_enable(GPOUT,312)
    assign avm_lm7121_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_enable;

    // avm_lm7121_glfwChooseFBConfig_read(GPOUT,313)
    assign avm_lm7121_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_read;

    // avm_lm7121_glfwChooseFBConfig_write(GPOUT,314)
    assign avm_lm7121_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_write;

    // avm_lm7121_glfwChooseFBConfig_writedata(GPOUT,315)
    assign avm_lm7121_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm7121_glfwChooseFBConfig_avm_writedata;

    // avm_lm7322_glfwChooseFBConfig_address(GPOUT,316)
    assign avm_lm7322_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_address;

    // avm_lm7322_glfwChooseFBConfig_burstcount(GPOUT,317)
    assign avm_lm7322_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_burstcount;

    // avm_lm7322_glfwChooseFBConfig_byteenable(GPOUT,318)
    assign avm_lm7322_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_byteenable;

    // avm_lm7322_glfwChooseFBConfig_enable(GPOUT,319)
    assign avm_lm7322_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_enable;

    // avm_lm7322_glfwChooseFBConfig_read(GPOUT,320)
    assign avm_lm7322_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_read;

    // avm_lm7322_glfwChooseFBConfig_write(GPOUT,321)
    assign avm_lm7322_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_write;

    // avm_lm7322_glfwChooseFBConfig_writedata(GPOUT,322)
    assign avm_lm7322_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm7322_glfwChooseFBConfig_avm_writedata;

    // avm_lm7823_glfwChooseFBConfig_address(GPOUT,323)
    assign avm_lm7823_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_address;

    // avm_lm7823_glfwChooseFBConfig_burstcount(GPOUT,324)
    assign avm_lm7823_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_burstcount;

    // avm_lm7823_glfwChooseFBConfig_byteenable(GPOUT,325)
    assign avm_lm7823_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_byteenable;

    // avm_lm7823_glfwChooseFBConfig_enable(GPOUT,326)
    assign avm_lm7823_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_enable;

    // avm_lm7823_glfwChooseFBConfig_read(GPOUT,327)
    assign avm_lm7823_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_read;

    // avm_lm7823_glfwChooseFBConfig_write(GPOUT,328)
    assign avm_lm7823_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_write;

    // avm_lm7823_glfwChooseFBConfig_writedata(GPOUT,329)
    assign avm_lm7823_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm7823_glfwChooseFBConfig_avm_writedata;

    // avm_lm8024_glfwChooseFBConfig_address(GPOUT,330)
    assign avm_lm8024_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_address;

    // avm_lm8024_glfwChooseFBConfig_burstcount(GPOUT,331)
    assign avm_lm8024_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8024_glfwChooseFBConfig_byteenable(GPOUT,332)
    assign avm_lm8024_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8024_glfwChooseFBConfig_enable(GPOUT,333)
    assign avm_lm8024_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_enable;

    // avm_lm8024_glfwChooseFBConfig_read(GPOUT,334)
    assign avm_lm8024_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_read;

    // avm_lm8024_glfwChooseFBConfig_write(GPOUT,335)
    assign avm_lm8024_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_write;

    // avm_lm8024_glfwChooseFBConfig_writedata(GPOUT,336)
    assign avm_lm8024_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8024_glfwChooseFBConfig_avm_writedata;

    // avm_lm8525_glfwChooseFBConfig_address(GPOUT,337)
    assign avm_lm8525_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_address;

    // avm_lm8525_glfwChooseFBConfig_burstcount(GPOUT,338)
    assign avm_lm8525_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8525_glfwChooseFBConfig_byteenable(GPOUT,339)
    assign avm_lm8525_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8525_glfwChooseFBConfig_enable(GPOUT,340)
    assign avm_lm8525_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_enable;

    // avm_lm8525_glfwChooseFBConfig_read(GPOUT,341)
    assign avm_lm8525_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_read;

    // avm_lm8525_glfwChooseFBConfig_write(GPOUT,342)
    assign avm_lm8525_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_write;

    // avm_lm8525_glfwChooseFBConfig_writedata(GPOUT,343)
    assign avm_lm8525_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8525_glfwChooseFBConfig_avm_writedata;

    // avm_lm8726_glfwChooseFBConfig_address(GPOUT,344)
    assign avm_lm8726_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_address;

    // avm_lm8726_glfwChooseFBConfig_burstcount(GPOUT,345)
    assign avm_lm8726_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_burstcount;

    // avm_lm8726_glfwChooseFBConfig_byteenable(GPOUT,346)
    assign avm_lm8726_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_byteenable;

    // avm_lm8726_glfwChooseFBConfig_enable(GPOUT,347)
    assign avm_lm8726_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_enable;

    // avm_lm8726_glfwChooseFBConfig_read(GPOUT,348)
    assign avm_lm8726_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_read;

    // avm_lm8726_glfwChooseFBConfig_write(GPOUT,349)
    assign avm_lm8726_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_write;

    // avm_lm8726_glfwChooseFBConfig_writedata(GPOUT,350)
    assign avm_lm8726_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm8726_glfwChooseFBConfig_avm_writedata;

    // avm_lm9227_glfwChooseFBConfig_address(GPOUT,351)
    assign avm_lm9227_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_address;

    // avm_lm9227_glfwChooseFBConfig_burstcount(GPOUT,352)
    assign avm_lm9227_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_burstcount;

    // avm_lm9227_glfwChooseFBConfig_byteenable(GPOUT,353)
    assign avm_lm9227_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_byteenable;

    // avm_lm9227_glfwChooseFBConfig_enable(GPOUT,354)
    assign avm_lm9227_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_enable;

    // avm_lm9227_glfwChooseFBConfig_read(GPOUT,355)
    assign avm_lm9227_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_read;

    // avm_lm9227_glfwChooseFBConfig_write(GPOUT,356)
    assign avm_lm9227_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_write;

    // avm_lm9227_glfwChooseFBConfig_writedata(GPOUT,357)
    assign avm_lm9227_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm9227_glfwChooseFBConfig_avm_writedata;

    // avm_lm9428_glfwChooseFBConfig_address(GPOUT,358)
    assign avm_lm9428_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_address;

    // avm_lm9428_glfwChooseFBConfig_burstcount(GPOUT,359)
    assign avm_lm9428_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_burstcount;

    // avm_lm9428_glfwChooseFBConfig_byteenable(GPOUT,360)
    assign avm_lm9428_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_byteenable;

    // avm_lm9428_glfwChooseFBConfig_enable(GPOUT,361)
    assign avm_lm9428_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_enable;

    // avm_lm9428_glfwChooseFBConfig_read(GPOUT,362)
    assign avm_lm9428_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_read;

    // avm_lm9428_glfwChooseFBConfig_write(GPOUT,363)
    assign avm_lm9428_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_write;

    // avm_lm9428_glfwChooseFBConfig_writedata(GPOUT,364)
    assign avm_lm9428_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm9428_glfwChooseFBConfig_avm_writedata;

    // avm_lm9929_glfwChooseFBConfig_address(GPOUT,365)
    assign avm_lm9929_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_address;

    // avm_lm9929_glfwChooseFBConfig_burstcount(GPOUT,366)
    assign avm_lm9929_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_burstcount;

    // avm_lm9929_glfwChooseFBConfig_byteenable(GPOUT,367)
    assign avm_lm9929_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_byteenable;

    // avm_lm9929_glfwChooseFBConfig_enable(GPOUT,368)
    assign avm_lm9929_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_enable;

    // avm_lm9929_glfwChooseFBConfig_read(GPOUT,369)
    assign avm_lm9929_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_read;

    // avm_lm9929_glfwChooseFBConfig_write(GPOUT,370)
    assign avm_lm9929_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_write;

    // avm_lm9929_glfwChooseFBConfig_writedata(GPOUT,371)
    assign avm_lm9929_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_lm9929_glfwChooseFBConfig_avm_writedata;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_address(GPOUT,372)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_address = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_address;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_burstcount(GPOUT,373)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_burstcount = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_burstcount;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_byteenable(GPOUT,374)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_byteenable = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_byteenable;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_enable(GPOUT,375)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_enable = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_enable;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_read(GPOUT,376)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_read = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_read;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_write(GPOUT,377)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_write = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_write;

    // avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writedata(GPOUT,378)
    assign avm_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_writedata = glfwChooseFBConfig_function_out_unnamed_glfwChooseFBConfig5_glfwChooseFBConfig_avm_writedata;

    // avst_iord_bl_call_glfwChooseFBConfig_ready(GPOUT,379)
    assign avst_iord_bl_call_glfwChooseFBConfig_ready = glfwChooseFBConfig_function_out_iord_bl_call_glfwChooseFBConfig_o_fifoready;

    // avst_iowr_bl_return_glfwChooseFBConfig_data(GPOUT,380)
    assign avst_iowr_bl_return_glfwChooseFBConfig_data = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;

    // avst_iowr_bl_return_glfwChooseFBConfig_valid(GPOUT,381)
    assign avst_iowr_bl_return_glfwChooseFBConfig_valid = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;

    // not_ready(LOGICAL,153)
    assign not_ready_q = ~ (glfwChooseFBConfig_function_out_iord_bl_call_glfwChooseFBConfig_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,386)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,385)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,382)
    assign busy = busy_or_q;

    // done(GPOUT,383)
    assign done = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifovalid;

    // returndata(GPOUT,384)
    assign returndata = glfwChooseFBConfig_function_out_iowr_bl_return_glfwChooseFBConfig_o_fifodata;

endmodule
