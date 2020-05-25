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

// SystemVerilog created from xmlCheckLanguageID_function_wrapper
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_function_wrapper (
    input wire [63:0] avm_lm14_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm14_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm14_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm14_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm1516_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm1516_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm1516_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm1516_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm15523_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm15523_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm15523_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm15523_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm2417_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm2417_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm2417_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm2417_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm3618_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm3618_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm3618_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm3618_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm415_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm415_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm415_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm415_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm54627_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm54627_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm54627_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm54627_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm7121_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm7121_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm7121_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm7121_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm7426_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm7426_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm7426_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm7426_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm77430_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm77430_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm77430_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm77430_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm819_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm819_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm819_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm819_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_lm9225_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_lm9225_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_lm9225_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_lm9225_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_pr_lm22_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_pr_lm22_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_pr_lm22_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_pr_lm22_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_pre155_lm24_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_pre156_lm29_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_pre157_lm28_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_writeack,
    input wire [63:0] avm_pre_lm20_xmlCheckLanguageID_readdata,
    input wire [0:0] avm_pre_lm20_xmlCheckLanguageID_readdatavalid,
    input wire [0:0] avm_pre_lm20_xmlCheckLanguageID_waitrequest,
    input wire [0:0] avm_pre_lm20_xmlCheckLanguageID_writeack,
    input wire [63:0] avst_iord_bl_call_xmlCheckLanguageID_data,
    input wire [0:0] avst_iord_bl_call_xmlCheckLanguageID_valid,
    input wire [0:0] avst_iowr_bl_return_xmlCheckLanguageID_almostfull,
    input wire [0:0] avst_iowr_bl_return_xmlCheckLanguageID_ready,
    input wire [63:0] lang,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm14_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm14_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm14_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm14_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm14_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm14_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm14_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm1516_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm1516_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm1516_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm1516_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm1516_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm1516_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm1516_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm15523_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm15523_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm15523_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm15523_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm15523_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm15523_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm15523_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm2417_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm2417_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm2417_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm2417_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm2417_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm2417_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm2417_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm3618_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm3618_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm3618_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm3618_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm3618_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm3618_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm3618_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm415_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm415_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm415_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm415_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm415_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm415_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm415_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm54627_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm54627_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm54627_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm54627_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm54627_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm54627_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm54627_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm7121_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm7121_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm7121_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm7121_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm7121_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm7121_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm7121_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm7426_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm7426_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm7426_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm7426_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm7426_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm7426_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm7426_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm77430_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm77430_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm77430_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm77430_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm77430_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm77430_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm77430_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm819_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm819_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm819_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm819_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm819_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm819_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm819_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_lm9225_xmlCheckLanguageID_address,
    output wire [0:0] avm_lm9225_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_lm9225_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_lm9225_xmlCheckLanguageID_enable,
    output wire [0:0] avm_lm9225_xmlCheckLanguageID_read,
    output wire [0:0] avm_lm9225_xmlCheckLanguageID_write,
    output wire [63:0] avm_lm9225_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_pr_lm22_xmlCheckLanguageID_address,
    output wire [0:0] avm_pr_lm22_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_pr_lm22_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_pr_lm22_xmlCheckLanguageID_enable,
    output wire [0:0] avm_pr_lm22_xmlCheckLanguageID_read,
    output wire [0:0] avm_pr_lm22_xmlCheckLanguageID_write,
    output wire [63:0] avm_pr_lm22_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_pre155_lm24_xmlCheckLanguageID_address,
    output wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_pre155_lm24_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_enable,
    output wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_read,
    output wire [0:0] avm_pre155_lm24_xmlCheckLanguageID_write,
    output wire [63:0] avm_pre155_lm24_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_pre156_lm29_xmlCheckLanguageID_address,
    output wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_pre156_lm29_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_enable,
    output wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_read,
    output wire [0:0] avm_pre156_lm29_xmlCheckLanguageID_write,
    output wire [63:0] avm_pre156_lm29_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_pre157_lm28_xmlCheckLanguageID_address,
    output wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_pre157_lm28_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_enable,
    output wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_read,
    output wire [0:0] avm_pre157_lm28_xmlCheckLanguageID_write,
    output wire [63:0] avm_pre157_lm28_xmlCheckLanguageID_writedata,
    output wire [63:0] avm_pre_lm20_xmlCheckLanguageID_address,
    output wire [0:0] avm_pre_lm20_xmlCheckLanguageID_burstcount,
    output wire [7:0] avm_pre_lm20_xmlCheckLanguageID_byteenable,
    output wire [0:0] avm_pre_lm20_xmlCheckLanguageID_enable,
    output wire [0:0] avm_pre_lm20_xmlCheckLanguageID_read,
    output wire [0:0] avm_pre_lm20_xmlCheckLanguageID_write,
    output wire [63:0] avm_pre_lm20_xmlCheckLanguageID_writedata,
    output wire [0:0] avst_iord_bl_call_xmlCheckLanguageID_ready,
    output wire [31:0] avst_iowr_bl_return_xmlCheckLanguageID_data,
    output wire [0:0] avst_iowr_bl_return_xmlCheckLanguageID_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [63:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] xmlCheckLanguageID_function_out_iord_bl_call_xmlCheckLanguageID_o_fifoready;
    wire [31:0] xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;
    wire [0:0] xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;
    wire [63:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;
    wire [63:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_address;
    wire [0:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_enable;
    wire [0:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_read;
    wire [0:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_write;
    wire [63:0] xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,87)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = lang;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // xmlCheckLanguageID_function(BLACKBOX,217)
    xmlCheckLanguageID_function thexmlCheckLanguageID_function (
        .in_arg_call(call_const_q),
        .in_arg_lang(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_xmlCheckLanguageID_i_fifodata(implicit_input_q),
        .in_iord_bl_call_xmlCheckLanguageID_i_fifovalid(start),
        .in_iowr_bl_return_xmlCheckLanguageID_i_fifoready(not_stall_q),
        .in_lm14_xmlCheckLanguageID_avm_readdata(avm_lm14_xmlCheckLanguageID_readdata),
        .in_lm14_xmlCheckLanguageID_avm_readdatavalid(avm_lm14_xmlCheckLanguageID_readdatavalid),
        .in_lm14_xmlCheckLanguageID_avm_waitrequest(avm_lm14_xmlCheckLanguageID_waitrequest),
        .in_lm14_xmlCheckLanguageID_avm_writeack(avm_lm14_xmlCheckLanguageID_writeack),
        .in_lm1516_xmlCheckLanguageID_avm_readdata(avm_lm1516_xmlCheckLanguageID_readdata),
        .in_lm1516_xmlCheckLanguageID_avm_readdatavalid(avm_lm1516_xmlCheckLanguageID_readdatavalid),
        .in_lm1516_xmlCheckLanguageID_avm_waitrequest(avm_lm1516_xmlCheckLanguageID_waitrequest),
        .in_lm1516_xmlCheckLanguageID_avm_writeack(avm_lm1516_xmlCheckLanguageID_writeack),
        .in_lm15523_xmlCheckLanguageID_avm_readdata(avm_lm15523_xmlCheckLanguageID_readdata),
        .in_lm15523_xmlCheckLanguageID_avm_readdatavalid(avm_lm15523_xmlCheckLanguageID_readdatavalid),
        .in_lm15523_xmlCheckLanguageID_avm_waitrequest(avm_lm15523_xmlCheckLanguageID_waitrequest),
        .in_lm15523_xmlCheckLanguageID_avm_writeack(avm_lm15523_xmlCheckLanguageID_writeack),
        .in_lm2417_xmlCheckLanguageID_avm_readdata(avm_lm2417_xmlCheckLanguageID_readdata),
        .in_lm2417_xmlCheckLanguageID_avm_readdatavalid(avm_lm2417_xmlCheckLanguageID_readdatavalid),
        .in_lm2417_xmlCheckLanguageID_avm_waitrequest(avm_lm2417_xmlCheckLanguageID_waitrequest),
        .in_lm2417_xmlCheckLanguageID_avm_writeack(avm_lm2417_xmlCheckLanguageID_writeack),
        .in_lm3618_xmlCheckLanguageID_avm_readdata(avm_lm3618_xmlCheckLanguageID_readdata),
        .in_lm3618_xmlCheckLanguageID_avm_readdatavalid(avm_lm3618_xmlCheckLanguageID_readdatavalid),
        .in_lm3618_xmlCheckLanguageID_avm_waitrequest(avm_lm3618_xmlCheckLanguageID_waitrequest),
        .in_lm3618_xmlCheckLanguageID_avm_writeack(avm_lm3618_xmlCheckLanguageID_writeack),
        .in_lm415_xmlCheckLanguageID_avm_readdata(avm_lm415_xmlCheckLanguageID_readdata),
        .in_lm415_xmlCheckLanguageID_avm_readdatavalid(avm_lm415_xmlCheckLanguageID_readdatavalid),
        .in_lm415_xmlCheckLanguageID_avm_waitrequest(avm_lm415_xmlCheckLanguageID_waitrequest),
        .in_lm415_xmlCheckLanguageID_avm_writeack(avm_lm415_xmlCheckLanguageID_writeack),
        .in_lm54627_xmlCheckLanguageID_avm_readdata(avm_lm54627_xmlCheckLanguageID_readdata),
        .in_lm54627_xmlCheckLanguageID_avm_readdatavalid(avm_lm54627_xmlCheckLanguageID_readdatavalid),
        .in_lm54627_xmlCheckLanguageID_avm_waitrequest(avm_lm54627_xmlCheckLanguageID_waitrequest),
        .in_lm54627_xmlCheckLanguageID_avm_writeack(avm_lm54627_xmlCheckLanguageID_writeack),
        .in_lm7121_xmlCheckLanguageID_avm_readdata(avm_lm7121_xmlCheckLanguageID_readdata),
        .in_lm7121_xmlCheckLanguageID_avm_readdatavalid(avm_lm7121_xmlCheckLanguageID_readdatavalid),
        .in_lm7121_xmlCheckLanguageID_avm_waitrequest(avm_lm7121_xmlCheckLanguageID_waitrequest),
        .in_lm7121_xmlCheckLanguageID_avm_writeack(avm_lm7121_xmlCheckLanguageID_writeack),
        .in_lm7426_xmlCheckLanguageID_avm_readdata(avm_lm7426_xmlCheckLanguageID_readdata),
        .in_lm7426_xmlCheckLanguageID_avm_readdatavalid(avm_lm7426_xmlCheckLanguageID_readdatavalid),
        .in_lm7426_xmlCheckLanguageID_avm_waitrequest(avm_lm7426_xmlCheckLanguageID_waitrequest),
        .in_lm7426_xmlCheckLanguageID_avm_writeack(avm_lm7426_xmlCheckLanguageID_writeack),
        .in_lm77430_xmlCheckLanguageID_avm_readdata(avm_lm77430_xmlCheckLanguageID_readdata),
        .in_lm77430_xmlCheckLanguageID_avm_readdatavalid(avm_lm77430_xmlCheckLanguageID_readdatavalid),
        .in_lm77430_xmlCheckLanguageID_avm_waitrequest(avm_lm77430_xmlCheckLanguageID_waitrequest),
        .in_lm77430_xmlCheckLanguageID_avm_writeack(avm_lm77430_xmlCheckLanguageID_writeack),
        .in_lm819_xmlCheckLanguageID_avm_readdata(avm_lm819_xmlCheckLanguageID_readdata),
        .in_lm819_xmlCheckLanguageID_avm_readdatavalid(avm_lm819_xmlCheckLanguageID_readdatavalid),
        .in_lm819_xmlCheckLanguageID_avm_waitrequest(avm_lm819_xmlCheckLanguageID_waitrequest),
        .in_lm819_xmlCheckLanguageID_avm_writeack(avm_lm819_xmlCheckLanguageID_writeack),
        .in_lm9225_xmlCheckLanguageID_avm_readdata(avm_lm9225_xmlCheckLanguageID_readdata),
        .in_lm9225_xmlCheckLanguageID_avm_readdatavalid(avm_lm9225_xmlCheckLanguageID_readdatavalid),
        .in_lm9225_xmlCheckLanguageID_avm_waitrequest(avm_lm9225_xmlCheckLanguageID_waitrequest),
        .in_lm9225_xmlCheckLanguageID_avm_writeack(avm_lm9225_xmlCheckLanguageID_writeack),
        .in_pr_lm22_xmlCheckLanguageID_avm_readdata(avm_pr_lm22_xmlCheckLanguageID_readdata),
        .in_pr_lm22_xmlCheckLanguageID_avm_readdatavalid(avm_pr_lm22_xmlCheckLanguageID_readdatavalid),
        .in_pr_lm22_xmlCheckLanguageID_avm_waitrequest(avm_pr_lm22_xmlCheckLanguageID_waitrequest),
        .in_pr_lm22_xmlCheckLanguageID_avm_writeack(avm_pr_lm22_xmlCheckLanguageID_writeack),
        .in_pre155_lm24_xmlCheckLanguageID_avm_readdata(avm_pre155_lm24_xmlCheckLanguageID_readdata),
        .in_pre155_lm24_xmlCheckLanguageID_avm_readdatavalid(avm_pre155_lm24_xmlCheckLanguageID_readdatavalid),
        .in_pre155_lm24_xmlCheckLanguageID_avm_waitrequest(avm_pre155_lm24_xmlCheckLanguageID_waitrequest),
        .in_pre155_lm24_xmlCheckLanguageID_avm_writeack(avm_pre155_lm24_xmlCheckLanguageID_writeack),
        .in_pre156_lm29_xmlCheckLanguageID_avm_readdata(avm_pre156_lm29_xmlCheckLanguageID_readdata),
        .in_pre156_lm29_xmlCheckLanguageID_avm_readdatavalid(avm_pre156_lm29_xmlCheckLanguageID_readdatavalid),
        .in_pre156_lm29_xmlCheckLanguageID_avm_waitrequest(avm_pre156_lm29_xmlCheckLanguageID_waitrequest),
        .in_pre156_lm29_xmlCheckLanguageID_avm_writeack(avm_pre156_lm29_xmlCheckLanguageID_writeack),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdata(avm_pre157_lm28_xmlCheckLanguageID_readdata),
        .in_pre157_lm28_xmlCheckLanguageID_avm_readdatavalid(avm_pre157_lm28_xmlCheckLanguageID_readdatavalid),
        .in_pre157_lm28_xmlCheckLanguageID_avm_waitrequest(avm_pre157_lm28_xmlCheckLanguageID_waitrequest),
        .in_pre157_lm28_xmlCheckLanguageID_avm_writeack(avm_pre157_lm28_xmlCheckLanguageID_writeack),
        .in_pre_lm20_xmlCheckLanguageID_avm_readdata(avm_pre_lm20_xmlCheckLanguageID_readdata),
        .in_pre_lm20_xmlCheckLanguageID_avm_readdatavalid(avm_pre_lm20_xmlCheckLanguageID_readdatavalid),
        .in_pre_lm20_xmlCheckLanguageID_avm_waitrequest(avm_pre_lm20_xmlCheckLanguageID_waitrequest),
        .in_pre_lm20_xmlCheckLanguageID_avm_writeack(avm_pre_lm20_xmlCheckLanguageID_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_xmlCheckLanguageID_o_fifoready(xmlCheckLanguageID_function_out_iord_bl_call_xmlCheckLanguageID_o_fifoready),
        .out_iowr_bl_return_xmlCheckLanguageID_o_fifodata(xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata),
        .out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid(xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid),
        .out_lm14_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_address),
        .out_lm14_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_burstcount),
        .out_lm14_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_byteenable),
        .out_lm14_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_enable),
        .out_lm14_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_read),
        .out_lm14_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_write),
        .out_lm14_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_writedata),
        .out_lm1516_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_address),
        .out_lm1516_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_burstcount),
        .out_lm1516_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_byteenable),
        .out_lm1516_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_enable),
        .out_lm1516_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_read),
        .out_lm1516_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_write),
        .out_lm1516_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_writedata),
        .out_lm15523_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_address),
        .out_lm15523_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_burstcount),
        .out_lm15523_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_byteenable),
        .out_lm15523_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_enable),
        .out_lm15523_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_read),
        .out_lm15523_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_write),
        .out_lm15523_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_writedata),
        .out_lm2417_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_address),
        .out_lm2417_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_burstcount),
        .out_lm2417_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_byteenable),
        .out_lm2417_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_enable),
        .out_lm2417_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_read),
        .out_lm2417_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_write),
        .out_lm2417_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_writedata),
        .out_lm3618_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_address),
        .out_lm3618_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_burstcount),
        .out_lm3618_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_byteenable),
        .out_lm3618_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_enable),
        .out_lm3618_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_read),
        .out_lm3618_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_write),
        .out_lm3618_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_writedata),
        .out_lm415_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_address),
        .out_lm415_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_burstcount),
        .out_lm415_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_byteenable),
        .out_lm415_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_enable),
        .out_lm415_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_read),
        .out_lm415_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_write),
        .out_lm415_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_writedata),
        .out_lm54627_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_address),
        .out_lm54627_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_burstcount),
        .out_lm54627_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_byteenable),
        .out_lm54627_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_enable),
        .out_lm54627_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_read),
        .out_lm54627_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_write),
        .out_lm54627_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_writedata),
        .out_lm7121_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_address),
        .out_lm7121_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_burstcount),
        .out_lm7121_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_byteenable),
        .out_lm7121_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_enable),
        .out_lm7121_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_read),
        .out_lm7121_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_write),
        .out_lm7121_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_writedata),
        .out_lm7426_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_address),
        .out_lm7426_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_burstcount),
        .out_lm7426_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_byteenable),
        .out_lm7426_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_enable),
        .out_lm7426_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_read),
        .out_lm7426_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_write),
        .out_lm7426_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_writedata),
        .out_lm77430_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_address),
        .out_lm77430_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_burstcount),
        .out_lm77430_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_byteenable),
        .out_lm77430_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_enable),
        .out_lm77430_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_read),
        .out_lm77430_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_write),
        .out_lm77430_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_writedata),
        .out_lm819_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_address),
        .out_lm819_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_burstcount),
        .out_lm819_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_byteenable),
        .out_lm819_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_enable),
        .out_lm819_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_read),
        .out_lm819_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_write),
        .out_lm819_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_writedata),
        .out_lm9225_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_address),
        .out_lm9225_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_burstcount),
        .out_lm9225_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_byteenable),
        .out_lm9225_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_enable),
        .out_lm9225_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_read),
        .out_lm9225_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_write),
        .out_lm9225_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_writedata),
        .out_pr_lm22_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_address),
        .out_pr_lm22_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_burstcount),
        .out_pr_lm22_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_byteenable),
        .out_pr_lm22_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_enable),
        .out_pr_lm22_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_read),
        .out_pr_lm22_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_write),
        .out_pr_lm22_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_writedata),
        .out_pre155_lm24_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_address),
        .out_pre155_lm24_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_burstcount),
        .out_pre155_lm24_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_byteenable),
        .out_pre155_lm24_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_enable),
        .out_pre155_lm24_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_read),
        .out_pre155_lm24_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_write),
        .out_pre155_lm24_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_writedata),
        .out_pre156_lm29_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_address),
        .out_pre156_lm29_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_burstcount),
        .out_pre156_lm29_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_byteenable),
        .out_pre156_lm29_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_enable),
        .out_pre156_lm29_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_read),
        .out_pre156_lm29_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_write),
        .out_pre156_lm29_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_writedata),
        .out_pre157_lm28_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_address),
        .out_pre157_lm28_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount),
        .out_pre157_lm28_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_enable),
        .out_pre157_lm28_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_read),
        .out_pre157_lm28_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_write),
        .out_pre157_lm28_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_writedata),
        .out_pre_lm20_xmlCheckLanguageID_avm_address(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_address),
        .out_pre_lm20_xmlCheckLanguageID_avm_burstcount(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_burstcount),
        .out_pre_lm20_xmlCheckLanguageID_avm_byteenable(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_byteenable),
        .out_pre_lm20_xmlCheckLanguageID_avm_enable(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_enable),
        .out_pre_lm20_xmlCheckLanguageID_avm_read(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_read),
        .out_pre_lm20_xmlCheckLanguageID_avm_write(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_write),
        .out_pre_lm20_xmlCheckLanguageID_avm_writedata(xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_writedata),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm14_xmlCheckLanguageID_address(GPOUT,88)
    assign avm_lm14_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_address;

    // avm_lm14_xmlCheckLanguageID_burstcount(GPOUT,89)
    assign avm_lm14_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_burstcount;

    // avm_lm14_xmlCheckLanguageID_byteenable(GPOUT,90)
    assign avm_lm14_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_byteenable;

    // avm_lm14_xmlCheckLanguageID_enable(GPOUT,91)
    assign avm_lm14_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_enable;

    // avm_lm14_xmlCheckLanguageID_read(GPOUT,92)
    assign avm_lm14_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_read;

    // avm_lm14_xmlCheckLanguageID_write(GPOUT,93)
    assign avm_lm14_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_write;

    // avm_lm14_xmlCheckLanguageID_writedata(GPOUT,94)
    assign avm_lm14_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm14_xmlCheckLanguageID_avm_writedata;

    // avm_lm1516_xmlCheckLanguageID_address(GPOUT,95)
    assign avm_lm1516_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_address;

    // avm_lm1516_xmlCheckLanguageID_burstcount(GPOUT,96)
    assign avm_lm1516_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_burstcount;

    // avm_lm1516_xmlCheckLanguageID_byteenable(GPOUT,97)
    assign avm_lm1516_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_byteenable;

    // avm_lm1516_xmlCheckLanguageID_enable(GPOUT,98)
    assign avm_lm1516_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_enable;

    // avm_lm1516_xmlCheckLanguageID_read(GPOUT,99)
    assign avm_lm1516_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_read;

    // avm_lm1516_xmlCheckLanguageID_write(GPOUT,100)
    assign avm_lm1516_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_write;

    // avm_lm1516_xmlCheckLanguageID_writedata(GPOUT,101)
    assign avm_lm1516_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm1516_xmlCheckLanguageID_avm_writedata;

    // avm_lm15523_xmlCheckLanguageID_address(GPOUT,102)
    assign avm_lm15523_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_address;

    // avm_lm15523_xmlCheckLanguageID_burstcount(GPOUT,103)
    assign avm_lm15523_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_burstcount;

    // avm_lm15523_xmlCheckLanguageID_byteenable(GPOUT,104)
    assign avm_lm15523_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_byteenable;

    // avm_lm15523_xmlCheckLanguageID_enable(GPOUT,105)
    assign avm_lm15523_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_enable;

    // avm_lm15523_xmlCheckLanguageID_read(GPOUT,106)
    assign avm_lm15523_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_read;

    // avm_lm15523_xmlCheckLanguageID_write(GPOUT,107)
    assign avm_lm15523_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_write;

    // avm_lm15523_xmlCheckLanguageID_writedata(GPOUT,108)
    assign avm_lm15523_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm15523_xmlCheckLanguageID_avm_writedata;

    // avm_lm2417_xmlCheckLanguageID_address(GPOUT,109)
    assign avm_lm2417_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_address;

    // avm_lm2417_xmlCheckLanguageID_burstcount(GPOUT,110)
    assign avm_lm2417_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_burstcount;

    // avm_lm2417_xmlCheckLanguageID_byteenable(GPOUT,111)
    assign avm_lm2417_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_byteenable;

    // avm_lm2417_xmlCheckLanguageID_enable(GPOUT,112)
    assign avm_lm2417_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_enable;

    // avm_lm2417_xmlCheckLanguageID_read(GPOUT,113)
    assign avm_lm2417_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_read;

    // avm_lm2417_xmlCheckLanguageID_write(GPOUT,114)
    assign avm_lm2417_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_write;

    // avm_lm2417_xmlCheckLanguageID_writedata(GPOUT,115)
    assign avm_lm2417_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm2417_xmlCheckLanguageID_avm_writedata;

    // avm_lm3618_xmlCheckLanguageID_address(GPOUT,116)
    assign avm_lm3618_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_address;

    // avm_lm3618_xmlCheckLanguageID_burstcount(GPOUT,117)
    assign avm_lm3618_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_burstcount;

    // avm_lm3618_xmlCheckLanguageID_byteenable(GPOUT,118)
    assign avm_lm3618_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_byteenable;

    // avm_lm3618_xmlCheckLanguageID_enable(GPOUT,119)
    assign avm_lm3618_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_enable;

    // avm_lm3618_xmlCheckLanguageID_read(GPOUT,120)
    assign avm_lm3618_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_read;

    // avm_lm3618_xmlCheckLanguageID_write(GPOUT,121)
    assign avm_lm3618_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_write;

    // avm_lm3618_xmlCheckLanguageID_writedata(GPOUT,122)
    assign avm_lm3618_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm3618_xmlCheckLanguageID_avm_writedata;

    // avm_lm415_xmlCheckLanguageID_address(GPOUT,123)
    assign avm_lm415_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_address;

    // avm_lm415_xmlCheckLanguageID_burstcount(GPOUT,124)
    assign avm_lm415_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_burstcount;

    // avm_lm415_xmlCheckLanguageID_byteenable(GPOUT,125)
    assign avm_lm415_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_byteenable;

    // avm_lm415_xmlCheckLanguageID_enable(GPOUT,126)
    assign avm_lm415_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_enable;

    // avm_lm415_xmlCheckLanguageID_read(GPOUT,127)
    assign avm_lm415_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_read;

    // avm_lm415_xmlCheckLanguageID_write(GPOUT,128)
    assign avm_lm415_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_write;

    // avm_lm415_xmlCheckLanguageID_writedata(GPOUT,129)
    assign avm_lm415_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm415_xmlCheckLanguageID_avm_writedata;

    // avm_lm54627_xmlCheckLanguageID_address(GPOUT,130)
    assign avm_lm54627_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_address;

    // avm_lm54627_xmlCheckLanguageID_burstcount(GPOUT,131)
    assign avm_lm54627_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_burstcount;

    // avm_lm54627_xmlCheckLanguageID_byteenable(GPOUT,132)
    assign avm_lm54627_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_byteenable;

    // avm_lm54627_xmlCheckLanguageID_enable(GPOUT,133)
    assign avm_lm54627_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_enable;

    // avm_lm54627_xmlCheckLanguageID_read(GPOUT,134)
    assign avm_lm54627_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_read;

    // avm_lm54627_xmlCheckLanguageID_write(GPOUT,135)
    assign avm_lm54627_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_write;

    // avm_lm54627_xmlCheckLanguageID_writedata(GPOUT,136)
    assign avm_lm54627_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm54627_xmlCheckLanguageID_avm_writedata;

    // avm_lm7121_xmlCheckLanguageID_address(GPOUT,137)
    assign avm_lm7121_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_address;

    // avm_lm7121_xmlCheckLanguageID_burstcount(GPOUT,138)
    assign avm_lm7121_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_burstcount;

    // avm_lm7121_xmlCheckLanguageID_byteenable(GPOUT,139)
    assign avm_lm7121_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_byteenable;

    // avm_lm7121_xmlCheckLanguageID_enable(GPOUT,140)
    assign avm_lm7121_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_enable;

    // avm_lm7121_xmlCheckLanguageID_read(GPOUT,141)
    assign avm_lm7121_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_read;

    // avm_lm7121_xmlCheckLanguageID_write(GPOUT,142)
    assign avm_lm7121_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_write;

    // avm_lm7121_xmlCheckLanguageID_writedata(GPOUT,143)
    assign avm_lm7121_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm7121_xmlCheckLanguageID_avm_writedata;

    // avm_lm7426_xmlCheckLanguageID_address(GPOUT,144)
    assign avm_lm7426_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_address;

    // avm_lm7426_xmlCheckLanguageID_burstcount(GPOUT,145)
    assign avm_lm7426_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_burstcount;

    // avm_lm7426_xmlCheckLanguageID_byteenable(GPOUT,146)
    assign avm_lm7426_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_byteenable;

    // avm_lm7426_xmlCheckLanguageID_enable(GPOUT,147)
    assign avm_lm7426_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_enable;

    // avm_lm7426_xmlCheckLanguageID_read(GPOUT,148)
    assign avm_lm7426_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_read;

    // avm_lm7426_xmlCheckLanguageID_write(GPOUT,149)
    assign avm_lm7426_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_write;

    // avm_lm7426_xmlCheckLanguageID_writedata(GPOUT,150)
    assign avm_lm7426_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm7426_xmlCheckLanguageID_avm_writedata;

    // avm_lm77430_xmlCheckLanguageID_address(GPOUT,151)
    assign avm_lm77430_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_address;

    // avm_lm77430_xmlCheckLanguageID_burstcount(GPOUT,152)
    assign avm_lm77430_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_burstcount;

    // avm_lm77430_xmlCheckLanguageID_byteenable(GPOUT,153)
    assign avm_lm77430_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_byteenable;

    // avm_lm77430_xmlCheckLanguageID_enable(GPOUT,154)
    assign avm_lm77430_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_enable;

    // avm_lm77430_xmlCheckLanguageID_read(GPOUT,155)
    assign avm_lm77430_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_read;

    // avm_lm77430_xmlCheckLanguageID_write(GPOUT,156)
    assign avm_lm77430_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_write;

    // avm_lm77430_xmlCheckLanguageID_writedata(GPOUT,157)
    assign avm_lm77430_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm77430_xmlCheckLanguageID_avm_writedata;

    // avm_lm819_xmlCheckLanguageID_address(GPOUT,158)
    assign avm_lm819_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_address;

    // avm_lm819_xmlCheckLanguageID_burstcount(GPOUT,159)
    assign avm_lm819_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_burstcount;

    // avm_lm819_xmlCheckLanguageID_byteenable(GPOUT,160)
    assign avm_lm819_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_byteenable;

    // avm_lm819_xmlCheckLanguageID_enable(GPOUT,161)
    assign avm_lm819_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_enable;

    // avm_lm819_xmlCheckLanguageID_read(GPOUT,162)
    assign avm_lm819_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_read;

    // avm_lm819_xmlCheckLanguageID_write(GPOUT,163)
    assign avm_lm819_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_write;

    // avm_lm819_xmlCheckLanguageID_writedata(GPOUT,164)
    assign avm_lm819_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm819_xmlCheckLanguageID_avm_writedata;

    // avm_lm9225_xmlCheckLanguageID_address(GPOUT,165)
    assign avm_lm9225_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_address;

    // avm_lm9225_xmlCheckLanguageID_burstcount(GPOUT,166)
    assign avm_lm9225_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_burstcount;

    // avm_lm9225_xmlCheckLanguageID_byteenable(GPOUT,167)
    assign avm_lm9225_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_byteenable;

    // avm_lm9225_xmlCheckLanguageID_enable(GPOUT,168)
    assign avm_lm9225_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_enable;

    // avm_lm9225_xmlCheckLanguageID_read(GPOUT,169)
    assign avm_lm9225_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_read;

    // avm_lm9225_xmlCheckLanguageID_write(GPOUT,170)
    assign avm_lm9225_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_write;

    // avm_lm9225_xmlCheckLanguageID_writedata(GPOUT,171)
    assign avm_lm9225_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_lm9225_xmlCheckLanguageID_avm_writedata;

    // avm_pr_lm22_xmlCheckLanguageID_address(GPOUT,172)
    assign avm_pr_lm22_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_address;

    // avm_pr_lm22_xmlCheckLanguageID_burstcount(GPOUT,173)
    assign avm_pr_lm22_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_burstcount;

    // avm_pr_lm22_xmlCheckLanguageID_byteenable(GPOUT,174)
    assign avm_pr_lm22_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_byteenable;

    // avm_pr_lm22_xmlCheckLanguageID_enable(GPOUT,175)
    assign avm_pr_lm22_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_enable;

    // avm_pr_lm22_xmlCheckLanguageID_read(GPOUT,176)
    assign avm_pr_lm22_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_read;

    // avm_pr_lm22_xmlCheckLanguageID_write(GPOUT,177)
    assign avm_pr_lm22_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_write;

    // avm_pr_lm22_xmlCheckLanguageID_writedata(GPOUT,178)
    assign avm_pr_lm22_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_pr_lm22_xmlCheckLanguageID_avm_writedata;

    // avm_pre155_lm24_xmlCheckLanguageID_address(GPOUT,179)
    assign avm_pre155_lm24_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_address;

    // avm_pre155_lm24_xmlCheckLanguageID_burstcount(GPOUT,180)
    assign avm_pre155_lm24_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_burstcount;

    // avm_pre155_lm24_xmlCheckLanguageID_byteenable(GPOUT,181)
    assign avm_pre155_lm24_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_byteenable;

    // avm_pre155_lm24_xmlCheckLanguageID_enable(GPOUT,182)
    assign avm_pre155_lm24_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_enable;

    // avm_pre155_lm24_xmlCheckLanguageID_read(GPOUT,183)
    assign avm_pre155_lm24_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_read;

    // avm_pre155_lm24_xmlCheckLanguageID_write(GPOUT,184)
    assign avm_pre155_lm24_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_write;

    // avm_pre155_lm24_xmlCheckLanguageID_writedata(GPOUT,185)
    assign avm_pre155_lm24_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_pre155_lm24_xmlCheckLanguageID_avm_writedata;

    // avm_pre156_lm29_xmlCheckLanguageID_address(GPOUT,186)
    assign avm_pre156_lm29_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_address;

    // avm_pre156_lm29_xmlCheckLanguageID_burstcount(GPOUT,187)
    assign avm_pre156_lm29_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_burstcount;

    // avm_pre156_lm29_xmlCheckLanguageID_byteenable(GPOUT,188)
    assign avm_pre156_lm29_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_byteenable;

    // avm_pre156_lm29_xmlCheckLanguageID_enable(GPOUT,189)
    assign avm_pre156_lm29_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_enable;

    // avm_pre156_lm29_xmlCheckLanguageID_read(GPOUT,190)
    assign avm_pre156_lm29_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_read;

    // avm_pre156_lm29_xmlCheckLanguageID_write(GPOUT,191)
    assign avm_pre156_lm29_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_write;

    // avm_pre156_lm29_xmlCheckLanguageID_writedata(GPOUT,192)
    assign avm_pre156_lm29_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_pre156_lm29_xmlCheckLanguageID_avm_writedata;

    // avm_pre157_lm28_xmlCheckLanguageID_address(GPOUT,193)
    assign avm_pre157_lm28_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_address;

    // avm_pre157_lm28_xmlCheckLanguageID_burstcount(GPOUT,194)
    assign avm_pre157_lm28_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_burstcount;

    // avm_pre157_lm28_xmlCheckLanguageID_byteenable(GPOUT,195)
    assign avm_pre157_lm28_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_byteenable;

    // avm_pre157_lm28_xmlCheckLanguageID_enable(GPOUT,196)
    assign avm_pre157_lm28_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_enable;

    // avm_pre157_lm28_xmlCheckLanguageID_read(GPOUT,197)
    assign avm_pre157_lm28_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_read;

    // avm_pre157_lm28_xmlCheckLanguageID_write(GPOUT,198)
    assign avm_pre157_lm28_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_write;

    // avm_pre157_lm28_xmlCheckLanguageID_writedata(GPOUT,199)
    assign avm_pre157_lm28_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_pre157_lm28_xmlCheckLanguageID_avm_writedata;

    // avm_pre_lm20_xmlCheckLanguageID_address(GPOUT,200)
    assign avm_pre_lm20_xmlCheckLanguageID_address = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_address;

    // avm_pre_lm20_xmlCheckLanguageID_burstcount(GPOUT,201)
    assign avm_pre_lm20_xmlCheckLanguageID_burstcount = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_burstcount;

    // avm_pre_lm20_xmlCheckLanguageID_byteenable(GPOUT,202)
    assign avm_pre_lm20_xmlCheckLanguageID_byteenable = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_byteenable;

    // avm_pre_lm20_xmlCheckLanguageID_enable(GPOUT,203)
    assign avm_pre_lm20_xmlCheckLanguageID_enable = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_enable;

    // avm_pre_lm20_xmlCheckLanguageID_read(GPOUT,204)
    assign avm_pre_lm20_xmlCheckLanguageID_read = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_read;

    // avm_pre_lm20_xmlCheckLanguageID_write(GPOUT,205)
    assign avm_pre_lm20_xmlCheckLanguageID_write = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_write;

    // avm_pre_lm20_xmlCheckLanguageID_writedata(GPOUT,206)
    assign avm_pre_lm20_xmlCheckLanguageID_writedata = xmlCheckLanguageID_function_out_pre_lm20_xmlCheckLanguageID_avm_writedata;

    // avst_iord_bl_call_xmlCheckLanguageID_ready(GPOUT,207)
    assign avst_iord_bl_call_xmlCheckLanguageID_ready = xmlCheckLanguageID_function_out_iord_bl_call_xmlCheckLanguageID_o_fifoready;

    // avst_iowr_bl_return_xmlCheckLanguageID_data(GPOUT,208)
    assign avst_iowr_bl_return_xmlCheckLanguageID_data = xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;

    // avst_iowr_bl_return_xmlCheckLanguageID_valid(GPOUT,209)
    assign avst_iowr_bl_return_xmlCheckLanguageID_valid = xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;

    // not_ready(LOGICAL,86)
    assign not_ready_q = ~ (xmlCheckLanguageID_function_out_iord_bl_call_xmlCheckLanguageID_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,214)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,213)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,210)
    assign busy = busy_or_q;

    // done(GPOUT,211)
    assign done = xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifovalid;

    // returndata(GPOUT,212)
    assign returndata = xmlCheckLanguageID_function_out_iowr_bl_return_xmlCheckLanguageID_o_fifodata;

endmodule
