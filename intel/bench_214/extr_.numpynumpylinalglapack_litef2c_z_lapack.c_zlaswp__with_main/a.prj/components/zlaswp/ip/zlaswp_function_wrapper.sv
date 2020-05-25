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

// SystemVerilog created from zlaswp_function_wrapper
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_function_wrapper (
    input wire [63:0] a,
    input wire [63:0] avm_lm1021_zlaswp_readdata,
    input wire [0:0] avm_lm1021_zlaswp_readdatavalid,
    input wire [0:0] avm_lm1021_zlaswp_waitrequest,
    input wire [0:0] avm_lm1021_zlaswp_writeack,
    input wire [63:0] avm_lm1052_zlaswp_readdata,
    input wire [0:0] avm_lm1052_zlaswp_readdatavalid,
    input wire [0:0] avm_lm1052_zlaswp_waitrequest,
    input wire [0:0] avm_lm1052_zlaswp_writeack,
    input wire [63:0] avm_lm1165_zlaswp_readdata,
    input wire [0:0] avm_lm1165_zlaswp_readdatavalid,
    input wire [0:0] avm_lm1165_zlaswp_waitrequest,
    input wire [0:0] avm_lm1165_zlaswp_writeack,
    input wire [63:0] avm_lm1476_zlaswp_readdata,
    input wire [0:0] avm_lm1476_zlaswp_readdatavalid,
    input wire [0:0] avm_lm1476_zlaswp_waitrequest,
    input wire [0:0] avm_lm1476_zlaswp_writeack,
    input wire [63:0] avm_lm18611_zlaswp_readdata,
    input wire [0:0] avm_lm18611_zlaswp_readdatavalid,
    input wire [0:0] avm_lm18611_zlaswp_waitrequest,
    input wire [0:0] avm_lm18611_zlaswp_writeack,
    input wire [63:0] avm_lm19012_zlaswp_readdata,
    input wire [0:0] avm_lm19012_zlaswp_readdatavalid,
    input wire [0:0] avm_lm19012_zlaswp_waitrequest,
    input wire [0:0] avm_lm19012_zlaswp_writeack,
    input wire [63:0] avm_lm248_zlaswp_readdata,
    input wire [0:0] avm_lm248_zlaswp_readdatavalid,
    input wire [0:0] avm_lm248_zlaswp_waitrequest,
    input wire [0:0] avm_lm248_zlaswp_writeack,
    input wire [63:0] avm_lm269_zlaswp_readdata,
    input wire [0:0] avm_lm269_zlaswp_readdatavalid,
    input wire [0:0] avm_lm269_zlaswp_waitrequest,
    input wire [0:0] avm_lm269_zlaswp_writeack,
    input wire [63:0] avm_lm2810_zlaswp_readdata,
    input wire [0:0] avm_lm2810_zlaswp_readdatavalid,
    input wire [0:0] avm_lm2810_zlaswp_waitrequest,
    input wire [0:0] avm_lm2810_zlaswp_writeack,
    input wire [63:0] avm_lm3213_zlaswp_readdata,
    input wire [0:0] avm_lm3213_zlaswp_readdatavalid,
    input wire [0:0] avm_lm3213_zlaswp_waitrequest,
    input wire [0:0] avm_lm3213_zlaswp_writeack,
    input wire [63:0] avm_lm3414_zlaswp_readdata,
    input wire [0:0] avm_lm3414_zlaswp_readdatavalid,
    input wire [0:0] avm_lm3414_zlaswp_waitrequest,
    input wire [0:0] avm_lm3414_zlaswp_writeack,
    input wire [63:0] avm_lm3615_zlaswp_readdata,
    input wire [0:0] avm_lm3615_zlaswp_readdatavalid,
    input wire [0:0] avm_lm3615_zlaswp_waitrequest,
    input wire [0:0] avm_lm3615_zlaswp_writeack,
    input wire [63:0] avm_lm3816_zlaswp_readdata,
    input wire [0:0] avm_lm3816_zlaswp_readdatavalid,
    input wire [0:0] avm_lm3816_zlaswp_waitrequest,
    input wire [0:0] avm_lm3816_zlaswp_writeack,
    input wire [63:0] avm_lm5619_zlaswp_readdata,
    input wire [0:0] avm_lm5619_zlaswp_readdatavalid,
    input wire [0:0] avm_lm5619_zlaswp_waitrequest,
    input wire [0:0] avm_lm5619_zlaswp_writeack,
    input wire [63:0] avm_lm6118_zlaswp_readdata,
    input wire [0:0] avm_lm6118_zlaswp_readdatavalid,
    input wire [0:0] avm_lm6118_zlaswp_waitrequest,
    input wire [0:0] avm_lm6118_zlaswp_writeack,
    input wire [63:0] avm_lm7_zlaswp_readdata,
    input wire [0:0] avm_lm7_zlaswp_readdatavalid,
    input wire [0:0] avm_lm7_zlaswp_waitrequest,
    input wire [0:0] avm_lm7_zlaswp_writeack,
    input wire [63:0] avm_lm8417_zlaswp_readdata,
    input wire [0:0] avm_lm8417_zlaswp_readdatavalid,
    input wire [0:0] avm_lm8417_zlaswp_waitrequest,
    input wire [0:0] avm_lm8417_zlaswp_writeack,
    input wire [63:0] avm_memdep_102_zlaswp_readdata,
    input wire [0:0] avm_memdep_102_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_102_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_102_zlaswp_writeack,
    input wire [63:0] avm_memdep_119_zlaswp_readdata,
    input wire [0:0] avm_memdep_119_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_119_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_119_zlaswp_writeack,
    input wire [63:0] avm_memdep_31_zlaswp_readdata,
    input wire [0:0] avm_memdep_31_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_31_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_31_zlaswp_writeack,
    input wire [63:0] avm_memdep_38_zlaswp_readdata,
    input wire [0:0] avm_memdep_38_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_38_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_38_zlaswp_writeack,
    input wire [63:0] avm_memdep_46_zlaswp_readdata,
    input wire [0:0] avm_memdep_46_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_46_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_46_zlaswp_writeack,
    input wire [63:0] avm_memdep_71_zlaswp_readdata,
    input wire [0:0] avm_memdep_71_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_71_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_71_zlaswp_writeack,
    input wire [63:0] avm_memdep_87_zlaswp_readdata,
    input wire [0:0] avm_memdep_87_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_87_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_87_zlaswp_writeack,
    input wire [63:0] avm_memdep_zlaswp_readdata,
    input wire [0:0] avm_memdep_zlaswp_readdatavalid,
    input wire [0:0] avm_memdep_zlaswp_waitrequest,
    input wire [0:0] avm_memdep_zlaswp_writeack,
    input wire [63:0] avm_storemerge1_lm3_zlaswp_readdata,
    input wire [0:0] avm_storemerge1_lm3_zlaswp_readdatavalid,
    input wire [0:0] avm_storemerge1_lm3_zlaswp_waitrequest,
    input wire [0:0] avm_storemerge1_lm3_zlaswp_writeack,
    input wire [63:0] avm_storemerge72_lm4_zlaswp_readdata,
    input wire [0:0] avm_storemerge72_lm4_zlaswp_readdatavalid,
    input wire [0:0] avm_storemerge72_lm4_zlaswp_waitrequest,
    input wire [0:0] avm_storemerge72_lm4_zlaswp_writeack,
    input wire [63:0] avm_unnamed_zlaswp3_zlaswp_readdata,
    input wire [0:0] avm_unnamed_zlaswp3_zlaswp_readdatavalid,
    input wire [0:0] avm_unnamed_zlaswp3_zlaswp_waitrequest,
    input wire [0:0] avm_unnamed_zlaswp3_zlaswp_writeack,
    input wire [63:0] avm_unnamed_zlaswp4_zlaswp_readdata,
    input wire [0:0] avm_unnamed_zlaswp4_zlaswp_readdatavalid,
    input wire [0:0] avm_unnamed_zlaswp4_zlaswp_waitrequest,
    input wire [0:0] avm_unnamed_zlaswp4_zlaswp_writeack,
    input wire [447:0] avst_iord_bl_call_zlaswp_data,
    input wire [0:0] avst_iord_bl_call_zlaswp_valid,
    input wire [0:0] avst_iowr_bl_return_zlaswp_almostfull,
    input wire [0:0] avst_iowr_bl_return_zlaswp_ready,
    input wire [63:0] incx,
    input wire [63:0] ipiv,
    input wire [63:0] k1,
    input wire [63:0] k2,
    input wire [63:0] lda,
    input wire [63:0] n,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm1021_zlaswp_address,
    output wire [0:0] avm_lm1021_zlaswp_burstcount,
    output wire [7:0] avm_lm1021_zlaswp_byteenable,
    output wire [0:0] avm_lm1021_zlaswp_enable,
    output wire [0:0] avm_lm1021_zlaswp_read,
    output wire [0:0] avm_lm1021_zlaswp_write,
    output wire [63:0] avm_lm1021_zlaswp_writedata,
    output wire [63:0] avm_lm1052_zlaswp_address,
    output wire [0:0] avm_lm1052_zlaswp_burstcount,
    output wire [7:0] avm_lm1052_zlaswp_byteenable,
    output wire [0:0] avm_lm1052_zlaswp_enable,
    output wire [0:0] avm_lm1052_zlaswp_read,
    output wire [0:0] avm_lm1052_zlaswp_write,
    output wire [63:0] avm_lm1052_zlaswp_writedata,
    output wire [63:0] avm_lm1165_zlaswp_address,
    output wire [0:0] avm_lm1165_zlaswp_burstcount,
    output wire [7:0] avm_lm1165_zlaswp_byteenable,
    output wire [0:0] avm_lm1165_zlaswp_enable,
    output wire [0:0] avm_lm1165_zlaswp_read,
    output wire [0:0] avm_lm1165_zlaswp_write,
    output wire [63:0] avm_lm1165_zlaswp_writedata,
    output wire [63:0] avm_lm1476_zlaswp_address,
    output wire [0:0] avm_lm1476_zlaswp_burstcount,
    output wire [7:0] avm_lm1476_zlaswp_byteenable,
    output wire [0:0] avm_lm1476_zlaswp_enable,
    output wire [0:0] avm_lm1476_zlaswp_read,
    output wire [0:0] avm_lm1476_zlaswp_write,
    output wire [63:0] avm_lm1476_zlaswp_writedata,
    output wire [63:0] avm_lm18611_zlaswp_address,
    output wire [0:0] avm_lm18611_zlaswp_burstcount,
    output wire [7:0] avm_lm18611_zlaswp_byteenable,
    output wire [0:0] avm_lm18611_zlaswp_enable,
    output wire [0:0] avm_lm18611_zlaswp_read,
    output wire [0:0] avm_lm18611_zlaswp_write,
    output wire [63:0] avm_lm18611_zlaswp_writedata,
    output wire [63:0] avm_lm19012_zlaswp_address,
    output wire [0:0] avm_lm19012_zlaswp_burstcount,
    output wire [7:0] avm_lm19012_zlaswp_byteenable,
    output wire [0:0] avm_lm19012_zlaswp_enable,
    output wire [0:0] avm_lm19012_zlaswp_read,
    output wire [0:0] avm_lm19012_zlaswp_write,
    output wire [63:0] avm_lm19012_zlaswp_writedata,
    output wire [63:0] avm_lm248_zlaswp_address,
    output wire [0:0] avm_lm248_zlaswp_burstcount,
    output wire [7:0] avm_lm248_zlaswp_byteenable,
    output wire [0:0] avm_lm248_zlaswp_enable,
    output wire [0:0] avm_lm248_zlaswp_read,
    output wire [0:0] avm_lm248_zlaswp_write,
    output wire [63:0] avm_lm248_zlaswp_writedata,
    output wire [63:0] avm_lm269_zlaswp_address,
    output wire [0:0] avm_lm269_zlaswp_burstcount,
    output wire [7:0] avm_lm269_zlaswp_byteenable,
    output wire [0:0] avm_lm269_zlaswp_enable,
    output wire [0:0] avm_lm269_zlaswp_read,
    output wire [0:0] avm_lm269_zlaswp_write,
    output wire [63:0] avm_lm269_zlaswp_writedata,
    output wire [63:0] avm_lm2810_zlaswp_address,
    output wire [0:0] avm_lm2810_zlaswp_burstcount,
    output wire [7:0] avm_lm2810_zlaswp_byteenable,
    output wire [0:0] avm_lm2810_zlaswp_enable,
    output wire [0:0] avm_lm2810_zlaswp_read,
    output wire [0:0] avm_lm2810_zlaswp_write,
    output wire [63:0] avm_lm2810_zlaswp_writedata,
    output wire [63:0] avm_lm3213_zlaswp_address,
    output wire [0:0] avm_lm3213_zlaswp_burstcount,
    output wire [7:0] avm_lm3213_zlaswp_byteenable,
    output wire [0:0] avm_lm3213_zlaswp_enable,
    output wire [0:0] avm_lm3213_zlaswp_read,
    output wire [0:0] avm_lm3213_zlaswp_write,
    output wire [63:0] avm_lm3213_zlaswp_writedata,
    output wire [63:0] avm_lm3414_zlaswp_address,
    output wire [0:0] avm_lm3414_zlaswp_burstcount,
    output wire [7:0] avm_lm3414_zlaswp_byteenable,
    output wire [0:0] avm_lm3414_zlaswp_enable,
    output wire [0:0] avm_lm3414_zlaswp_read,
    output wire [0:0] avm_lm3414_zlaswp_write,
    output wire [63:0] avm_lm3414_zlaswp_writedata,
    output wire [63:0] avm_lm3615_zlaswp_address,
    output wire [0:0] avm_lm3615_zlaswp_burstcount,
    output wire [7:0] avm_lm3615_zlaswp_byteenable,
    output wire [0:0] avm_lm3615_zlaswp_enable,
    output wire [0:0] avm_lm3615_zlaswp_read,
    output wire [0:0] avm_lm3615_zlaswp_write,
    output wire [63:0] avm_lm3615_zlaswp_writedata,
    output wire [63:0] avm_lm3816_zlaswp_address,
    output wire [0:0] avm_lm3816_zlaswp_burstcount,
    output wire [7:0] avm_lm3816_zlaswp_byteenable,
    output wire [0:0] avm_lm3816_zlaswp_enable,
    output wire [0:0] avm_lm3816_zlaswp_read,
    output wire [0:0] avm_lm3816_zlaswp_write,
    output wire [63:0] avm_lm3816_zlaswp_writedata,
    output wire [63:0] avm_lm5619_zlaswp_address,
    output wire [0:0] avm_lm5619_zlaswp_burstcount,
    output wire [7:0] avm_lm5619_zlaswp_byteenable,
    output wire [0:0] avm_lm5619_zlaswp_enable,
    output wire [0:0] avm_lm5619_zlaswp_read,
    output wire [0:0] avm_lm5619_zlaswp_write,
    output wire [63:0] avm_lm5619_zlaswp_writedata,
    output wire [63:0] avm_lm6118_zlaswp_address,
    output wire [0:0] avm_lm6118_zlaswp_burstcount,
    output wire [7:0] avm_lm6118_zlaswp_byteenable,
    output wire [0:0] avm_lm6118_zlaswp_enable,
    output wire [0:0] avm_lm6118_zlaswp_read,
    output wire [0:0] avm_lm6118_zlaswp_write,
    output wire [63:0] avm_lm6118_zlaswp_writedata,
    output wire [63:0] avm_lm7_zlaswp_address,
    output wire [0:0] avm_lm7_zlaswp_burstcount,
    output wire [7:0] avm_lm7_zlaswp_byteenable,
    output wire [0:0] avm_lm7_zlaswp_enable,
    output wire [0:0] avm_lm7_zlaswp_read,
    output wire [0:0] avm_lm7_zlaswp_write,
    output wire [63:0] avm_lm7_zlaswp_writedata,
    output wire [63:0] avm_lm8417_zlaswp_address,
    output wire [0:0] avm_lm8417_zlaswp_burstcount,
    output wire [7:0] avm_lm8417_zlaswp_byteenable,
    output wire [0:0] avm_lm8417_zlaswp_enable,
    output wire [0:0] avm_lm8417_zlaswp_read,
    output wire [0:0] avm_lm8417_zlaswp_write,
    output wire [63:0] avm_lm8417_zlaswp_writedata,
    output wire [63:0] avm_memdep_102_zlaswp_address,
    output wire [0:0] avm_memdep_102_zlaswp_burstcount,
    output wire [7:0] avm_memdep_102_zlaswp_byteenable,
    output wire [0:0] avm_memdep_102_zlaswp_enable,
    output wire [0:0] avm_memdep_102_zlaswp_read,
    output wire [0:0] avm_memdep_102_zlaswp_write,
    output wire [63:0] avm_memdep_102_zlaswp_writedata,
    output wire [63:0] avm_memdep_119_zlaswp_address,
    output wire [0:0] avm_memdep_119_zlaswp_burstcount,
    output wire [7:0] avm_memdep_119_zlaswp_byteenable,
    output wire [0:0] avm_memdep_119_zlaswp_enable,
    output wire [0:0] avm_memdep_119_zlaswp_read,
    output wire [0:0] avm_memdep_119_zlaswp_write,
    output wire [63:0] avm_memdep_119_zlaswp_writedata,
    output wire [63:0] avm_memdep_31_zlaswp_address,
    output wire [0:0] avm_memdep_31_zlaswp_burstcount,
    output wire [7:0] avm_memdep_31_zlaswp_byteenable,
    output wire [0:0] avm_memdep_31_zlaswp_enable,
    output wire [0:0] avm_memdep_31_zlaswp_read,
    output wire [0:0] avm_memdep_31_zlaswp_write,
    output wire [63:0] avm_memdep_31_zlaswp_writedata,
    output wire [63:0] avm_memdep_38_zlaswp_address,
    output wire [0:0] avm_memdep_38_zlaswp_burstcount,
    output wire [7:0] avm_memdep_38_zlaswp_byteenable,
    output wire [0:0] avm_memdep_38_zlaswp_enable,
    output wire [0:0] avm_memdep_38_zlaswp_read,
    output wire [0:0] avm_memdep_38_zlaswp_write,
    output wire [63:0] avm_memdep_38_zlaswp_writedata,
    output wire [63:0] avm_memdep_46_zlaswp_address,
    output wire [0:0] avm_memdep_46_zlaswp_burstcount,
    output wire [7:0] avm_memdep_46_zlaswp_byteenable,
    output wire [0:0] avm_memdep_46_zlaswp_enable,
    output wire [0:0] avm_memdep_46_zlaswp_read,
    output wire [0:0] avm_memdep_46_zlaswp_write,
    output wire [63:0] avm_memdep_46_zlaswp_writedata,
    output wire [63:0] avm_memdep_71_zlaswp_address,
    output wire [0:0] avm_memdep_71_zlaswp_burstcount,
    output wire [7:0] avm_memdep_71_zlaswp_byteenable,
    output wire [0:0] avm_memdep_71_zlaswp_enable,
    output wire [0:0] avm_memdep_71_zlaswp_read,
    output wire [0:0] avm_memdep_71_zlaswp_write,
    output wire [63:0] avm_memdep_71_zlaswp_writedata,
    output wire [63:0] avm_memdep_87_zlaswp_address,
    output wire [0:0] avm_memdep_87_zlaswp_burstcount,
    output wire [7:0] avm_memdep_87_zlaswp_byteenable,
    output wire [0:0] avm_memdep_87_zlaswp_enable,
    output wire [0:0] avm_memdep_87_zlaswp_read,
    output wire [0:0] avm_memdep_87_zlaswp_write,
    output wire [63:0] avm_memdep_87_zlaswp_writedata,
    output wire [63:0] avm_memdep_zlaswp_address,
    output wire [0:0] avm_memdep_zlaswp_burstcount,
    output wire [7:0] avm_memdep_zlaswp_byteenable,
    output wire [0:0] avm_memdep_zlaswp_enable,
    output wire [0:0] avm_memdep_zlaswp_read,
    output wire [0:0] avm_memdep_zlaswp_write,
    output wire [63:0] avm_memdep_zlaswp_writedata,
    output wire [63:0] avm_storemerge1_lm3_zlaswp_address,
    output wire [0:0] avm_storemerge1_lm3_zlaswp_burstcount,
    output wire [7:0] avm_storemerge1_lm3_zlaswp_byteenable,
    output wire [0:0] avm_storemerge1_lm3_zlaswp_enable,
    output wire [0:0] avm_storemerge1_lm3_zlaswp_read,
    output wire [0:0] avm_storemerge1_lm3_zlaswp_write,
    output wire [63:0] avm_storemerge1_lm3_zlaswp_writedata,
    output wire [63:0] avm_storemerge72_lm4_zlaswp_address,
    output wire [0:0] avm_storemerge72_lm4_zlaswp_burstcount,
    output wire [7:0] avm_storemerge72_lm4_zlaswp_byteenable,
    output wire [0:0] avm_storemerge72_lm4_zlaswp_enable,
    output wire [0:0] avm_storemerge72_lm4_zlaswp_read,
    output wire [0:0] avm_storemerge72_lm4_zlaswp_write,
    output wire [63:0] avm_storemerge72_lm4_zlaswp_writedata,
    output wire [63:0] avm_unnamed_zlaswp3_zlaswp_address,
    output wire [0:0] avm_unnamed_zlaswp3_zlaswp_burstcount,
    output wire [7:0] avm_unnamed_zlaswp3_zlaswp_byteenable,
    output wire [0:0] avm_unnamed_zlaswp3_zlaswp_enable,
    output wire [0:0] avm_unnamed_zlaswp3_zlaswp_read,
    output wire [0:0] avm_unnamed_zlaswp3_zlaswp_write,
    output wire [63:0] avm_unnamed_zlaswp3_zlaswp_writedata,
    output wire [63:0] avm_unnamed_zlaswp4_zlaswp_address,
    output wire [0:0] avm_unnamed_zlaswp4_zlaswp_burstcount,
    output wire [7:0] avm_unnamed_zlaswp4_zlaswp_byteenable,
    output wire [0:0] avm_unnamed_zlaswp4_zlaswp_enable,
    output wire [0:0] avm_unnamed_zlaswp4_zlaswp_read,
    output wire [0:0] avm_unnamed_zlaswp4_zlaswp_write,
    output wire [63:0] avm_unnamed_zlaswp4_zlaswp_writedata,
    output wire [0:0] avst_iord_bl_call_zlaswp_ready,
    output wire [31:0] avst_iowr_bl_return_zlaswp_data,
    output wire [0:0] avst_iowr_bl_return_zlaswp_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] a_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [447:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] zlaswp_function_out_iord_bl_call_zlaswp_o_fifoready;
    wire [31:0] zlaswp_function_out_iowr_bl_return_zlaswp_o_fifodata;
    wire [0:0] zlaswp_function_out_iowr_bl_return_zlaswp_o_fifovalid;
    wire [63:0] zlaswp_function_out_lm1021_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm1021_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm1021_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm1021_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm1021_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm1021_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm1021_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm1052_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm1052_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm1052_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm1052_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm1052_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm1052_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm1052_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm1165_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm1165_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm1165_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm1165_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm1165_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm1165_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm1165_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm1476_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm1476_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm1476_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm1476_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm1476_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm1476_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm1476_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm18611_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm18611_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm18611_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm18611_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm18611_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm18611_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm18611_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm19012_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm19012_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm19012_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm19012_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm19012_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm19012_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm19012_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm248_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm248_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm248_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm248_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm248_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm248_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm248_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm269_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm269_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm269_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm269_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm269_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm269_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm269_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm2810_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm2810_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm2810_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm2810_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm2810_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm2810_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm2810_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm3213_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm3213_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm3213_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm3213_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm3213_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm3213_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm3213_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm3414_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm3414_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm3414_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm3414_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm3414_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm3414_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm3414_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm3615_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm3615_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm3615_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm3615_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm3615_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm3615_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm3615_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm3816_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm3816_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm3816_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm3816_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm3816_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm3816_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm3816_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm5619_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm5619_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm5619_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm5619_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm5619_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm5619_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm5619_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm6118_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm6118_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm6118_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm6118_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm6118_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm6118_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm6118_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm7_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm7_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm7_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm7_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm7_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm7_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm7_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_lm8417_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_lm8417_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_lm8417_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_lm8417_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_lm8417_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_lm8417_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_lm8417_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_102_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_102_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_102_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_102_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_102_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_102_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_102_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_119_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_119_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_119_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_119_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_119_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_119_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_119_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_31_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_31_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_31_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_31_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_31_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_31_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_31_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_38_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_38_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_38_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_38_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_38_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_38_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_38_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_46_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_46_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_46_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_46_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_46_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_46_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_46_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_71_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_71_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_71_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_71_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_71_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_71_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_71_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_87_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_87_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_87_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_87_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_87_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_87_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_87_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_memdep_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_memdep_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_memdep_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_memdep_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_memdep_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_memdep_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_memdep_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_storemerge1_lm3_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_storemerge72_lm4_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_writedata;
    wire [63:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_address;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_burstcount;
    wire [7:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_byteenable;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_enable;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_read;
    wire [0:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_write;
    wire [63:0] zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,147)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {incx, ipiv, k2, k1, lda, a, n};

    // a_const(CONSTANT,2)
    assign a_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // zlaswp_function(BLACKBOX,361)
    zlaswp_function thezlaswp_function (
        .in_arg_a(a_const_q),
        .in_arg_call(a_const_q),
        .in_arg_incx(a_const_q),
        .in_arg_ipiv(a_const_q),
        .in_arg_k1(a_const_q),
        .in_arg_k2(a_const_q),
        .in_arg_lda(a_const_q),
        .in_arg_n(a_const_q),
        .in_arg_return(a_const_q),
        .in_iord_bl_call_zlaswp_i_fifodata(implicit_input_q),
        .in_iord_bl_call_zlaswp_i_fifovalid(start),
        .in_iowr_bl_return_zlaswp_i_fifoready(not_stall_q),
        .in_lm1021_zlaswp_avm_readdata(avm_lm1021_zlaswp_readdata),
        .in_lm1021_zlaswp_avm_readdatavalid(avm_lm1021_zlaswp_readdatavalid),
        .in_lm1021_zlaswp_avm_waitrequest(avm_lm1021_zlaswp_waitrequest),
        .in_lm1021_zlaswp_avm_writeack(avm_lm1021_zlaswp_writeack),
        .in_lm1052_zlaswp_avm_readdata(avm_lm1052_zlaswp_readdata),
        .in_lm1052_zlaswp_avm_readdatavalid(avm_lm1052_zlaswp_readdatavalid),
        .in_lm1052_zlaswp_avm_waitrequest(avm_lm1052_zlaswp_waitrequest),
        .in_lm1052_zlaswp_avm_writeack(avm_lm1052_zlaswp_writeack),
        .in_lm1165_zlaswp_avm_readdata(avm_lm1165_zlaswp_readdata),
        .in_lm1165_zlaswp_avm_readdatavalid(avm_lm1165_zlaswp_readdatavalid),
        .in_lm1165_zlaswp_avm_waitrequest(avm_lm1165_zlaswp_waitrequest),
        .in_lm1165_zlaswp_avm_writeack(avm_lm1165_zlaswp_writeack),
        .in_lm1476_zlaswp_avm_readdata(avm_lm1476_zlaswp_readdata),
        .in_lm1476_zlaswp_avm_readdatavalid(avm_lm1476_zlaswp_readdatavalid),
        .in_lm1476_zlaswp_avm_waitrequest(avm_lm1476_zlaswp_waitrequest),
        .in_lm1476_zlaswp_avm_writeack(avm_lm1476_zlaswp_writeack),
        .in_lm18611_zlaswp_avm_readdata(avm_lm18611_zlaswp_readdata),
        .in_lm18611_zlaswp_avm_readdatavalid(avm_lm18611_zlaswp_readdatavalid),
        .in_lm18611_zlaswp_avm_waitrequest(avm_lm18611_zlaswp_waitrequest),
        .in_lm18611_zlaswp_avm_writeack(avm_lm18611_zlaswp_writeack),
        .in_lm19012_zlaswp_avm_readdata(avm_lm19012_zlaswp_readdata),
        .in_lm19012_zlaswp_avm_readdatavalid(avm_lm19012_zlaswp_readdatavalid),
        .in_lm19012_zlaswp_avm_waitrequest(avm_lm19012_zlaswp_waitrequest),
        .in_lm19012_zlaswp_avm_writeack(avm_lm19012_zlaswp_writeack),
        .in_lm248_zlaswp_avm_readdata(avm_lm248_zlaswp_readdata),
        .in_lm248_zlaswp_avm_readdatavalid(avm_lm248_zlaswp_readdatavalid),
        .in_lm248_zlaswp_avm_waitrequest(avm_lm248_zlaswp_waitrequest),
        .in_lm248_zlaswp_avm_writeack(avm_lm248_zlaswp_writeack),
        .in_lm269_zlaswp_avm_readdata(avm_lm269_zlaswp_readdata),
        .in_lm269_zlaswp_avm_readdatavalid(avm_lm269_zlaswp_readdatavalid),
        .in_lm269_zlaswp_avm_waitrequest(avm_lm269_zlaswp_waitrequest),
        .in_lm269_zlaswp_avm_writeack(avm_lm269_zlaswp_writeack),
        .in_lm2810_zlaswp_avm_readdata(avm_lm2810_zlaswp_readdata),
        .in_lm2810_zlaswp_avm_readdatavalid(avm_lm2810_zlaswp_readdatavalid),
        .in_lm2810_zlaswp_avm_waitrequest(avm_lm2810_zlaswp_waitrequest),
        .in_lm2810_zlaswp_avm_writeack(avm_lm2810_zlaswp_writeack),
        .in_lm3213_zlaswp_avm_readdata(avm_lm3213_zlaswp_readdata),
        .in_lm3213_zlaswp_avm_readdatavalid(avm_lm3213_zlaswp_readdatavalid),
        .in_lm3213_zlaswp_avm_waitrequest(avm_lm3213_zlaswp_waitrequest),
        .in_lm3213_zlaswp_avm_writeack(avm_lm3213_zlaswp_writeack),
        .in_lm3414_zlaswp_avm_readdata(avm_lm3414_zlaswp_readdata),
        .in_lm3414_zlaswp_avm_readdatavalid(avm_lm3414_zlaswp_readdatavalid),
        .in_lm3414_zlaswp_avm_waitrequest(avm_lm3414_zlaswp_waitrequest),
        .in_lm3414_zlaswp_avm_writeack(avm_lm3414_zlaswp_writeack),
        .in_lm3615_zlaswp_avm_readdata(avm_lm3615_zlaswp_readdata),
        .in_lm3615_zlaswp_avm_readdatavalid(avm_lm3615_zlaswp_readdatavalid),
        .in_lm3615_zlaswp_avm_waitrequest(avm_lm3615_zlaswp_waitrequest),
        .in_lm3615_zlaswp_avm_writeack(avm_lm3615_zlaswp_writeack),
        .in_lm3816_zlaswp_avm_readdata(avm_lm3816_zlaswp_readdata),
        .in_lm3816_zlaswp_avm_readdatavalid(avm_lm3816_zlaswp_readdatavalid),
        .in_lm3816_zlaswp_avm_waitrequest(avm_lm3816_zlaswp_waitrequest),
        .in_lm3816_zlaswp_avm_writeack(avm_lm3816_zlaswp_writeack),
        .in_lm5619_zlaswp_avm_readdata(avm_lm5619_zlaswp_readdata),
        .in_lm5619_zlaswp_avm_readdatavalid(avm_lm5619_zlaswp_readdatavalid),
        .in_lm5619_zlaswp_avm_waitrequest(avm_lm5619_zlaswp_waitrequest),
        .in_lm5619_zlaswp_avm_writeack(avm_lm5619_zlaswp_writeack),
        .in_lm6118_zlaswp_avm_readdata(avm_lm6118_zlaswp_readdata),
        .in_lm6118_zlaswp_avm_readdatavalid(avm_lm6118_zlaswp_readdatavalid),
        .in_lm6118_zlaswp_avm_waitrequest(avm_lm6118_zlaswp_waitrequest),
        .in_lm6118_zlaswp_avm_writeack(avm_lm6118_zlaswp_writeack),
        .in_lm7_zlaswp_avm_readdata(avm_lm7_zlaswp_readdata),
        .in_lm7_zlaswp_avm_readdatavalid(avm_lm7_zlaswp_readdatavalid),
        .in_lm7_zlaswp_avm_waitrequest(avm_lm7_zlaswp_waitrequest),
        .in_lm7_zlaswp_avm_writeack(avm_lm7_zlaswp_writeack),
        .in_lm8417_zlaswp_avm_readdata(avm_lm8417_zlaswp_readdata),
        .in_lm8417_zlaswp_avm_readdatavalid(avm_lm8417_zlaswp_readdatavalid),
        .in_lm8417_zlaswp_avm_waitrequest(avm_lm8417_zlaswp_waitrequest),
        .in_lm8417_zlaswp_avm_writeack(avm_lm8417_zlaswp_writeack),
        .in_memdep_102_zlaswp_avm_readdata(avm_memdep_102_zlaswp_readdata),
        .in_memdep_102_zlaswp_avm_readdatavalid(avm_memdep_102_zlaswp_readdatavalid),
        .in_memdep_102_zlaswp_avm_waitrequest(avm_memdep_102_zlaswp_waitrequest),
        .in_memdep_102_zlaswp_avm_writeack(avm_memdep_102_zlaswp_writeack),
        .in_memdep_119_zlaswp_avm_readdata(avm_memdep_119_zlaswp_readdata),
        .in_memdep_119_zlaswp_avm_readdatavalid(avm_memdep_119_zlaswp_readdatavalid),
        .in_memdep_119_zlaswp_avm_waitrequest(avm_memdep_119_zlaswp_waitrequest),
        .in_memdep_119_zlaswp_avm_writeack(avm_memdep_119_zlaswp_writeack),
        .in_memdep_31_zlaswp_avm_readdata(avm_memdep_31_zlaswp_readdata),
        .in_memdep_31_zlaswp_avm_readdatavalid(avm_memdep_31_zlaswp_readdatavalid),
        .in_memdep_31_zlaswp_avm_waitrequest(avm_memdep_31_zlaswp_waitrequest),
        .in_memdep_31_zlaswp_avm_writeack(avm_memdep_31_zlaswp_writeack),
        .in_memdep_38_zlaswp_avm_readdata(avm_memdep_38_zlaswp_readdata),
        .in_memdep_38_zlaswp_avm_readdatavalid(avm_memdep_38_zlaswp_readdatavalid),
        .in_memdep_38_zlaswp_avm_waitrequest(avm_memdep_38_zlaswp_waitrequest),
        .in_memdep_38_zlaswp_avm_writeack(avm_memdep_38_zlaswp_writeack),
        .in_memdep_46_zlaswp_avm_readdata(avm_memdep_46_zlaswp_readdata),
        .in_memdep_46_zlaswp_avm_readdatavalid(avm_memdep_46_zlaswp_readdatavalid),
        .in_memdep_46_zlaswp_avm_waitrequest(avm_memdep_46_zlaswp_waitrequest),
        .in_memdep_46_zlaswp_avm_writeack(avm_memdep_46_zlaswp_writeack),
        .in_memdep_71_zlaswp_avm_readdata(avm_memdep_71_zlaswp_readdata),
        .in_memdep_71_zlaswp_avm_readdatavalid(avm_memdep_71_zlaswp_readdatavalid),
        .in_memdep_71_zlaswp_avm_waitrequest(avm_memdep_71_zlaswp_waitrequest),
        .in_memdep_71_zlaswp_avm_writeack(avm_memdep_71_zlaswp_writeack),
        .in_memdep_87_zlaswp_avm_readdata(avm_memdep_87_zlaswp_readdata),
        .in_memdep_87_zlaswp_avm_readdatavalid(avm_memdep_87_zlaswp_readdatavalid),
        .in_memdep_87_zlaswp_avm_waitrequest(avm_memdep_87_zlaswp_waitrequest),
        .in_memdep_87_zlaswp_avm_writeack(avm_memdep_87_zlaswp_writeack),
        .in_memdep_zlaswp_avm_readdata(avm_memdep_zlaswp_readdata),
        .in_memdep_zlaswp_avm_readdatavalid(avm_memdep_zlaswp_readdatavalid),
        .in_memdep_zlaswp_avm_waitrequest(avm_memdep_zlaswp_waitrequest),
        .in_memdep_zlaswp_avm_writeack(avm_memdep_zlaswp_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_storemerge1_lm3_zlaswp_avm_readdata(avm_storemerge1_lm3_zlaswp_readdata),
        .in_storemerge1_lm3_zlaswp_avm_readdatavalid(avm_storemerge1_lm3_zlaswp_readdatavalid),
        .in_storemerge1_lm3_zlaswp_avm_waitrequest(avm_storemerge1_lm3_zlaswp_waitrequest),
        .in_storemerge1_lm3_zlaswp_avm_writeack(avm_storemerge1_lm3_zlaswp_writeack),
        .in_storemerge72_lm4_zlaswp_avm_readdata(avm_storemerge72_lm4_zlaswp_readdata),
        .in_storemerge72_lm4_zlaswp_avm_readdatavalid(avm_storemerge72_lm4_zlaswp_readdatavalid),
        .in_storemerge72_lm4_zlaswp_avm_waitrequest(avm_storemerge72_lm4_zlaswp_waitrequest),
        .in_storemerge72_lm4_zlaswp_avm_writeack(avm_storemerge72_lm4_zlaswp_writeack),
        .in_unnamed_zlaswp3_zlaswp_avm_readdata(avm_unnamed_zlaswp3_zlaswp_readdata),
        .in_unnamed_zlaswp3_zlaswp_avm_readdatavalid(avm_unnamed_zlaswp3_zlaswp_readdatavalid),
        .in_unnamed_zlaswp3_zlaswp_avm_waitrequest(avm_unnamed_zlaswp3_zlaswp_waitrequest),
        .in_unnamed_zlaswp3_zlaswp_avm_writeack(avm_unnamed_zlaswp3_zlaswp_writeack),
        .in_unnamed_zlaswp4_zlaswp_avm_readdata(avm_unnamed_zlaswp4_zlaswp_readdata),
        .in_unnamed_zlaswp4_zlaswp_avm_readdatavalid(avm_unnamed_zlaswp4_zlaswp_readdatavalid),
        .in_unnamed_zlaswp4_zlaswp_avm_waitrequest(avm_unnamed_zlaswp4_zlaswp_waitrequest),
        .in_unnamed_zlaswp4_zlaswp_avm_writeack(avm_unnamed_zlaswp4_zlaswp_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_zlaswp_o_fifoready(zlaswp_function_out_iord_bl_call_zlaswp_o_fifoready),
        .out_iowr_bl_return_zlaswp_o_fifodata(zlaswp_function_out_iowr_bl_return_zlaswp_o_fifodata),
        .out_iowr_bl_return_zlaswp_o_fifovalid(zlaswp_function_out_iowr_bl_return_zlaswp_o_fifovalid),
        .out_lm1021_zlaswp_avm_address(zlaswp_function_out_lm1021_zlaswp_avm_address),
        .out_lm1021_zlaswp_avm_burstcount(zlaswp_function_out_lm1021_zlaswp_avm_burstcount),
        .out_lm1021_zlaswp_avm_byteenable(zlaswp_function_out_lm1021_zlaswp_avm_byteenable),
        .out_lm1021_zlaswp_avm_enable(zlaswp_function_out_lm1021_zlaswp_avm_enable),
        .out_lm1021_zlaswp_avm_read(zlaswp_function_out_lm1021_zlaswp_avm_read),
        .out_lm1021_zlaswp_avm_write(zlaswp_function_out_lm1021_zlaswp_avm_write),
        .out_lm1021_zlaswp_avm_writedata(zlaswp_function_out_lm1021_zlaswp_avm_writedata),
        .out_lm1052_zlaswp_avm_address(zlaswp_function_out_lm1052_zlaswp_avm_address),
        .out_lm1052_zlaswp_avm_burstcount(zlaswp_function_out_lm1052_zlaswp_avm_burstcount),
        .out_lm1052_zlaswp_avm_byteenable(zlaswp_function_out_lm1052_zlaswp_avm_byteenable),
        .out_lm1052_zlaswp_avm_enable(zlaswp_function_out_lm1052_zlaswp_avm_enable),
        .out_lm1052_zlaswp_avm_read(zlaswp_function_out_lm1052_zlaswp_avm_read),
        .out_lm1052_zlaswp_avm_write(zlaswp_function_out_lm1052_zlaswp_avm_write),
        .out_lm1052_zlaswp_avm_writedata(zlaswp_function_out_lm1052_zlaswp_avm_writedata),
        .out_lm1165_zlaswp_avm_address(zlaswp_function_out_lm1165_zlaswp_avm_address),
        .out_lm1165_zlaswp_avm_burstcount(zlaswp_function_out_lm1165_zlaswp_avm_burstcount),
        .out_lm1165_zlaswp_avm_byteenable(zlaswp_function_out_lm1165_zlaswp_avm_byteenable),
        .out_lm1165_zlaswp_avm_enable(zlaswp_function_out_lm1165_zlaswp_avm_enable),
        .out_lm1165_zlaswp_avm_read(zlaswp_function_out_lm1165_zlaswp_avm_read),
        .out_lm1165_zlaswp_avm_write(zlaswp_function_out_lm1165_zlaswp_avm_write),
        .out_lm1165_zlaswp_avm_writedata(zlaswp_function_out_lm1165_zlaswp_avm_writedata),
        .out_lm1476_zlaswp_avm_address(zlaswp_function_out_lm1476_zlaswp_avm_address),
        .out_lm1476_zlaswp_avm_burstcount(zlaswp_function_out_lm1476_zlaswp_avm_burstcount),
        .out_lm1476_zlaswp_avm_byteenable(zlaswp_function_out_lm1476_zlaswp_avm_byteenable),
        .out_lm1476_zlaswp_avm_enable(zlaswp_function_out_lm1476_zlaswp_avm_enable),
        .out_lm1476_zlaswp_avm_read(zlaswp_function_out_lm1476_zlaswp_avm_read),
        .out_lm1476_zlaswp_avm_write(zlaswp_function_out_lm1476_zlaswp_avm_write),
        .out_lm1476_zlaswp_avm_writedata(zlaswp_function_out_lm1476_zlaswp_avm_writedata),
        .out_lm18611_zlaswp_avm_address(zlaswp_function_out_lm18611_zlaswp_avm_address),
        .out_lm18611_zlaswp_avm_burstcount(zlaswp_function_out_lm18611_zlaswp_avm_burstcount),
        .out_lm18611_zlaswp_avm_byteenable(zlaswp_function_out_lm18611_zlaswp_avm_byteenable),
        .out_lm18611_zlaswp_avm_enable(zlaswp_function_out_lm18611_zlaswp_avm_enable),
        .out_lm18611_zlaswp_avm_read(zlaswp_function_out_lm18611_zlaswp_avm_read),
        .out_lm18611_zlaswp_avm_write(zlaswp_function_out_lm18611_zlaswp_avm_write),
        .out_lm18611_zlaswp_avm_writedata(zlaswp_function_out_lm18611_zlaswp_avm_writedata),
        .out_lm19012_zlaswp_avm_address(zlaswp_function_out_lm19012_zlaswp_avm_address),
        .out_lm19012_zlaswp_avm_burstcount(zlaswp_function_out_lm19012_zlaswp_avm_burstcount),
        .out_lm19012_zlaswp_avm_byteenable(zlaswp_function_out_lm19012_zlaswp_avm_byteenable),
        .out_lm19012_zlaswp_avm_enable(zlaswp_function_out_lm19012_zlaswp_avm_enable),
        .out_lm19012_zlaswp_avm_read(zlaswp_function_out_lm19012_zlaswp_avm_read),
        .out_lm19012_zlaswp_avm_write(zlaswp_function_out_lm19012_zlaswp_avm_write),
        .out_lm19012_zlaswp_avm_writedata(zlaswp_function_out_lm19012_zlaswp_avm_writedata),
        .out_lm248_zlaswp_avm_address(zlaswp_function_out_lm248_zlaswp_avm_address),
        .out_lm248_zlaswp_avm_burstcount(zlaswp_function_out_lm248_zlaswp_avm_burstcount),
        .out_lm248_zlaswp_avm_byteenable(zlaswp_function_out_lm248_zlaswp_avm_byteenable),
        .out_lm248_zlaswp_avm_enable(zlaswp_function_out_lm248_zlaswp_avm_enable),
        .out_lm248_zlaswp_avm_read(zlaswp_function_out_lm248_zlaswp_avm_read),
        .out_lm248_zlaswp_avm_write(zlaswp_function_out_lm248_zlaswp_avm_write),
        .out_lm248_zlaswp_avm_writedata(zlaswp_function_out_lm248_zlaswp_avm_writedata),
        .out_lm269_zlaswp_avm_address(zlaswp_function_out_lm269_zlaswp_avm_address),
        .out_lm269_zlaswp_avm_burstcount(zlaswp_function_out_lm269_zlaswp_avm_burstcount),
        .out_lm269_zlaswp_avm_byteenable(zlaswp_function_out_lm269_zlaswp_avm_byteenable),
        .out_lm269_zlaswp_avm_enable(zlaswp_function_out_lm269_zlaswp_avm_enable),
        .out_lm269_zlaswp_avm_read(zlaswp_function_out_lm269_zlaswp_avm_read),
        .out_lm269_zlaswp_avm_write(zlaswp_function_out_lm269_zlaswp_avm_write),
        .out_lm269_zlaswp_avm_writedata(zlaswp_function_out_lm269_zlaswp_avm_writedata),
        .out_lm2810_zlaswp_avm_address(zlaswp_function_out_lm2810_zlaswp_avm_address),
        .out_lm2810_zlaswp_avm_burstcount(zlaswp_function_out_lm2810_zlaswp_avm_burstcount),
        .out_lm2810_zlaswp_avm_byteenable(zlaswp_function_out_lm2810_zlaswp_avm_byteenable),
        .out_lm2810_zlaswp_avm_enable(zlaswp_function_out_lm2810_zlaswp_avm_enable),
        .out_lm2810_zlaswp_avm_read(zlaswp_function_out_lm2810_zlaswp_avm_read),
        .out_lm2810_zlaswp_avm_write(zlaswp_function_out_lm2810_zlaswp_avm_write),
        .out_lm2810_zlaswp_avm_writedata(zlaswp_function_out_lm2810_zlaswp_avm_writedata),
        .out_lm3213_zlaswp_avm_address(zlaswp_function_out_lm3213_zlaswp_avm_address),
        .out_lm3213_zlaswp_avm_burstcount(zlaswp_function_out_lm3213_zlaswp_avm_burstcount),
        .out_lm3213_zlaswp_avm_byteenable(zlaswp_function_out_lm3213_zlaswp_avm_byteenable),
        .out_lm3213_zlaswp_avm_enable(zlaswp_function_out_lm3213_zlaswp_avm_enable),
        .out_lm3213_zlaswp_avm_read(zlaswp_function_out_lm3213_zlaswp_avm_read),
        .out_lm3213_zlaswp_avm_write(zlaswp_function_out_lm3213_zlaswp_avm_write),
        .out_lm3213_zlaswp_avm_writedata(zlaswp_function_out_lm3213_zlaswp_avm_writedata),
        .out_lm3414_zlaswp_avm_address(zlaswp_function_out_lm3414_zlaswp_avm_address),
        .out_lm3414_zlaswp_avm_burstcount(zlaswp_function_out_lm3414_zlaswp_avm_burstcount),
        .out_lm3414_zlaswp_avm_byteenable(zlaswp_function_out_lm3414_zlaswp_avm_byteenable),
        .out_lm3414_zlaswp_avm_enable(zlaswp_function_out_lm3414_zlaswp_avm_enable),
        .out_lm3414_zlaswp_avm_read(zlaswp_function_out_lm3414_zlaswp_avm_read),
        .out_lm3414_zlaswp_avm_write(zlaswp_function_out_lm3414_zlaswp_avm_write),
        .out_lm3414_zlaswp_avm_writedata(zlaswp_function_out_lm3414_zlaswp_avm_writedata),
        .out_lm3615_zlaswp_avm_address(zlaswp_function_out_lm3615_zlaswp_avm_address),
        .out_lm3615_zlaswp_avm_burstcount(zlaswp_function_out_lm3615_zlaswp_avm_burstcount),
        .out_lm3615_zlaswp_avm_byteenable(zlaswp_function_out_lm3615_zlaswp_avm_byteenable),
        .out_lm3615_zlaswp_avm_enable(zlaswp_function_out_lm3615_zlaswp_avm_enable),
        .out_lm3615_zlaswp_avm_read(zlaswp_function_out_lm3615_zlaswp_avm_read),
        .out_lm3615_zlaswp_avm_write(zlaswp_function_out_lm3615_zlaswp_avm_write),
        .out_lm3615_zlaswp_avm_writedata(zlaswp_function_out_lm3615_zlaswp_avm_writedata),
        .out_lm3816_zlaswp_avm_address(zlaswp_function_out_lm3816_zlaswp_avm_address),
        .out_lm3816_zlaswp_avm_burstcount(zlaswp_function_out_lm3816_zlaswp_avm_burstcount),
        .out_lm3816_zlaswp_avm_byteenable(zlaswp_function_out_lm3816_zlaswp_avm_byteenable),
        .out_lm3816_zlaswp_avm_enable(zlaswp_function_out_lm3816_zlaswp_avm_enable),
        .out_lm3816_zlaswp_avm_read(zlaswp_function_out_lm3816_zlaswp_avm_read),
        .out_lm3816_zlaswp_avm_write(zlaswp_function_out_lm3816_zlaswp_avm_write),
        .out_lm3816_zlaswp_avm_writedata(zlaswp_function_out_lm3816_zlaswp_avm_writedata),
        .out_lm5619_zlaswp_avm_address(zlaswp_function_out_lm5619_zlaswp_avm_address),
        .out_lm5619_zlaswp_avm_burstcount(zlaswp_function_out_lm5619_zlaswp_avm_burstcount),
        .out_lm5619_zlaswp_avm_byteenable(zlaswp_function_out_lm5619_zlaswp_avm_byteenable),
        .out_lm5619_zlaswp_avm_enable(zlaswp_function_out_lm5619_zlaswp_avm_enable),
        .out_lm5619_zlaswp_avm_read(zlaswp_function_out_lm5619_zlaswp_avm_read),
        .out_lm5619_zlaswp_avm_write(zlaswp_function_out_lm5619_zlaswp_avm_write),
        .out_lm5619_zlaswp_avm_writedata(zlaswp_function_out_lm5619_zlaswp_avm_writedata),
        .out_lm6118_zlaswp_avm_address(zlaswp_function_out_lm6118_zlaswp_avm_address),
        .out_lm6118_zlaswp_avm_burstcount(zlaswp_function_out_lm6118_zlaswp_avm_burstcount),
        .out_lm6118_zlaswp_avm_byteenable(zlaswp_function_out_lm6118_zlaswp_avm_byteenable),
        .out_lm6118_zlaswp_avm_enable(zlaswp_function_out_lm6118_zlaswp_avm_enable),
        .out_lm6118_zlaswp_avm_read(zlaswp_function_out_lm6118_zlaswp_avm_read),
        .out_lm6118_zlaswp_avm_write(zlaswp_function_out_lm6118_zlaswp_avm_write),
        .out_lm6118_zlaswp_avm_writedata(zlaswp_function_out_lm6118_zlaswp_avm_writedata),
        .out_lm7_zlaswp_avm_address(zlaswp_function_out_lm7_zlaswp_avm_address),
        .out_lm7_zlaswp_avm_burstcount(zlaswp_function_out_lm7_zlaswp_avm_burstcount),
        .out_lm7_zlaswp_avm_byteenable(zlaswp_function_out_lm7_zlaswp_avm_byteenable),
        .out_lm7_zlaswp_avm_enable(zlaswp_function_out_lm7_zlaswp_avm_enable),
        .out_lm7_zlaswp_avm_read(zlaswp_function_out_lm7_zlaswp_avm_read),
        .out_lm7_zlaswp_avm_write(zlaswp_function_out_lm7_zlaswp_avm_write),
        .out_lm7_zlaswp_avm_writedata(zlaswp_function_out_lm7_zlaswp_avm_writedata),
        .out_lm8417_zlaswp_avm_address(zlaswp_function_out_lm8417_zlaswp_avm_address),
        .out_lm8417_zlaswp_avm_burstcount(zlaswp_function_out_lm8417_zlaswp_avm_burstcount),
        .out_lm8417_zlaswp_avm_byteenable(zlaswp_function_out_lm8417_zlaswp_avm_byteenable),
        .out_lm8417_zlaswp_avm_enable(zlaswp_function_out_lm8417_zlaswp_avm_enable),
        .out_lm8417_zlaswp_avm_read(zlaswp_function_out_lm8417_zlaswp_avm_read),
        .out_lm8417_zlaswp_avm_write(zlaswp_function_out_lm8417_zlaswp_avm_write),
        .out_lm8417_zlaswp_avm_writedata(zlaswp_function_out_lm8417_zlaswp_avm_writedata),
        .out_memdep_102_zlaswp_avm_address(zlaswp_function_out_memdep_102_zlaswp_avm_address),
        .out_memdep_102_zlaswp_avm_burstcount(zlaswp_function_out_memdep_102_zlaswp_avm_burstcount),
        .out_memdep_102_zlaswp_avm_byteenable(zlaswp_function_out_memdep_102_zlaswp_avm_byteenable),
        .out_memdep_102_zlaswp_avm_enable(zlaswp_function_out_memdep_102_zlaswp_avm_enable),
        .out_memdep_102_zlaswp_avm_read(zlaswp_function_out_memdep_102_zlaswp_avm_read),
        .out_memdep_102_zlaswp_avm_write(zlaswp_function_out_memdep_102_zlaswp_avm_write),
        .out_memdep_102_zlaswp_avm_writedata(zlaswp_function_out_memdep_102_zlaswp_avm_writedata),
        .out_memdep_119_zlaswp_avm_address(zlaswp_function_out_memdep_119_zlaswp_avm_address),
        .out_memdep_119_zlaswp_avm_burstcount(zlaswp_function_out_memdep_119_zlaswp_avm_burstcount),
        .out_memdep_119_zlaswp_avm_byteenable(zlaswp_function_out_memdep_119_zlaswp_avm_byteenable),
        .out_memdep_119_zlaswp_avm_enable(zlaswp_function_out_memdep_119_zlaswp_avm_enable),
        .out_memdep_119_zlaswp_avm_read(zlaswp_function_out_memdep_119_zlaswp_avm_read),
        .out_memdep_119_zlaswp_avm_write(zlaswp_function_out_memdep_119_zlaswp_avm_write),
        .out_memdep_119_zlaswp_avm_writedata(zlaswp_function_out_memdep_119_zlaswp_avm_writedata),
        .out_memdep_31_zlaswp_avm_address(zlaswp_function_out_memdep_31_zlaswp_avm_address),
        .out_memdep_31_zlaswp_avm_burstcount(zlaswp_function_out_memdep_31_zlaswp_avm_burstcount),
        .out_memdep_31_zlaswp_avm_byteenable(zlaswp_function_out_memdep_31_zlaswp_avm_byteenable),
        .out_memdep_31_zlaswp_avm_enable(zlaswp_function_out_memdep_31_zlaswp_avm_enable),
        .out_memdep_31_zlaswp_avm_read(zlaswp_function_out_memdep_31_zlaswp_avm_read),
        .out_memdep_31_zlaswp_avm_write(zlaswp_function_out_memdep_31_zlaswp_avm_write),
        .out_memdep_31_zlaswp_avm_writedata(zlaswp_function_out_memdep_31_zlaswp_avm_writedata),
        .out_memdep_38_zlaswp_avm_address(zlaswp_function_out_memdep_38_zlaswp_avm_address),
        .out_memdep_38_zlaswp_avm_burstcount(zlaswp_function_out_memdep_38_zlaswp_avm_burstcount),
        .out_memdep_38_zlaswp_avm_byteenable(zlaswp_function_out_memdep_38_zlaswp_avm_byteenable),
        .out_memdep_38_zlaswp_avm_enable(zlaswp_function_out_memdep_38_zlaswp_avm_enable),
        .out_memdep_38_zlaswp_avm_read(zlaswp_function_out_memdep_38_zlaswp_avm_read),
        .out_memdep_38_zlaswp_avm_write(zlaswp_function_out_memdep_38_zlaswp_avm_write),
        .out_memdep_38_zlaswp_avm_writedata(zlaswp_function_out_memdep_38_zlaswp_avm_writedata),
        .out_memdep_46_zlaswp_avm_address(zlaswp_function_out_memdep_46_zlaswp_avm_address),
        .out_memdep_46_zlaswp_avm_burstcount(zlaswp_function_out_memdep_46_zlaswp_avm_burstcount),
        .out_memdep_46_zlaswp_avm_byteenable(zlaswp_function_out_memdep_46_zlaswp_avm_byteenable),
        .out_memdep_46_zlaswp_avm_enable(zlaswp_function_out_memdep_46_zlaswp_avm_enable),
        .out_memdep_46_zlaswp_avm_read(zlaswp_function_out_memdep_46_zlaswp_avm_read),
        .out_memdep_46_zlaswp_avm_write(zlaswp_function_out_memdep_46_zlaswp_avm_write),
        .out_memdep_46_zlaswp_avm_writedata(zlaswp_function_out_memdep_46_zlaswp_avm_writedata),
        .out_memdep_71_zlaswp_avm_address(zlaswp_function_out_memdep_71_zlaswp_avm_address),
        .out_memdep_71_zlaswp_avm_burstcount(zlaswp_function_out_memdep_71_zlaswp_avm_burstcount),
        .out_memdep_71_zlaswp_avm_byteenable(zlaswp_function_out_memdep_71_zlaswp_avm_byteenable),
        .out_memdep_71_zlaswp_avm_enable(zlaswp_function_out_memdep_71_zlaswp_avm_enable),
        .out_memdep_71_zlaswp_avm_read(zlaswp_function_out_memdep_71_zlaswp_avm_read),
        .out_memdep_71_zlaswp_avm_write(zlaswp_function_out_memdep_71_zlaswp_avm_write),
        .out_memdep_71_zlaswp_avm_writedata(zlaswp_function_out_memdep_71_zlaswp_avm_writedata),
        .out_memdep_87_zlaswp_avm_address(zlaswp_function_out_memdep_87_zlaswp_avm_address),
        .out_memdep_87_zlaswp_avm_burstcount(zlaswp_function_out_memdep_87_zlaswp_avm_burstcount),
        .out_memdep_87_zlaswp_avm_byteenable(zlaswp_function_out_memdep_87_zlaswp_avm_byteenable),
        .out_memdep_87_zlaswp_avm_enable(zlaswp_function_out_memdep_87_zlaswp_avm_enable),
        .out_memdep_87_zlaswp_avm_read(zlaswp_function_out_memdep_87_zlaswp_avm_read),
        .out_memdep_87_zlaswp_avm_write(zlaswp_function_out_memdep_87_zlaswp_avm_write),
        .out_memdep_87_zlaswp_avm_writedata(zlaswp_function_out_memdep_87_zlaswp_avm_writedata),
        .out_memdep_zlaswp_avm_address(zlaswp_function_out_memdep_zlaswp_avm_address),
        .out_memdep_zlaswp_avm_burstcount(zlaswp_function_out_memdep_zlaswp_avm_burstcount),
        .out_memdep_zlaswp_avm_byteenable(zlaswp_function_out_memdep_zlaswp_avm_byteenable),
        .out_memdep_zlaswp_avm_enable(zlaswp_function_out_memdep_zlaswp_avm_enable),
        .out_memdep_zlaswp_avm_read(zlaswp_function_out_memdep_zlaswp_avm_read),
        .out_memdep_zlaswp_avm_write(zlaswp_function_out_memdep_zlaswp_avm_write),
        .out_memdep_zlaswp_avm_writedata(zlaswp_function_out_memdep_zlaswp_avm_writedata),
        .out_o_active_memdep(),
        .out_o_active_memdep_102(),
        .out_o_active_memdep_119(),
        .out_o_active_memdep_31(),
        .out_o_active_memdep_38(),
        .out_o_active_memdep_46(),
        .out_o_active_memdep_71(),
        .out_o_active_memdep_87(),
        .out_stall_out(),
        .out_storemerge1_lm3_zlaswp_avm_address(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_address),
        .out_storemerge1_lm3_zlaswp_avm_burstcount(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_burstcount),
        .out_storemerge1_lm3_zlaswp_avm_byteenable(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_byteenable),
        .out_storemerge1_lm3_zlaswp_avm_enable(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_enable),
        .out_storemerge1_lm3_zlaswp_avm_read(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_read),
        .out_storemerge1_lm3_zlaswp_avm_write(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_write),
        .out_storemerge1_lm3_zlaswp_avm_writedata(zlaswp_function_out_storemerge1_lm3_zlaswp_avm_writedata),
        .out_storemerge72_lm4_zlaswp_avm_address(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_address),
        .out_storemerge72_lm4_zlaswp_avm_burstcount(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_burstcount),
        .out_storemerge72_lm4_zlaswp_avm_byteenable(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_byteenable),
        .out_storemerge72_lm4_zlaswp_avm_enable(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_enable),
        .out_storemerge72_lm4_zlaswp_avm_read(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_read),
        .out_storemerge72_lm4_zlaswp_avm_write(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_write),
        .out_storemerge72_lm4_zlaswp_avm_writedata(zlaswp_function_out_storemerge72_lm4_zlaswp_avm_writedata),
        .out_unnamed_zlaswp3_zlaswp_avm_address(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_address),
        .out_unnamed_zlaswp3_zlaswp_avm_burstcount(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_burstcount),
        .out_unnamed_zlaswp3_zlaswp_avm_byteenable(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_byteenable),
        .out_unnamed_zlaswp3_zlaswp_avm_enable(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_enable),
        .out_unnamed_zlaswp3_zlaswp_avm_read(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_read),
        .out_unnamed_zlaswp3_zlaswp_avm_write(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_write),
        .out_unnamed_zlaswp3_zlaswp_avm_writedata(zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_writedata),
        .out_unnamed_zlaswp4_zlaswp_avm_address(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_address),
        .out_unnamed_zlaswp4_zlaswp_avm_burstcount(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_burstcount),
        .out_unnamed_zlaswp4_zlaswp_avm_byteenable(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_byteenable),
        .out_unnamed_zlaswp4_zlaswp_avm_enable(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_enable),
        .out_unnamed_zlaswp4_zlaswp_avm_read(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_read),
        .out_unnamed_zlaswp4_zlaswp_avm_write(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_write),
        .out_unnamed_zlaswp4_zlaswp_avm_writedata(zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1021_zlaswp_address(GPOUT,148)
    assign avm_lm1021_zlaswp_address = zlaswp_function_out_lm1021_zlaswp_avm_address;

    // avm_lm1021_zlaswp_burstcount(GPOUT,149)
    assign avm_lm1021_zlaswp_burstcount = zlaswp_function_out_lm1021_zlaswp_avm_burstcount;

    // avm_lm1021_zlaswp_byteenable(GPOUT,150)
    assign avm_lm1021_zlaswp_byteenable = zlaswp_function_out_lm1021_zlaswp_avm_byteenable;

    // avm_lm1021_zlaswp_enable(GPOUT,151)
    assign avm_lm1021_zlaswp_enable = zlaswp_function_out_lm1021_zlaswp_avm_enable;

    // avm_lm1021_zlaswp_read(GPOUT,152)
    assign avm_lm1021_zlaswp_read = zlaswp_function_out_lm1021_zlaswp_avm_read;

    // avm_lm1021_zlaswp_write(GPOUT,153)
    assign avm_lm1021_zlaswp_write = zlaswp_function_out_lm1021_zlaswp_avm_write;

    // avm_lm1021_zlaswp_writedata(GPOUT,154)
    assign avm_lm1021_zlaswp_writedata = zlaswp_function_out_lm1021_zlaswp_avm_writedata;

    // avm_lm1052_zlaswp_address(GPOUT,155)
    assign avm_lm1052_zlaswp_address = zlaswp_function_out_lm1052_zlaswp_avm_address;

    // avm_lm1052_zlaswp_burstcount(GPOUT,156)
    assign avm_lm1052_zlaswp_burstcount = zlaswp_function_out_lm1052_zlaswp_avm_burstcount;

    // avm_lm1052_zlaswp_byteenable(GPOUT,157)
    assign avm_lm1052_zlaswp_byteenable = zlaswp_function_out_lm1052_zlaswp_avm_byteenable;

    // avm_lm1052_zlaswp_enable(GPOUT,158)
    assign avm_lm1052_zlaswp_enable = zlaswp_function_out_lm1052_zlaswp_avm_enable;

    // avm_lm1052_zlaswp_read(GPOUT,159)
    assign avm_lm1052_zlaswp_read = zlaswp_function_out_lm1052_zlaswp_avm_read;

    // avm_lm1052_zlaswp_write(GPOUT,160)
    assign avm_lm1052_zlaswp_write = zlaswp_function_out_lm1052_zlaswp_avm_write;

    // avm_lm1052_zlaswp_writedata(GPOUT,161)
    assign avm_lm1052_zlaswp_writedata = zlaswp_function_out_lm1052_zlaswp_avm_writedata;

    // avm_lm1165_zlaswp_address(GPOUT,162)
    assign avm_lm1165_zlaswp_address = zlaswp_function_out_lm1165_zlaswp_avm_address;

    // avm_lm1165_zlaswp_burstcount(GPOUT,163)
    assign avm_lm1165_zlaswp_burstcount = zlaswp_function_out_lm1165_zlaswp_avm_burstcount;

    // avm_lm1165_zlaswp_byteenable(GPOUT,164)
    assign avm_lm1165_zlaswp_byteenable = zlaswp_function_out_lm1165_zlaswp_avm_byteenable;

    // avm_lm1165_zlaswp_enable(GPOUT,165)
    assign avm_lm1165_zlaswp_enable = zlaswp_function_out_lm1165_zlaswp_avm_enable;

    // avm_lm1165_zlaswp_read(GPOUT,166)
    assign avm_lm1165_zlaswp_read = zlaswp_function_out_lm1165_zlaswp_avm_read;

    // avm_lm1165_zlaswp_write(GPOUT,167)
    assign avm_lm1165_zlaswp_write = zlaswp_function_out_lm1165_zlaswp_avm_write;

    // avm_lm1165_zlaswp_writedata(GPOUT,168)
    assign avm_lm1165_zlaswp_writedata = zlaswp_function_out_lm1165_zlaswp_avm_writedata;

    // avm_lm1476_zlaswp_address(GPOUT,169)
    assign avm_lm1476_zlaswp_address = zlaswp_function_out_lm1476_zlaswp_avm_address;

    // avm_lm1476_zlaswp_burstcount(GPOUT,170)
    assign avm_lm1476_zlaswp_burstcount = zlaswp_function_out_lm1476_zlaswp_avm_burstcount;

    // avm_lm1476_zlaswp_byteenable(GPOUT,171)
    assign avm_lm1476_zlaswp_byteenable = zlaswp_function_out_lm1476_zlaswp_avm_byteenable;

    // avm_lm1476_zlaswp_enable(GPOUT,172)
    assign avm_lm1476_zlaswp_enable = zlaswp_function_out_lm1476_zlaswp_avm_enable;

    // avm_lm1476_zlaswp_read(GPOUT,173)
    assign avm_lm1476_zlaswp_read = zlaswp_function_out_lm1476_zlaswp_avm_read;

    // avm_lm1476_zlaswp_write(GPOUT,174)
    assign avm_lm1476_zlaswp_write = zlaswp_function_out_lm1476_zlaswp_avm_write;

    // avm_lm1476_zlaswp_writedata(GPOUT,175)
    assign avm_lm1476_zlaswp_writedata = zlaswp_function_out_lm1476_zlaswp_avm_writedata;

    // avm_lm18611_zlaswp_address(GPOUT,176)
    assign avm_lm18611_zlaswp_address = zlaswp_function_out_lm18611_zlaswp_avm_address;

    // avm_lm18611_zlaswp_burstcount(GPOUT,177)
    assign avm_lm18611_zlaswp_burstcount = zlaswp_function_out_lm18611_zlaswp_avm_burstcount;

    // avm_lm18611_zlaswp_byteenable(GPOUT,178)
    assign avm_lm18611_zlaswp_byteenable = zlaswp_function_out_lm18611_zlaswp_avm_byteenable;

    // avm_lm18611_zlaswp_enable(GPOUT,179)
    assign avm_lm18611_zlaswp_enable = zlaswp_function_out_lm18611_zlaswp_avm_enable;

    // avm_lm18611_zlaswp_read(GPOUT,180)
    assign avm_lm18611_zlaswp_read = zlaswp_function_out_lm18611_zlaswp_avm_read;

    // avm_lm18611_zlaswp_write(GPOUT,181)
    assign avm_lm18611_zlaswp_write = zlaswp_function_out_lm18611_zlaswp_avm_write;

    // avm_lm18611_zlaswp_writedata(GPOUT,182)
    assign avm_lm18611_zlaswp_writedata = zlaswp_function_out_lm18611_zlaswp_avm_writedata;

    // avm_lm19012_zlaswp_address(GPOUT,183)
    assign avm_lm19012_zlaswp_address = zlaswp_function_out_lm19012_zlaswp_avm_address;

    // avm_lm19012_zlaswp_burstcount(GPOUT,184)
    assign avm_lm19012_zlaswp_burstcount = zlaswp_function_out_lm19012_zlaswp_avm_burstcount;

    // avm_lm19012_zlaswp_byteenable(GPOUT,185)
    assign avm_lm19012_zlaswp_byteenable = zlaswp_function_out_lm19012_zlaswp_avm_byteenable;

    // avm_lm19012_zlaswp_enable(GPOUT,186)
    assign avm_lm19012_zlaswp_enable = zlaswp_function_out_lm19012_zlaswp_avm_enable;

    // avm_lm19012_zlaswp_read(GPOUT,187)
    assign avm_lm19012_zlaswp_read = zlaswp_function_out_lm19012_zlaswp_avm_read;

    // avm_lm19012_zlaswp_write(GPOUT,188)
    assign avm_lm19012_zlaswp_write = zlaswp_function_out_lm19012_zlaswp_avm_write;

    // avm_lm19012_zlaswp_writedata(GPOUT,189)
    assign avm_lm19012_zlaswp_writedata = zlaswp_function_out_lm19012_zlaswp_avm_writedata;

    // avm_lm248_zlaswp_address(GPOUT,190)
    assign avm_lm248_zlaswp_address = zlaswp_function_out_lm248_zlaswp_avm_address;

    // avm_lm248_zlaswp_burstcount(GPOUT,191)
    assign avm_lm248_zlaswp_burstcount = zlaswp_function_out_lm248_zlaswp_avm_burstcount;

    // avm_lm248_zlaswp_byteenable(GPOUT,192)
    assign avm_lm248_zlaswp_byteenable = zlaswp_function_out_lm248_zlaswp_avm_byteenable;

    // avm_lm248_zlaswp_enable(GPOUT,193)
    assign avm_lm248_zlaswp_enable = zlaswp_function_out_lm248_zlaswp_avm_enable;

    // avm_lm248_zlaswp_read(GPOUT,194)
    assign avm_lm248_zlaswp_read = zlaswp_function_out_lm248_zlaswp_avm_read;

    // avm_lm248_zlaswp_write(GPOUT,195)
    assign avm_lm248_zlaswp_write = zlaswp_function_out_lm248_zlaswp_avm_write;

    // avm_lm248_zlaswp_writedata(GPOUT,196)
    assign avm_lm248_zlaswp_writedata = zlaswp_function_out_lm248_zlaswp_avm_writedata;

    // avm_lm269_zlaswp_address(GPOUT,197)
    assign avm_lm269_zlaswp_address = zlaswp_function_out_lm269_zlaswp_avm_address;

    // avm_lm269_zlaswp_burstcount(GPOUT,198)
    assign avm_lm269_zlaswp_burstcount = zlaswp_function_out_lm269_zlaswp_avm_burstcount;

    // avm_lm269_zlaswp_byteenable(GPOUT,199)
    assign avm_lm269_zlaswp_byteenable = zlaswp_function_out_lm269_zlaswp_avm_byteenable;

    // avm_lm269_zlaswp_enable(GPOUT,200)
    assign avm_lm269_zlaswp_enable = zlaswp_function_out_lm269_zlaswp_avm_enable;

    // avm_lm269_zlaswp_read(GPOUT,201)
    assign avm_lm269_zlaswp_read = zlaswp_function_out_lm269_zlaswp_avm_read;

    // avm_lm269_zlaswp_write(GPOUT,202)
    assign avm_lm269_zlaswp_write = zlaswp_function_out_lm269_zlaswp_avm_write;

    // avm_lm269_zlaswp_writedata(GPOUT,203)
    assign avm_lm269_zlaswp_writedata = zlaswp_function_out_lm269_zlaswp_avm_writedata;

    // avm_lm2810_zlaswp_address(GPOUT,204)
    assign avm_lm2810_zlaswp_address = zlaswp_function_out_lm2810_zlaswp_avm_address;

    // avm_lm2810_zlaswp_burstcount(GPOUT,205)
    assign avm_lm2810_zlaswp_burstcount = zlaswp_function_out_lm2810_zlaswp_avm_burstcount;

    // avm_lm2810_zlaswp_byteenable(GPOUT,206)
    assign avm_lm2810_zlaswp_byteenable = zlaswp_function_out_lm2810_zlaswp_avm_byteenable;

    // avm_lm2810_zlaswp_enable(GPOUT,207)
    assign avm_lm2810_zlaswp_enable = zlaswp_function_out_lm2810_zlaswp_avm_enable;

    // avm_lm2810_zlaswp_read(GPOUT,208)
    assign avm_lm2810_zlaswp_read = zlaswp_function_out_lm2810_zlaswp_avm_read;

    // avm_lm2810_zlaswp_write(GPOUT,209)
    assign avm_lm2810_zlaswp_write = zlaswp_function_out_lm2810_zlaswp_avm_write;

    // avm_lm2810_zlaswp_writedata(GPOUT,210)
    assign avm_lm2810_zlaswp_writedata = zlaswp_function_out_lm2810_zlaswp_avm_writedata;

    // avm_lm3213_zlaswp_address(GPOUT,211)
    assign avm_lm3213_zlaswp_address = zlaswp_function_out_lm3213_zlaswp_avm_address;

    // avm_lm3213_zlaswp_burstcount(GPOUT,212)
    assign avm_lm3213_zlaswp_burstcount = zlaswp_function_out_lm3213_zlaswp_avm_burstcount;

    // avm_lm3213_zlaswp_byteenable(GPOUT,213)
    assign avm_lm3213_zlaswp_byteenable = zlaswp_function_out_lm3213_zlaswp_avm_byteenable;

    // avm_lm3213_zlaswp_enable(GPOUT,214)
    assign avm_lm3213_zlaswp_enable = zlaswp_function_out_lm3213_zlaswp_avm_enable;

    // avm_lm3213_zlaswp_read(GPOUT,215)
    assign avm_lm3213_zlaswp_read = zlaswp_function_out_lm3213_zlaswp_avm_read;

    // avm_lm3213_zlaswp_write(GPOUT,216)
    assign avm_lm3213_zlaswp_write = zlaswp_function_out_lm3213_zlaswp_avm_write;

    // avm_lm3213_zlaswp_writedata(GPOUT,217)
    assign avm_lm3213_zlaswp_writedata = zlaswp_function_out_lm3213_zlaswp_avm_writedata;

    // avm_lm3414_zlaswp_address(GPOUT,218)
    assign avm_lm3414_zlaswp_address = zlaswp_function_out_lm3414_zlaswp_avm_address;

    // avm_lm3414_zlaswp_burstcount(GPOUT,219)
    assign avm_lm3414_zlaswp_burstcount = zlaswp_function_out_lm3414_zlaswp_avm_burstcount;

    // avm_lm3414_zlaswp_byteenable(GPOUT,220)
    assign avm_lm3414_zlaswp_byteenable = zlaswp_function_out_lm3414_zlaswp_avm_byteenable;

    // avm_lm3414_zlaswp_enable(GPOUT,221)
    assign avm_lm3414_zlaswp_enable = zlaswp_function_out_lm3414_zlaswp_avm_enable;

    // avm_lm3414_zlaswp_read(GPOUT,222)
    assign avm_lm3414_zlaswp_read = zlaswp_function_out_lm3414_zlaswp_avm_read;

    // avm_lm3414_zlaswp_write(GPOUT,223)
    assign avm_lm3414_zlaswp_write = zlaswp_function_out_lm3414_zlaswp_avm_write;

    // avm_lm3414_zlaswp_writedata(GPOUT,224)
    assign avm_lm3414_zlaswp_writedata = zlaswp_function_out_lm3414_zlaswp_avm_writedata;

    // avm_lm3615_zlaswp_address(GPOUT,225)
    assign avm_lm3615_zlaswp_address = zlaswp_function_out_lm3615_zlaswp_avm_address;

    // avm_lm3615_zlaswp_burstcount(GPOUT,226)
    assign avm_lm3615_zlaswp_burstcount = zlaswp_function_out_lm3615_zlaswp_avm_burstcount;

    // avm_lm3615_zlaswp_byteenable(GPOUT,227)
    assign avm_lm3615_zlaswp_byteenable = zlaswp_function_out_lm3615_zlaswp_avm_byteenable;

    // avm_lm3615_zlaswp_enable(GPOUT,228)
    assign avm_lm3615_zlaswp_enable = zlaswp_function_out_lm3615_zlaswp_avm_enable;

    // avm_lm3615_zlaswp_read(GPOUT,229)
    assign avm_lm3615_zlaswp_read = zlaswp_function_out_lm3615_zlaswp_avm_read;

    // avm_lm3615_zlaswp_write(GPOUT,230)
    assign avm_lm3615_zlaswp_write = zlaswp_function_out_lm3615_zlaswp_avm_write;

    // avm_lm3615_zlaswp_writedata(GPOUT,231)
    assign avm_lm3615_zlaswp_writedata = zlaswp_function_out_lm3615_zlaswp_avm_writedata;

    // avm_lm3816_zlaswp_address(GPOUT,232)
    assign avm_lm3816_zlaswp_address = zlaswp_function_out_lm3816_zlaswp_avm_address;

    // avm_lm3816_zlaswp_burstcount(GPOUT,233)
    assign avm_lm3816_zlaswp_burstcount = zlaswp_function_out_lm3816_zlaswp_avm_burstcount;

    // avm_lm3816_zlaswp_byteenable(GPOUT,234)
    assign avm_lm3816_zlaswp_byteenable = zlaswp_function_out_lm3816_zlaswp_avm_byteenable;

    // avm_lm3816_zlaswp_enable(GPOUT,235)
    assign avm_lm3816_zlaswp_enable = zlaswp_function_out_lm3816_zlaswp_avm_enable;

    // avm_lm3816_zlaswp_read(GPOUT,236)
    assign avm_lm3816_zlaswp_read = zlaswp_function_out_lm3816_zlaswp_avm_read;

    // avm_lm3816_zlaswp_write(GPOUT,237)
    assign avm_lm3816_zlaswp_write = zlaswp_function_out_lm3816_zlaswp_avm_write;

    // avm_lm3816_zlaswp_writedata(GPOUT,238)
    assign avm_lm3816_zlaswp_writedata = zlaswp_function_out_lm3816_zlaswp_avm_writedata;

    // avm_lm5619_zlaswp_address(GPOUT,239)
    assign avm_lm5619_zlaswp_address = zlaswp_function_out_lm5619_zlaswp_avm_address;

    // avm_lm5619_zlaswp_burstcount(GPOUT,240)
    assign avm_lm5619_zlaswp_burstcount = zlaswp_function_out_lm5619_zlaswp_avm_burstcount;

    // avm_lm5619_zlaswp_byteenable(GPOUT,241)
    assign avm_lm5619_zlaswp_byteenable = zlaswp_function_out_lm5619_zlaswp_avm_byteenable;

    // avm_lm5619_zlaswp_enable(GPOUT,242)
    assign avm_lm5619_zlaswp_enable = zlaswp_function_out_lm5619_zlaswp_avm_enable;

    // avm_lm5619_zlaswp_read(GPOUT,243)
    assign avm_lm5619_zlaswp_read = zlaswp_function_out_lm5619_zlaswp_avm_read;

    // avm_lm5619_zlaswp_write(GPOUT,244)
    assign avm_lm5619_zlaswp_write = zlaswp_function_out_lm5619_zlaswp_avm_write;

    // avm_lm5619_zlaswp_writedata(GPOUT,245)
    assign avm_lm5619_zlaswp_writedata = zlaswp_function_out_lm5619_zlaswp_avm_writedata;

    // avm_lm6118_zlaswp_address(GPOUT,246)
    assign avm_lm6118_zlaswp_address = zlaswp_function_out_lm6118_zlaswp_avm_address;

    // avm_lm6118_zlaswp_burstcount(GPOUT,247)
    assign avm_lm6118_zlaswp_burstcount = zlaswp_function_out_lm6118_zlaswp_avm_burstcount;

    // avm_lm6118_zlaswp_byteenable(GPOUT,248)
    assign avm_lm6118_zlaswp_byteenable = zlaswp_function_out_lm6118_zlaswp_avm_byteenable;

    // avm_lm6118_zlaswp_enable(GPOUT,249)
    assign avm_lm6118_zlaswp_enable = zlaswp_function_out_lm6118_zlaswp_avm_enable;

    // avm_lm6118_zlaswp_read(GPOUT,250)
    assign avm_lm6118_zlaswp_read = zlaswp_function_out_lm6118_zlaswp_avm_read;

    // avm_lm6118_zlaswp_write(GPOUT,251)
    assign avm_lm6118_zlaswp_write = zlaswp_function_out_lm6118_zlaswp_avm_write;

    // avm_lm6118_zlaswp_writedata(GPOUT,252)
    assign avm_lm6118_zlaswp_writedata = zlaswp_function_out_lm6118_zlaswp_avm_writedata;

    // avm_lm7_zlaswp_address(GPOUT,253)
    assign avm_lm7_zlaswp_address = zlaswp_function_out_lm7_zlaswp_avm_address;

    // avm_lm7_zlaswp_burstcount(GPOUT,254)
    assign avm_lm7_zlaswp_burstcount = zlaswp_function_out_lm7_zlaswp_avm_burstcount;

    // avm_lm7_zlaswp_byteenable(GPOUT,255)
    assign avm_lm7_zlaswp_byteenable = zlaswp_function_out_lm7_zlaswp_avm_byteenable;

    // avm_lm7_zlaswp_enable(GPOUT,256)
    assign avm_lm7_zlaswp_enable = zlaswp_function_out_lm7_zlaswp_avm_enable;

    // avm_lm7_zlaswp_read(GPOUT,257)
    assign avm_lm7_zlaswp_read = zlaswp_function_out_lm7_zlaswp_avm_read;

    // avm_lm7_zlaswp_write(GPOUT,258)
    assign avm_lm7_zlaswp_write = zlaswp_function_out_lm7_zlaswp_avm_write;

    // avm_lm7_zlaswp_writedata(GPOUT,259)
    assign avm_lm7_zlaswp_writedata = zlaswp_function_out_lm7_zlaswp_avm_writedata;

    // avm_lm8417_zlaswp_address(GPOUT,260)
    assign avm_lm8417_zlaswp_address = zlaswp_function_out_lm8417_zlaswp_avm_address;

    // avm_lm8417_zlaswp_burstcount(GPOUT,261)
    assign avm_lm8417_zlaswp_burstcount = zlaswp_function_out_lm8417_zlaswp_avm_burstcount;

    // avm_lm8417_zlaswp_byteenable(GPOUT,262)
    assign avm_lm8417_zlaswp_byteenable = zlaswp_function_out_lm8417_zlaswp_avm_byteenable;

    // avm_lm8417_zlaswp_enable(GPOUT,263)
    assign avm_lm8417_zlaswp_enable = zlaswp_function_out_lm8417_zlaswp_avm_enable;

    // avm_lm8417_zlaswp_read(GPOUT,264)
    assign avm_lm8417_zlaswp_read = zlaswp_function_out_lm8417_zlaswp_avm_read;

    // avm_lm8417_zlaswp_write(GPOUT,265)
    assign avm_lm8417_zlaswp_write = zlaswp_function_out_lm8417_zlaswp_avm_write;

    // avm_lm8417_zlaswp_writedata(GPOUT,266)
    assign avm_lm8417_zlaswp_writedata = zlaswp_function_out_lm8417_zlaswp_avm_writedata;

    // avm_memdep_102_zlaswp_address(GPOUT,267)
    assign avm_memdep_102_zlaswp_address = zlaswp_function_out_memdep_102_zlaswp_avm_address;

    // avm_memdep_102_zlaswp_burstcount(GPOUT,268)
    assign avm_memdep_102_zlaswp_burstcount = zlaswp_function_out_memdep_102_zlaswp_avm_burstcount;

    // avm_memdep_102_zlaswp_byteenable(GPOUT,269)
    assign avm_memdep_102_zlaswp_byteenable = zlaswp_function_out_memdep_102_zlaswp_avm_byteenable;

    // avm_memdep_102_zlaswp_enable(GPOUT,270)
    assign avm_memdep_102_zlaswp_enable = zlaswp_function_out_memdep_102_zlaswp_avm_enable;

    // avm_memdep_102_zlaswp_read(GPOUT,271)
    assign avm_memdep_102_zlaswp_read = zlaswp_function_out_memdep_102_zlaswp_avm_read;

    // avm_memdep_102_zlaswp_write(GPOUT,272)
    assign avm_memdep_102_zlaswp_write = zlaswp_function_out_memdep_102_zlaswp_avm_write;

    // avm_memdep_102_zlaswp_writedata(GPOUT,273)
    assign avm_memdep_102_zlaswp_writedata = zlaswp_function_out_memdep_102_zlaswp_avm_writedata;

    // avm_memdep_119_zlaswp_address(GPOUT,274)
    assign avm_memdep_119_zlaswp_address = zlaswp_function_out_memdep_119_zlaswp_avm_address;

    // avm_memdep_119_zlaswp_burstcount(GPOUT,275)
    assign avm_memdep_119_zlaswp_burstcount = zlaswp_function_out_memdep_119_zlaswp_avm_burstcount;

    // avm_memdep_119_zlaswp_byteenable(GPOUT,276)
    assign avm_memdep_119_zlaswp_byteenable = zlaswp_function_out_memdep_119_zlaswp_avm_byteenable;

    // avm_memdep_119_zlaswp_enable(GPOUT,277)
    assign avm_memdep_119_zlaswp_enable = zlaswp_function_out_memdep_119_zlaswp_avm_enable;

    // avm_memdep_119_zlaswp_read(GPOUT,278)
    assign avm_memdep_119_zlaswp_read = zlaswp_function_out_memdep_119_zlaswp_avm_read;

    // avm_memdep_119_zlaswp_write(GPOUT,279)
    assign avm_memdep_119_zlaswp_write = zlaswp_function_out_memdep_119_zlaswp_avm_write;

    // avm_memdep_119_zlaswp_writedata(GPOUT,280)
    assign avm_memdep_119_zlaswp_writedata = zlaswp_function_out_memdep_119_zlaswp_avm_writedata;

    // avm_memdep_31_zlaswp_address(GPOUT,281)
    assign avm_memdep_31_zlaswp_address = zlaswp_function_out_memdep_31_zlaswp_avm_address;

    // avm_memdep_31_zlaswp_burstcount(GPOUT,282)
    assign avm_memdep_31_zlaswp_burstcount = zlaswp_function_out_memdep_31_zlaswp_avm_burstcount;

    // avm_memdep_31_zlaswp_byteenable(GPOUT,283)
    assign avm_memdep_31_zlaswp_byteenable = zlaswp_function_out_memdep_31_zlaswp_avm_byteenable;

    // avm_memdep_31_zlaswp_enable(GPOUT,284)
    assign avm_memdep_31_zlaswp_enable = zlaswp_function_out_memdep_31_zlaswp_avm_enable;

    // avm_memdep_31_zlaswp_read(GPOUT,285)
    assign avm_memdep_31_zlaswp_read = zlaswp_function_out_memdep_31_zlaswp_avm_read;

    // avm_memdep_31_zlaswp_write(GPOUT,286)
    assign avm_memdep_31_zlaswp_write = zlaswp_function_out_memdep_31_zlaswp_avm_write;

    // avm_memdep_31_zlaswp_writedata(GPOUT,287)
    assign avm_memdep_31_zlaswp_writedata = zlaswp_function_out_memdep_31_zlaswp_avm_writedata;

    // avm_memdep_38_zlaswp_address(GPOUT,288)
    assign avm_memdep_38_zlaswp_address = zlaswp_function_out_memdep_38_zlaswp_avm_address;

    // avm_memdep_38_zlaswp_burstcount(GPOUT,289)
    assign avm_memdep_38_zlaswp_burstcount = zlaswp_function_out_memdep_38_zlaswp_avm_burstcount;

    // avm_memdep_38_zlaswp_byteenable(GPOUT,290)
    assign avm_memdep_38_zlaswp_byteenable = zlaswp_function_out_memdep_38_zlaswp_avm_byteenable;

    // avm_memdep_38_zlaswp_enable(GPOUT,291)
    assign avm_memdep_38_zlaswp_enable = zlaswp_function_out_memdep_38_zlaswp_avm_enable;

    // avm_memdep_38_zlaswp_read(GPOUT,292)
    assign avm_memdep_38_zlaswp_read = zlaswp_function_out_memdep_38_zlaswp_avm_read;

    // avm_memdep_38_zlaswp_write(GPOUT,293)
    assign avm_memdep_38_zlaswp_write = zlaswp_function_out_memdep_38_zlaswp_avm_write;

    // avm_memdep_38_zlaswp_writedata(GPOUT,294)
    assign avm_memdep_38_zlaswp_writedata = zlaswp_function_out_memdep_38_zlaswp_avm_writedata;

    // avm_memdep_46_zlaswp_address(GPOUT,295)
    assign avm_memdep_46_zlaswp_address = zlaswp_function_out_memdep_46_zlaswp_avm_address;

    // avm_memdep_46_zlaswp_burstcount(GPOUT,296)
    assign avm_memdep_46_zlaswp_burstcount = zlaswp_function_out_memdep_46_zlaswp_avm_burstcount;

    // avm_memdep_46_zlaswp_byteenable(GPOUT,297)
    assign avm_memdep_46_zlaswp_byteenable = zlaswp_function_out_memdep_46_zlaswp_avm_byteenable;

    // avm_memdep_46_zlaswp_enable(GPOUT,298)
    assign avm_memdep_46_zlaswp_enable = zlaswp_function_out_memdep_46_zlaswp_avm_enable;

    // avm_memdep_46_zlaswp_read(GPOUT,299)
    assign avm_memdep_46_zlaswp_read = zlaswp_function_out_memdep_46_zlaswp_avm_read;

    // avm_memdep_46_zlaswp_write(GPOUT,300)
    assign avm_memdep_46_zlaswp_write = zlaswp_function_out_memdep_46_zlaswp_avm_write;

    // avm_memdep_46_zlaswp_writedata(GPOUT,301)
    assign avm_memdep_46_zlaswp_writedata = zlaswp_function_out_memdep_46_zlaswp_avm_writedata;

    // avm_memdep_71_zlaswp_address(GPOUT,302)
    assign avm_memdep_71_zlaswp_address = zlaswp_function_out_memdep_71_zlaswp_avm_address;

    // avm_memdep_71_zlaswp_burstcount(GPOUT,303)
    assign avm_memdep_71_zlaswp_burstcount = zlaswp_function_out_memdep_71_zlaswp_avm_burstcount;

    // avm_memdep_71_zlaswp_byteenable(GPOUT,304)
    assign avm_memdep_71_zlaswp_byteenable = zlaswp_function_out_memdep_71_zlaswp_avm_byteenable;

    // avm_memdep_71_zlaswp_enable(GPOUT,305)
    assign avm_memdep_71_zlaswp_enable = zlaswp_function_out_memdep_71_zlaswp_avm_enable;

    // avm_memdep_71_zlaswp_read(GPOUT,306)
    assign avm_memdep_71_zlaswp_read = zlaswp_function_out_memdep_71_zlaswp_avm_read;

    // avm_memdep_71_zlaswp_write(GPOUT,307)
    assign avm_memdep_71_zlaswp_write = zlaswp_function_out_memdep_71_zlaswp_avm_write;

    // avm_memdep_71_zlaswp_writedata(GPOUT,308)
    assign avm_memdep_71_zlaswp_writedata = zlaswp_function_out_memdep_71_zlaswp_avm_writedata;

    // avm_memdep_87_zlaswp_address(GPOUT,309)
    assign avm_memdep_87_zlaswp_address = zlaswp_function_out_memdep_87_zlaswp_avm_address;

    // avm_memdep_87_zlaswp_burstcount(GPOUT,310)
    assign avm_memdep_87_zlaswp_burstcount = zlaswp_function_out_memdep_87_zlaswp_avm_burstcount;

    // avm_memdep_87_zlaswp_byteenable(GPOUT,311)
    assign avm_memdep_87_zlaswp_byteenable = zlaswp_function_out_memdep_87_zlaswp_avm_byteenable;

    // avm_memdep_87_zlaswp_enable(GPOUT,312)
    assign avm_memdep_87_zlaswp_enable = zlaswp_function_out_memdep_87_zlaswp_avm_enable;

    // avm_memdep_87_zlaswp_read(GPOUT,313)
    assign avm_memdep_87_zlaswp_read = zlaswp_function_out_memdep_87_zlaswp_avm_read;

    // avm_memdep_87_zlaswp_write(GPOUT,314)
    assign avm_memdep_87_zlaswp_write = zlaswp_function_out_memdep_87_zlaswp_avm_write;

    // avm_memdep_87_zlaswp_writedata(GPOUT,315)
    assign avm_memdep_87_zlaswp_writedata = zlaswp_function_out_memdep_87_zlaswp_avm_writedata;

    // avm_memdep_zlaswp_address(GPOUT,316)
    assign avm_memdep_zlaswp_address = zlaswp_function_out_memdep_zlaswp_avm_address;

    // avm_memdep_zlaswp_burstcount(GPOUT,317)
    assign avm_memdep_zlaswp_burstcount = zlaswp_function_out_memdep_zlaswp_avm_burstcount;

    // avm_memdep_zlaswp_byteenable(GPOUT,318)
    assign avm_memdep_zlaswp_byteenable = zlaswp_function_out_memdep_zlaswp_avm_byteenable;

    // avm_memdep_zlaswp_enable(GPOUT,319)
    assign avm_memdep_zlaswp_enable = zlaswp_function_out_memdep_zlaswp_avm_enable;

    // avm_memdep_zlaswp_read(GPOUT,320)
    assign avm_memdep_zlaswp_read = zlaswp_function_out_memdep_zlaswp_avm_read;

    // avm_memdep_zlaswp_write(GPOUT,321)
    assign avm_memdep_zlaswp_write = zlaswp_function_out_memdep_zlaswp_avm_write;

    // avm_memdep_zlaswp_writedata(GPOUT,322)
    assign avm_memdep_zlaswp_writedata = zlaswp_function_out_memdep_zlaswp_avm_writedata;

    // avm_storemerge1_lm3_zlaswp_address(GPOUT,323)
    assign avm_storemerge1_lm3_zlaswp_address = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_address;

    // avm_storemerge1_lm3_zlaswp_burstcount(GPOUT,324)
    assign avm_storemerge1_lm3_zlaswp_burstcount = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_burstcount;

    // avm_storemerge1_lm3_zlaswp_byteenable(GPOUT,325)
    assign avm_storemerge1_lm3_zlaswp_byteenable = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_byteenable;

    // avm_storemerge1_lm3_zlaswp_enable(GPOUT,326)
    assign avm_storemerge1_lm3_zlaswp_enable = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_enable;

    // avm_storemerge1_lm3_zlaswp_read(GPOUT,327)
    assign avm_storemerge1_lm3_zlaswp_read = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_read;

    // avm_storemerge1_lm3_zlaswp_write(GPOUT,328)
    assign avm_storemerge1_lm3_zlaswp_write = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_write;

    // avm_storemerge1_lm3_zlaswp_writedata(GPOUT,329)
    assign avm_storemerge1_lm3_zlaswp_writedata = zlaswp_function_out_storemerge1_lm3_zlaswp_avm_writedata;

    // avm_storemerge72_lm4_zlaswp_address(GPOUT,330)
    assign avm_storemerge72_lm4_zlaswp_address = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_address;

    // avm_storemerge72_lm4_zlaswp_burstcount(GPOUT,331)
    assign avm_storemerge72_lm4_zlaswp_burstcount = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_burstcount;

    // avm_storemerge72_lm4_zlaswp_byteenable(GPOUT,332)
    assign avm_storemerge72_lm4_zlaswp_byteenable = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_byteenable;

    // avm_storemerge72_lm4_zlaswp_enable(GPOUT,333)
    assign avm_storemerge72_lm4_zlaswp_enable = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_enable;

    // avm_storemerge72_lm4_zlaswp_read(GPOUT,334)
    assign avm_storemerge72_lm4_zlaswp_read = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_read;

    // avm_storemerge72_lm4_zlaswp_write(GPOUT,335)
    assign avm_storemerge72_lm4_zlaswp_write = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_write;

    // avm_storemerge72_lm4_zlaswp_writedata(GPOUT,336)
    assign avm_storemerge72_lm4_zlaswp_writedata = zlaswp_function_out_storemerge72_lm4_zlaswp_avm_writedata;

    // avm_unnamed_zlaswp3_zlaswp_address(GPOUT,337)
    assign avm_unnamed_zlaswp3_zlaswp_address = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_address;

    // avm_unnamed_zlaswp3_zlaswp_burstcount(GPOUT,338)
    assign avm_unnamed_zlaswp3_zlaswp_burstcount = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_burstcount;

    // avm_unnamed_zlaswp3_zlaswp_byteenable(GPOUT,339)
    assign avm_unnamed_zlaswp3_zlaswp_byteenable = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_byteenable;

    // avm_unnamed_zlaswp3_zlaswp_enable(GPOUT,340)
    assign avm_unnamed_zlaswp3_zlaswp_enable = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_enable;

    // avm_unnamed_zlaswp3_zlaswp_read(GPOUT,341)
    assign avm_unnamed_zlaswp3_zlaswp_read = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_read;

    // avm_unnamed_zlaswp3_zlaswp_write(GPOUT,342)
    assign avm_unnamed_zlaswp3_zlaswp_write = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_write;

    // avm_unnamed_zlaswp3_zlaswp_writedata(GPOUT,343)
    assign avm_unnamed_zlaswp3_zlaswp_writedata = zlaswp_function_out_unnamed_zlaswp3_zlaswp_avm_writedata;

    // avm_unnamed_zlaswp4_zlaswp_address(GPOUT,344)
    assign avm_unnamed_zlaswp4_zlaswp_address = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_address;

    // avm_unnamed_zlaswp4_zlaswp_burstcount(GPOUT,345)
    assign avm_unnamed_zlaswp4_zlaswp_burstcount = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_burstcount;

    // avm_unnamed_zlaswp4_zlaswp_byteenable(GPOUT,346)
    assign avm_unnamed_zlaswp4_zlaswp_byteenable = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_byteenable;

    // avm_unnamed_zlaswp4_zlaswp_enable(GPOUT,347)
    assign avm_unnamed_zlaswp4_zlaswp_enable = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_enable;

    // avm_unnamed_zlaswp4_zlaswp_read(GPOUT,348)
    assign avm_unnamed_zlaswp4_zlaswp_read = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_read;

    // avm_unnamed_zlaswp4_zlaswp_write(GPOUT,349)
    assign avm_unnamed_zlaswp4_zlaswp_write = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_write;

    // avm_unnamed_zlaswp4_zlaswp_writedata(GPOUT,350)
    assign avm_unnamed_zlaswp4_zlaswp_writedata = zlaswp_function_out_unnamed_zlaswp4_zlaswp_avm_writedata;

    // avst_iord_bl_call_zlaswp_ready(GPOUT,351)
    assign avst_iord_bl_call_zlaswp_ready = zlaswp_function_out_iord_bl_call_zlaswp_o_fifoready;

    // avst_iowr_bl_return_zlaswp_data(GPOUT,352)
    assign avst_iowr_bl_return_zlaswp_data = zlaswp_function_out_iowr_bl_return_zlaswp_o_fifodata;

    // avst_iowr_bl_return_zlaswp_valid(GPOUT,353)
    assign avst_iowr_bl_return_zlaswp_valid = zlaswp_function_out_iowr_bl_return_zlaswp_o_fifovalid;

    // not_ready(LOGICAL,146)
    assign not_ready_q = ~ (zlaswp_function_out_iord_bl_call_zlaswp_o_fifoready);

    // busy_and(LOGICAL,3)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,358)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,357)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,4)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,354)
    assign busy = busy_or_q;

    // done(GPOUT,355)
    assign done = zlaswp_function_out_iowr_bl_return_zlaswp_o_fifovalid;

    // returndata(GPOUT,356)
    assign returndata = zlaswp_function_out_iowr_bl_return_zlaswp_o_fifodata;

endmodule
