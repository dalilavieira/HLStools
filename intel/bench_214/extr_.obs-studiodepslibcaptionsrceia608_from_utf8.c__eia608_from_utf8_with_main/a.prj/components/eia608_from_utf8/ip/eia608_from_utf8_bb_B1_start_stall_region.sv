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

// SystemVerilog created from eia608_from_utf8_bb_B1_start_stall_region
// SystemVerilog created on Sun May 24 22:38:19 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module eia608_from_utf8_bb_B1_start_stall_region (
    input wire [63:0] in_iord_bl_call_eia608_from_utf8_i_fifodata,
    input wire [0:0] in_iord_bl_call_eia608_from_utf8_i_fifovalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_lm2_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_writeack,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm2_eia608_from_utf8_avm_readdatavalid,
    output wire [0:0] out_iord_bl_call_eia608_from_utf8_o_fifoready,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_lm12964_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_writeack,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm12964_eia608_from_utf8_avm_readdatavalid,
    output wire [63:0] out_lm2_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm2_eia608_from_utf8_avm_writedata,
    output wire [7:0] out_lm2_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm2_eia608_from_utf8_avm_burstcount,
    input wire [63:0] in_lm12843_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_writeack,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_lm12843_eia608_from_utf8_avm_readdatavalid,
    output wire [63:0] out_lm12964_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm12964_eia608_from_utf8_avm_writedata,
    output wire [7:0] out_lm12964_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm12964_eia608_from_utf8_avm_burstcount,
    input wire [63:0] in_ml5_eia608_from_utf8_avm_readdata,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_writeack,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_waitrequest,
    input wire [0:0] in_ml5_eia608_from_utf8_avm_readdatavalid,
    output wire [63:0] out_lm12843_eia608_from_utf8_avm_address,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_enable,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_read,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_write,
    output wire [63:0] out_lm12843_eia608_from_utf8_avm_writedata,
    output wire [7:0] out_lm12843_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_lm12843_eia608_from_utf8_avm_burstcount,
    input wire [0:0] in_iowr_bl_return_eia608_from_utf8_i_fifoready,
    output wire [63:0] out_ml5_eia608_from_utf8_avm_address,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_enable,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_read,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_write,
    output wire [63:0] out_ml5_eia608_from_utf8_avm_writedata,
    output wire [7:0] out_ml5_eia608_from_utf8_avm_byteenable,
    output wire [0:0] out_ml5_eia608_from_utf8_avm_burstcount,
    output wire [31:0] out_iowr_bl_return_eia608_from_utf8_o_fifodata,
    output wire [0:0] out_iowr_bl_return_eia608_from_utf8_o_fifovalid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_i64_1128_q;
    wire [63:0] c_i64_2127_q;
    wire [7:0] c_i8_123122_q;
    wire [7:0] c_i8_125117_q;
    wire [7:0] c_i8_127123_q;
    wire [7:0] c_i8_32119_q;
    wire [7:0] c_i8_39115_q;
    wire [7:0] c_i8_42126_q;
    wire [7:0] c_i8_43113_q;
    wire [7:0] c_i8_60118_q;
    wire [7:0] c_i8_62124_q;
    wire [7:0] c_i8_94116_q;
    wire [7:0] c_i8_96121_q;
    wire [7:0] c_i8_97112_q;
    wire [0:0] eia608_from_utf8_B1_start_merge_reg_out_stall_out;
    wire [0:0] eia608_from_utf8_B1_start_merge_reg_out_valid_out;
    wire [0:0] i_acl_1276_eia608_from_utf845_q;
    wire [0:0] i_acl_1277_eia608_from_utf853_s;
    reg [0:0] i_acl_1277_eia608_from_utf853_q;
    wire [0:0] i_acl_1278_eia608_from_utf839_q;
    wire [0:0] i_acl_1279_eia608_from_utf858_s;
    reg [0:0] i_acl_1279_eia608_from_utf858_q;
    wire [0:0] i_acl_1282_eia608_from_utf878_s;
    reg [0:0] i_acl_1282_eia608_from_utf878_q;
    wire [0:0] i_acl_1283_eia608_from_utf886_q;
    wire [0:0] i_acl_1286_eia608_from_utf842_q;
    wire [0:0] i_acl_1289_eia608_from_utf850_q;
    wire [0:0] i_acl_1300_eia608_from_utf879_q;
    wire [0:0] i_acl_1304_eia608_from_utf887_q;
    wire [0:0] i_acl_1309_eia608_from_utf880_q;
    wire [0:0] i_acl_1313_eia608_from_utf888_q;
    wire [0:0] i_acl_1318_eia608_from_utf882_q;
    wire [0:0] i_acl_1322_eia608_from_utf889_q;
    wire [0:0] i_acl_1328_eia608_from_utf883_q;
    wire [0:0] i_acl_1332_eia608_from_utf890_q;
    wire [0:0] i_acl_1338_eia608_from_utf884_q;
    wire [0:0] i_acl_1355_v_v_eia608_from_utf855_s;
    reg [63:0] i_acl_1355_v_v_eia608_from_utf855_q;
    wire [61:0] i_acl_1355_v_v_eia608_from_utf855_vt_const_63_q;
    wire [63:0] i_acl_1355_v_v_eia608_from_utf855_vt_join_q;
    wire [1:0] i_acl_1355_v_v_eia608_from_utf855_vt_select_1_b;
    wire [0:0] i_acl_248_eia608_from_utf836_q;
    wire [0:0] i_acl_250_eia608_from_utf848_q;
    wire [0:0] i_acl_253_eia608_from_utf835_qi;
    reg [0:0] i_acl_253_eia608_from_utf835_q;
    wire [0:0] i_acl_254_eia608_from_utf847_q;
    wire [0:0] i_acl_259_eia608_from_utf840_q;
    wire [0:0] i_acl_263_eia608_from_utf846_qi;
    reg [0:0] i_acl_263_eia608_from_utf846_q;
    wire [0:0] i_acl_265_eia608_from_utf854_q;
    wire [0:0] i_acl_270_eia608_from_utf838_q;
    wire [0:0] i_acl_323_v_eia608_from_utf881_s;
    reg [0:0] i_acl_323_v_eia608_from_utf881_q;
    wire [0:0] i_acl_324_v_eia608_from_utf885_s;
    reg [0:0] i_acl_324_v_eia608_from_utf885_q;
    wire [0:0] i_acl_325_v_eia608_from_utf892_s;
    reg [0:0] i_acl_325_v_eia608_from_utf892_q;
    wire [0:0] i_acl_326_eia608_from_utf8100_q;
    wire [0:0] i_acl_326_v_eia608_from_utf897_s;
    reg [0:0] i_acl_326_v_eia608_from_utf897_q;
    wire [0:0] i_acl_327_eia608_from_utf8102_q;
    wire [0:0] i_acl_333_eia608_from_utf852_q;
    wire [0:0] i_acl_339_eia608_from_utf843_q;
    wire [0:0] i_acl_348_eia608_from_utf841_q;
    wire [0:0] i_acl_351_eia608_from_utf849_q;
    wire [9:0] i_cmp14_eia608_from_utf817_a;
    wire [9:0] i_cmp14_eia608_from_utf817_b;
    logic [9:0] i_cmp14_eia608_from_utf817_o;
    wire [0:0] i_cmp14_eia608_from_utf817_c;
    wire [0:0] i_cmp14_not_eia608_from_utf837_q;
    wire [0:0] i_cmp18_eia608_from_utf818_q;
    wire [9:0] i_cmp1_eia608_from_utf89_a;
    wire [9:0] i_cmp1_eia608_from_utf89_b;
    logic [9:0] i_cmp1_eia608_from_utf89_o;
    wire [0:0] i_cmp1_eia608_from_utf89_c;
    wire [9:0] i_cmp22_eia608_from_utf832_a;
    wire [9:0] i_cmp22_eia608_from_utf832_b;
    logic [9:0] i_cmp22_eia608_from_utf832_o;
    wire [0:0] i_cmp22_eia608_from_utf832_c;
    wire [9:0] i_cmp27_eia608_from_utf814_a;
    wire [9:0] i_cmp27_eia608_from_utf814_b;
    logic [9:0] i_cmp27_eia608_from_utf814_o;
    wire [0:0] i_cmp27_eia608_from_utf814_c;
    wire [0:0] i_cmp30_eia608_from_utf820_q;
    wire [0:0] i_cmp35_eia608_from_utf822_q;
    wire [9:0] i_cmp39_eia608_from_utf824_a;
    wire [9:0] i_cmp39_eia608_from_utf824_b;
    logic [9:0] i_cmp39_eia608_from_utf824_o;
    wire [0:0] i_cmp39_eia608_from_utf824_c;
    wire [9:0] i_cmp44_eia608_from_utf811_a;
    wire [9:0] i_cmp44_eia608_from_utf811_b;
    logic [9:0] i_cmp44_eia608_from_utf811_o;
    wire [0:0] i_cmp44_eia608_from_utf811_c;
    wire [9:0] i_cmp47_eia608_from_utf815_a;
    wire [9:0] i_cmp47_eia608_from_utf815_b;
    logic [9:0] i_cmp47_eia608_from_utf815_o;
    wire [0:0] i_cmp47_eia608_from_utf815_c;
    wire [9:0] i_cmp4_eia608_from_utf810_a;
    wire [9:0] i_cmp4_eia608_from_utf810_b;
    logic [9:0] i_cmp4_eia608_from_utf810_o;
    wire [0:0] i_cmp4_eia608_from_utf810_c;
    wire [9:0] i_cmp50_eia608_from_utf825_a;
    wire [9:0] i_cmp50_eia608_from_utf825_b;
    logic [9:0] i_cmp50_eia608_from_utf825_o;
    wire [0:0] i_cmp50_eia608_from_utf825_c;
    wire [0:0] i_cmp54_eia608_from_utf833_q;
    wire [0:0] i_cmp59_eia608_from_utf826_q;
    wire [9:0] i_cmp63_eia608_from_utf828_a;
    wire [9:0] i_cmp63_eia608_from_utf828_b;
    logic [9:0] i_cmp63_eia608_from_utf828_o;
    wire [0:0] i_cmp63_eia608_from_utf828_c;
    wire [9:0] i_cmp68_eia608_from_utf816_a;
    wire [9:0] i_cmp68_eia608_from_utf816_b;
    logic [9:0] i_cmp68_eia608_from_utf816_o;
    wire [0:0] i_cmp68_eia608_from_utf816_c;
    wire [9:0] i_cmp71_eia608_from_utf829_a;
    wire [9:0] i_cmp71_eia608_from_utf829_b;
    logic [9:0] i_cmp71_eia608_from_utf829_o;
    wire [0:0] i_cmp71_eia608_from_utf829_c;
    wire [9:0] i_cmp7_eia608_from_utf813_a;
    wire [9:0] i_cmp7_eia608_from_utf813_b;
    logic [9:0] i_cmp7_eia608_from_utf813_o;
    wire [0:0] i_cmp7_eia608_from_utf813_c;
    wire [0:0] i_cmp80_eia608_from_utf830_q;
    wire [0:0] i_cmp80_not_eia608_from_utf844_q;
    wire [0:0] i_cmp_eia608_from_utf84_q;
    wire [0:0] i_cmp_not_eia608_from_utf87_q;
    wire [31:0] i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_iowr_bl_return_eia608_from_utf8_o_fifodata;
    wire [0:0] i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;
    wire [0:0] i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_o_stall;
    wire [0:0] i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_address;
    wire [0:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_read;
    wire [0:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_write;
    wire [63:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_valid;
    wire [0:0] i_not_eia608_from_utf891_q;
    wire [9:0] i_pivot168_eia608_from_utf862_a;
    wire [9:0] i_pivot168_eia608_from_utf862_b;
    logic [9:0] i_pivot168_eia608_from_utf862_o;
    wire [0:0] i_pivot168_eia608_from_utf862_c;
    wire [9:0] i_pivot176_eia608_from_utf872_a;
    wire [9:0] i_pivot176_eia608_from_utf872_b;
    logic [9:0] i_pivot176_eia608_from_utf872_o;
    wire [0:0] i_pivot176_eia608_from_utf872_c;
    wire [9:0] i_pivot178_eia608_from_utf864_a;
    wire [9:0] i_pivot178_eia608_from_utf864_b;
    logic [9:0] i_pivot178_eia608_from_utf864_o;
    wire [0:0] i_pivot178_eia608_from_utf864_c;
    wire [9:0] i_pivot180_eia608_from_utf860_a;
    wire [9:0] i_pivot180_eia608_from_utf860_b;
    logic [9:0] i_pivot180_eia608_from_utf860_o;
    wire [0:0] i_pivot180_eia608_from_utf860_c;
    wire [0:0] i_reduction_eia608_from_utf8_0_eia608_from_utf894_q;
    wire [0:0] i_reduction_eia608_from_utf8_1_eia608_from_utf895_q;
    wire [0:0] i_reduction_eia608_from_utf8_2_eia608_from_utf896_q;
    wire [0:0] i_reduction_eia608_from_utf8_3_eia608_from_utf899_q;
    wire [0:0] i_reduction_eia608_from_utf8_4_eia608_from_utf8101_q;
    wire [0:0] i_reduction_eia608_from_utf8_9_eia608_from_utf857_q;
    wire [0:0] i_switchleaf164_eia608_from_utf866_q;
    wire [0:0] i_switchleaf166_eia608_from_utf868_q;
    wire [0:0] i_switchleaf170_eia608_from_utf870_q;
    wire [0:0] i_switchleaf172_eia608_from_utf874_q;
    wire [0:0] i_switchleaf174_eia608_from_utf876_q;
    wire [0:0] i_unnamed_eia608_from_utf8103_q;
    wire [0:0] i_unnamed_eia608_from_utf851_q;
    wire [0:0] i_unnamed_eia608_from_utf893_q;
    wire [7:0] c_i8_103133_recast_x_q;
    wire [7:0] c_i8_106131_recast_x_q;
    wire [7:0] c_i8_108129_recast_x_q;
    wire [7:0] c_i8_1114_recast_x_q;
    wire [7:0] c_i8_124130_recast_x_q;
    wire [7:0] c_i8_128132_recast_x_q;
    wire [7:0] c_i8_30125_recast_x_q;
    wire [7:0] c_i8_92120_recast_x_q;
    wire [63:0] cpn_i32_recast_x_q;
    wire [64:0] i_acl_1355_v_eia608_from_utf80_add_x_a;
    wire [64:0] i_acl_1355_v_eia608_from_utf80_add_x_b;
    logic [64:0] i_acl_1355_v_eia608_from_utf80_add_x_o;
    wire [64:0] i_acl_1355_v_eia608_from_utf80_add_x_q;
    wire [63:0] i_acl_1355_v_eia608_from_utf80_trunc_sel_x_b;
    wire [64:0] i_incdec_ptr168_eia608_from_utf80_add_x_a;
    wire [64:0] i_incdec_ptr168_eia608_from_utf80_add_x_b;
    logic [64:0] i_incdec_ptr168_eia608_from_utf80_add_x_o;
    wire [64:0] i_incdec_ptr168_eia608_from_utf80_add_x_q;
    wire [63:0] i_incdec_ptr168_eia608_from_utf80_trunc_sel_x_b;
    wire [0:0] i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_iord_bl_call_eia608_from_utf8_o_fifoready;
    wire [0:0] i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_stall;
    wire [0:0] i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_valid;
    wire [63:0] i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_c1_exit_1_tpl;
    wire [8:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] sel_for_coalesced_delay_0_e;
    wire [0:0] sel_for_coalesced_delay_0_f;
    wire [0:0] sel_for_coalesced_delay_0_g;
    wire [0:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    wire [0:0] redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_in;
    wire redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_in;
    wire redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_data_in;
    wire [0:0] redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_out;
    wire redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_out;
    wire redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_data_out;
    wire [0:0] redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_in;
    wire redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_in;
    wire redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_data_in;
    wire [0:0] redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_out;
    wire redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_out;
    wire redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_in;
    wire redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_in;
    wire redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_in_bitsignaltemp;
    wire [7:0] redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_out;
    wire redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_out;
    wire redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_out_bitsignaltemp;
    wire [7:0] redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_data_out;
    reg [7:0] redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q;
    wire [0:0] redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_in;
    wire redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_in;
    wire redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_in_bitsignaltemp;
    wire [7:0] redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_data_in;
    wire [0:0] redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_out;
    wire redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_out;
    wire redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_out_bitsignaltemp;
    wire [7:0] redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_data_out;
    wire [0:0] redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_in;
    wire redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_in;
    wire redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_data_in;
    wire [0:0] redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_out;
    wire redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_out;
    wire redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_data_out;
    wire [0:0] redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_in;
    wire redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_in;
    wire redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist9_i_cmp_eia608_from_utf84_q_32_fifo_data_in;
    wire [0:0] redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_out;
    wire redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_out;
    wire redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist9_i_cmp_eia608_from_utf84_q_32_fifo_data_out;
    wire [0:0] redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_in;
    wire redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_in;
    wire redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_cmp_eia608_from_utf84_q_64_fifo_data_in;
    wire [0:0] redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_out;
    wire redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_out;
    wire redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_cmp_eia608_from_utf84_q_64_fifo_data_out;
    wire [0:0] redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_in;
    wire redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_in;
    wire redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_data_in;
    wire [0:0] redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_out;
    wire redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_out;
    wire redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_data_out;
    wire [0:0] redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_in;
    wire redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_in;
    wire redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_i_cmp80_eia608_from_utf830_q_32_fifo_data_in;
    wire [0:0] redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_out;
    wire redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_out;
    wire redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_i_cmp80_eia608_from_utf830_q_32_fifo_data_out;
    wire [0:0] redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_in;
    wire redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_in;
    wire redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_cmp80_eia608_from_utf830_q_64_fifo_data_in;
    wire [0:0] redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_out;
    wire redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_out;
    wire redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_cmp80_eia608_from_utf830_q_64_fifo_data_out;
    wire [0:0] redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_in;
    wire redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_in;
    wire redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist15_i_cmp71_eia608_from_utf829_c_33_fifo_data_in;
    wire [0:0] redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_out;
    wire redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_out;
    wire redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist15_i_cmp71_eia608_from_utf829_c_33_fifo_data_out;
    wire [0:0] redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_in;
    wire redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_in;
    wire redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_i_cmp68_eia608_from_utf816_c_33_fifo_data_in;
    wire [0:0] redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_out;
    wire redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_out;
    wire redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_i_cmp68_eia608_from_utf816_c_33_fifo_data_out;
    wire [0:0] redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_in;
    wire redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_in;
    wire redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_cmp50_eia608_from_utf825_c_32_fifo_data_in;
    wire [0:0] redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_out;
    wire redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_out;
    wire redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_cmp50_eia608_from_utf825_c_32_fifo_data_out;
    wire [0:0] redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_in;
    wire redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_in;
    wire redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist18_i_cmp30_eia608_from_utf820_q_32_fifo_data_in;
    wire [0:0] redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_out;
    wire redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_out;
    wire redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist18_i_cmp30_eia608_from_utf820_q_32_fifo_data_out;
    wire [0:0] redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_in;
    wire redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_in;
    wire redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_cmp18_eia608_from_utf818_q_32_fifo_data_in;
    wire [0:0] redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_out;
    wire redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_out;
    wire redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_cmp18_eia608_from_utf818_q_32_fifo_data_out;
    wire [0:0] redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_in;
    wire redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_in;
    wire redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_data_in;
    wire [0:0] redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_out;
    wire redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_out;
    wire redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_data_out;
    wire [0:0] redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_in;
    wire redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_in;
    wire redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist22_i_acl_263_eia608_from_utf846_q_32_fifo_data_in;
    wire [0:0] redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_out;
    wire redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_out;
    wire redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist22_i_acl_263_eia608_from_utf846_q_32_fifo_data_out;
    wire [0:0] redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_in;
    wire redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_in;
    wire redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist23_i_acl_253_eia608_from_utf835_q_32_fifo_data_in;
    wire [0:0] redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_out;
    wire redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_out;
    wire redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist23_i_acl_253_eia608_from_utf835_q_32_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [8:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [8:0] coalesced_delay_0_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm12843_eia608_from_utf898_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm12843_eia608_from_utf898_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_lm12964_eia608_from_utf856_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_lm2_eia608_from_utf88_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_lm2_eia608_from_utf88_b;
    wire [7:0] bubble_join_i_llvm_fpga_mem_ml5_eia608_from_utf8104_q;
    wire [7:0] bubble_select_i_llvm_fpga_mem_ml5_eia608_from_utf8104_b;
    wire [63:0] bubble_join_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_q;
    wire [63:0] bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_b;
    wire [31:0] bubble_join_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_b;
    wire [63:0] bubble_join_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_q;
    wire [63:0] bubble_select_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_b;
    wire [63:0] bubble_join_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_q;
    wire [63:0] bubble_select_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_b;
    wire [7:0] bubble_join_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_q;
    wire [7:0] bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_b;
    wire [7:0] bubble_join_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_q;
    wire [7:0] bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b;
    wire [0:0] bubble_join_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_q;
    wire [0:0] bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;
    wire [0:0] bubble_join_redist9_i_cmp_eia608_from_utf84_q_32_fifo_q;
    wire [0:0] bubble_select_redist9_i_cmp_eia608_from_utf84_q_32_fifo_b;
    wire [0:0] bubble_join_redist10_i_cmp_eia608_from_utf84_q_64_fifo_q;
    wire [0:0] bubble_select_redist10_i_cmp_eia608_from_utf84_q_64_fifo_b;
    wire [0:0] bubble_join_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_q;
    wire [0:0] bubble_select_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_b;
    wire [0:0] bubble_join_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_q;
    wire [0:0] bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b;
    wire [0:0] bubble_join_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_q;
    wire [0:0] bubble_select_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_b;
    wire [0:0] bubble_join_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_q;
    wire [0:0] bubble_select_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_b;
    wire [0:0] bubble_join_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_q;
    wire [0:0] bubble_select_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_b;
    wire [0:0] bubble_join_redist17_i_cmp50_eia608_from_utf825_c_32_fifo_q;
    wire [0:0] bubble_select_redist17_i_cmp50_eia608_from_utf825_c_32_fifo_b;
    wire [0:0] bubble_join_redist18_i_cmp30_eia608_from_utf820_q_32_fifo_q;
    wire [0:0] bubble_select_redist18_i_cmp30_eia608_from_utf820_q_32_fifo_b;
    wire [0:0] bubble_join_redist19_i_cmp18_eia608_from_utf818_q_32_fifo_q;
    wire [0:0] bubble_select_redist19_i_cmp18_eia608_from_utf818_q_32_fifo_b;
    wire [0:0] bubble_join_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_q;
    wire [0:0] bubble_select_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_b;
    wire [0:0] bubble_join_redist22_i_acl_263_eia608_from_utf846_q_32_fifo_q;
    wire [0:0] bubble_select_redist22_i_acl_263_eia608_from_utf846_q_32_fifo_b;
    wire [0:0] bubble_join_redist23_i_acl_253_eia608_from_utf835_q_32_fifo_q;
    wire [0:0] bubble_select_redist23_i_acl_253_eia608_from_utf835_q_32_fifo_b;
    wire [8:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [8:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_wireStall;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_StallValid;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_toReg0;
    reg [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg0;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_consumed0;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_toReg1;
    reg [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg1;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_consumed1;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_or0;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_backStall;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_V0;
    wire [0:0] SE_out_eia608_from_utf8_B1_start_merge_reg_V1;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_wireValid;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_wireStall;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_StallValid;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_toReg0;
    reg [0:0] SE_i_acl_1277_eia608_from_utf853_fromReg0;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_consumed0;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_toReg1;
    reg [0:0] SE_i_acl_1277_eia608_from_utf853_fromReg1;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_consumed1;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_and0;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_or0;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_backStall;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_V0;
    wire [0:0] SE_i_acl_1277_eia608_from_utf853_V1;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_wireValid;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_wireStall;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_StallValid;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_toReg0;
    reg [0:0] SE_i_acl_1300_eia608_from_utf879_fromReg0;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_consumed0;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_toReg1;
    reg [0:0] SE_i_acl_1300_eia608_from_utf879_fromReg1;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_consumed1;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_toReg2;
    reg [0:0] SE_i_acl_1300_eia608_from_utf879_fromReg2;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_consumed2;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_and0;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_or0;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_or1;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_backStall;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_V0;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_V1;
    wire [0:0] SE_i_acl_1300_eia608_from_utf879_V2;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_wireValid;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_wireStall;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_StallValid;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_toReg0;
    reg [0:0] SE_i_acl_1313_eia608_from_utf888_fromReg0;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_consumed0;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_toReg1;
    reg [0:0] SE_i_acl_1313_eia608_from_utf888_fromReg1;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_consumed1;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_and0;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_or0;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_backStall;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_V0;
    wire [0:0] SE_i_acl_1313_eia608_from_utf888_V1;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_wireValid;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_and0;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_and1;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_and2;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_and3;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_backStall;
    wire [0:0] SE_i_acl_1322_eia608_from_utf889_V0;
    reg [0:0] SE_i_acl_253_eia608_from_utf835_R_v_0;
    reg [0:0] SE_i_acl_253_eia608_from_utf835_R_v_1;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_v_s_0;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_s_tv_0;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_s_tv_1;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_backEN;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_or0;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_backStall;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_V0;
    wire [0:0] SE_i_acl_253_eia608_from_utf835_V1;
    reg [0:0] SE_i_acl_326_v_eia608_from_utf897_R_v_0;
    wire [0:0] SE_i_acl_326_v_eia608_from_utf897_v_s_0;
    wire [0:0] SE_i_acl_326_v_eia608_from_utf897_s_tv_0;
    wire [0:0] SE_i_acl_326_v_eia608_from_utf897_backEN;
    wire [0:0] SE_i_acl_326_v_eia608_from_utf897_backStall;
    wire [0:0] SE_i_acl_326_v_eia608_from_utf897_V0;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_0;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_1;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_2;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_3;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_4;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_5;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_6;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_7;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_8;
    reg [0:0] SE_i_cmp22_eia608_from_utf832_R_v_9;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_v_s_0;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_0;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_1;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_2;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_3;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_4;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_5;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_6;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_7;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_8;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_s_tv_9;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_backEN;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or0;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or1;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or2;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or3;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or4;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or5;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or6;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or7;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_or8;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_backStall;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V0;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V1;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V2;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V3;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V4;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V5;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V6;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V7;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V8;
    wire [0:0] SE_i_cmp22_eia608_from_utf832_V9;
    wire [0:0] SE_out_i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_wireValid;
    wire [0:0] SE_out_i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V3;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_V1;
    wire [0:0] SE_i_unnamed_eia608_from_utf851_wireValid;
    wire [0:0] SE_i_unnamed_eia608_from_utf851_and0;
    wire [0:0] SE_i_unnamed_eia608_from_utf851_and1;
    wire [0:0] SE_i_unnamed_eia608_from_utf851_backStall;
    wire [0:0] SE_i_unnamed_eia608_from_utf851_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireStall;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_StallValid;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg0;
    reg [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed0;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg1;
    reg [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed1;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg2;
    reg [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed2;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_or0;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_or1;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_backStall;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V0;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V1;
    wire [0:0] SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_V0;
    wire [0:0] SE_join_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_0_and0;
    wire [0:0] SE_join_for_coalesced_delay_0_and1;
    wire [0:0] SE_join_for_coalesced_delay_0_and2;
    wire [0:0] SE_join_for_coalesced_delay_0_and3;
    wire [0:0] SE_join_for_coalesced_delay_0_and4;
    wire [0:0] SE_join_for_coalesced_delay_0_backStall;
    wire [0:0] SE_join_for_coalesced_delay_0_V0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_V1;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireStall;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_StallValid;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_toReg0;
    reg [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_toReg1;
    reg [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg1;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed1;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_or0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_backStall;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_V0;
    wire [0:0] SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_V1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_backStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_V0;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_or0;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_backStall;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_V0;
    wire [0:0] SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_V1;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireStall;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg0;
    reg [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg0;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed0;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg1;
    reg [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg1;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed1;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg2;
    reg [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg2;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed2;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg3;
    reg [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg3;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed3;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg4;
    reg [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg4;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed4;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or0;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or1;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or2;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or3;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_backStall;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V0;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V1;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V2;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V3;
    wire [0:0] SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V4;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireStall;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_StallValid;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_toReg0;
    reg [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg0;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed0;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_toReg1;
    reg [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg1;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed1;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_or0;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_backStall;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_V0;
    wire [0:0] SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_V1;
    wire [0:0] SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_wireValid;
    wire [0:0] SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_backStall;
    wire [0:0] SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and5;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and6;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and7;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and8;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and9;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and10;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and11;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and12;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and13;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_and0;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_and1;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_V0;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_in;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_out;
    wire bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_out_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_i8_30125_recast_x(CONSTANT,161)
    assign c_i8_30125_recast_x_q = $unsigned(8'b11100010);

    // bubble_join_i_llvm_fpga_mem_lm2_eia608_from_utf88(BITJOIN,253)
    assign bubble_join_i_llvm_fpga_mem_lm2_eia608_from_utf88_q = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm2_eia608_from_utf88(BITSELECT,254)
    assign bubble_select_i_llvm_fpga_mem_lm2_eia608_from_utf88_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm2_eia608_from_utf88_q[7:0]);

    // i_cmp80_eia608_from_utf830(LOGICAL,82)@33
    assign i_cmp80_eia608_from_utf830_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm2_eia608_from_utf88_b == c_i8_30125_recast_x_q ? 1'b1 : 1'b0);

    // i_cmp80_not_eia608_from_utf844(LOGICAL,83)@33
    assign i_cmp80_not_eia608_from_utf844_q = i_cmp80_eia608_from_utf830_q ^ VCC_q;

    // c_i8_125117(CONSTANT,7)
    assign c_i8_125117_q = $unsigned(8'b01111101);

    // i_cmp47_eia608_from_utf815(COMPARE,73)@97
    assign i_cmp47_eia608_from_utf815_a = {2'b00, bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b};
    assign i_cmp47_eia608_from_utf815_b = {2'b00, c_i8_125117_q};
    assign i_cmp47_eia608_from_utf815_o = $unsigned(i_cmp47_eia608_from_utf815_a) - $unsigned(i_cmp47_eia608_from_utf815_b);
    assign i_cmp47_eia608_from_utf815_c[0] = i_cmp47_eia608_from_utf815_o[9];

    // bubble_join_redist17_i_cmp50_eia608_from_utf825_c_32_fifo(BITJOIN,304)
    assign bubble_join_redist17_i_cmp50_eia608_from_utf825_c_32_fifo_q = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_data_out;

    // bubble_select_redist17_i_cmp50_eia608_from_utf825_c_32_fifo(BITSELECT,305)
    assign bubble_select_redist17_i_cmp50_eia608_from_utf825_c_32_fifo_b = $unsigned(bubble_join_redist17_i_cmp50_eia608_from_utf825_c_32_fifo_q[0:0]);

    // i_acl_348_eia608_from_utf841(LOGICAL,61)@97
    assign i_acl_348_eia608_from_utf841_q = bubble_select_redist17_i_cmp50_eia608_from_utf825_c_32_fifo_b ^ i_cmp47_eia608_from_utf815_c;

    // i_acl_351_eia608_from_utf849(LOGICAL,62)@97
    assign i_acl_351_eia608_from_utf849_q = i_acl_348_eia608_from_utf841_q & bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;

    // bubble_join_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo(BITJOIN,289)
    assign bubble_join_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_q = redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_data_out;

    // bubble_select_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo(BITSELECT,290)
    assign bubble_select_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_b = $unsigned(bubble_join_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_q[0:0]);

    // i_acl_333_eia608_from_utf852(LOGICAL,59)@97
    assign i_acl_333_eia608_from_utf852_q = bubble_select_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_b ^ bubble_select_redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_b;

    // c_i8_1114_recast_x(CONSTANT,156)
    assign c_i8_1114_recast_x_q = $unsigned(8'b11111111);

    // i_cmp44_eia608_from_utf811(COMPARE,72)@97
    assign i_cmp44_eia608_from_utf811_a = $unsigned({{2{c_i8_1114_recast_x_q[7]}}, c_i8_1114_recast_x_q});
    assign i_cmp44_eia608_from_utf811_b = $unsigned({{2{bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b[7]}}, bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b});
    assign i_cmp44_eia608_from_utf811_o = $unsigned($signed(i_cmp44_eia608_from_utf811_a) - $signed(i_cmp44_eia608_from_utf811_b));
    assign i_cmp44_eia608_from_utf811_c[0] = i_cmp44_eia608_from_utf811_o[9];

    // i_acl_339_eia608_from_utf843(LOGICAL,60)@97
    assign i_acl_339_eia608_from_utf843_q = i_cmp44_eia608_from_utf811_c ^ bubble_select_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_b;

    // i_reduction_eia608_from_utf8_9_eia608_from_utf857(LOGICAL,101)@97
    assign i_reduction_eia608_from_utf8_9_eia608_from_utf857_q = i_acl_339_eia608_from_utf843_q | i_acl_333_eia608_from_utf852_q;

    // bubble_join_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo(BITJOIN,313)
    assign bubble_join_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_q = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_data_out;

    // bubble_select_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo(BITSELECT,314)
    assign bubble_select_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_b = $unsigned(bubble_join_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_q[0:0]);

    // i_acl_326_eia608_from_utf8100(LOGICAL,56)@97
    assign i_acl_326_eia608_from_utf8100_q = bubble_select_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_b ^ VCC_q;

    // i_acl_327_eia608_from_utf8102(LOGICAL,58)@97
    assign i_acl_327_eia608_from_utf8102_q = bubble_select_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_b & i_acl_326_eia608_from_utf8100_q;

    // bubble_join_redist16_i_cmp68_eia608_from_utf816_c_33_fifo(BITJOIN,301)
    assign bubble_join_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_q = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_data_out;

    // bubble_select_redist16_i_cmp68_eia608_from_utf816_c_33_fifo(BITSELECT,302)
    assign bubble_select_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_b = $unsigned(bubble_join_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_q[0:0]);

    // bubble_join_redist15_i_cmp71_eia608_from_utf829_c_33_fifo(BITJOIN,298)
    assign bubble_join_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_q = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_data_out;

    // bubble_select_redist15_i_cmp71_eia608_from_utf829_c_33_fifo(BITSELECT,299)
    assign bubble_select_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_b = $unsigned(bubble_join_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_q[0:0]);

    // bubble_join_redist19_i_cmp18_eia608_from_utf818_q_32_fifo(BITJOIN,310)
    assign bubble_join_redist19_i_cmp18_eia608_from_utf818_q_32_fifo_q = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_data_out;

    // bubble_select_redist19_i_cmp18_eia608_from_utf818_q_32_fifo(BITSELECT,311)
    assign bubble_select_redist19_i_cmp18_eia608_from_utf818_q_32_fifo_b = $unsigned(bubble_join_redist19_i_cmp18_eia608_from_utf818_q_32_fifo_q[0:0]);

    // i_acl_270_eia608_from_utf838(LOGICAL,52)@97
    assign i_acl_270_eia608_from_utf838_q = bubble_select_redist19_i_cmp18_eia608_from_utf818_q_32_fifo_b & bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;

    // bubble_join_redist22_i_acl_263_eia608_from_utf846_q_32_fifo(BITJOIN,316)
    assign bubble_join_redist22_i_acl_263_eia608_from_utf846_q_32_fifo_q = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_data_out;

    // bubble_select_redist22_i_acl_263_eia608_from_utf846_q_32_fifo(BITSELECT,317)
    assign bubble_select_redist22_i_acl_263_eia608_from_utf846_q_32_fifo_b = $unsigned(bubble_join_redist22_i_acl_263_eia608_from_utf846_q_32_fifo_q[0:0]);

    // i_acl_265_eia608_from_utf854(LOGICAL,51)@97
    assign i_acl_265_eia608_from_utf854_q = bubble_select_redist22_i_acl_263_eia608_from_utf846_q_32_fifo_b & bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;

    // bubble_join_redist18_i_cmp30_eia608_from_utf820_q_32_fifo(BITJOIN,307)
    assign bubble_join_redist18_i_cmp30_eia608_from_utf820_q_32_fifo_q = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_data_out;

    // bubble_select_redist18_i_cmp30_eia608_from_utf820_q_32_fifo(BITSELECT,308)
    assign bubble_select_redist18_i_cmp30_eia608_from_utf820_q_32_fifo_b = $unsigned(bubble_join_redist18_i_cmp30_eia608_from_utf820_q_32_fifo_q[0:0]);

    // i_acl_259_eia608_from_utf840(LOGICAL,49)@97
    assign i_acl_259_eia608_from_utf840_q = bubble_select_redist18_i_cmp30_eia608_from_utf820_q_32_fifo_b & bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;

    // bubble_join_redist23_i_acl_253_eia608_from_utf835_q_32_fifo(BITJOIN,319)
    assign bubble_join_redist23_i_acl_253_eia608_from_utf835_q_32_fifo_q = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_data_out;

    // bubble_select_redist23_i_acl_253_eia608_from_utf835_q_32_fifo(BITSELECT,320)
    assign bubble_select_redist23_i_acl_253_eia608_from_utf835_q_32_fifo_b = $unsigned(bubble_join_redist23_i_acl_253_eia608_from_utf835_q_32_fifo_q[0:0]);

    // i_acl_254_eia608_from_utf847(LOGICAL,48)@97
    assign i_acl_254_eia608_from_utf847_q = bubble_select_redist23_i_acl_253_eia608_from_utf835_q_32_fifo_b & bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;

    // i_acl_248_eia608_from_utf836(LOGICAL,45)@97
    assign i_acl_248_eia608_from_utf836_q = i_cmp47_eia608_from_utf815_c ^ i_cmp44_eia608_from_utf811_c;

    // i_acl_250_eia608_from_utf848(LOGICAL,46)@97
    assign i_acl_250_eia608_from_utf848_q = i_acl_248_eia608_from_utf836_q & bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b;

    // bubble_join_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo(BITJOIN,280)
    assign bubble_join_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_q = redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_data_out;

    // bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo(BITSELECT,281)
    assign bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b = $unsigned(bubble_join_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_q[0:0]);

    // bubble_join_redist14_i_cmp80_eia608_from_utf830_q_64_fifo(BITJOIN,295)
    assign bubble_join_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_q = redist14_i_cmp80_eia608_from_utf830_q_64_fifo_data_out;

    // bubble_select_redist14_i_cmp80_eia608_from_utf830_q_64_fifo(BITSELECT,296)
    assign bubble_select_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_b = $unsigned(bubble_join_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,322)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,323)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[8:0]);

    // sel_for_coalesced_delay_0(BITSELECT,222)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);
    assign sel_for_coalesced_delay_0_e = $unsigned(bubble_select_coalesced_delay_0_fifo_b[3:3]);
    assign sel_for_coalesced_delay_0_f = $unsigned(bubble_select_coalesced_delay_0_fifo_b[4:4]);
    assign sel_for_coalesced_delay_0_g = $unsigned(bubble_select_coalesced_delay_0_fifo_b[5:5]);
    assign sel_for_coalesced_delay_0_h = $unsigned(bubble_select_coalesced_delay_0_fifo_b[6:6]);
    assign sel_for_coalesced_delay_0_i = $unsigned(bubble_select_coalesced_delay_0_fifo_b[7:7]);
    assign sel_for_coalesced_delay_0_j = $unsigned(bubble_select_coalesced_delay_0_fifo_b[8:8]);

    // bubble_join_redist9_i_cmp_eia608_from_utf84_q_32_fifo(BITJOIN,283)
    assign bubble_join_redist9_i_cmp_eia608_from_utf84_q_32_fifo_q = redist9_i_cmp_eia608_from_utf84_q_32_fifo_data_out;

    // bubble_select_redist9_i_cmp_eia608_from_utf84_q_32_fifo(BITSELECT,284)
    assign bubble_select_redist9_i_cmp_eia608_from_utf84_q_32_fifo_b = $unsigned(bubble_join_redist9_i_cmp_eia608_from_utf84_q_32_fifo_q[0:0]);

    // SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo(STALLENABLE,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg0 <= '0;
            SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg0 <= SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg1 <= SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed0 = (~ (SE_i_unnamed_eia608_from_utf851_backStall) & SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid) | SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg0;
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed1 = (~ (redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_out) & SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid) | SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_StallValid = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_backStall & SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid;
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_toReg0 = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_StallValid & SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed0;
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_toReg1 = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_StallValid & SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_or0 = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed0;
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireStall = ~ (SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_consumed1 & SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_or0);
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_backStall = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_V0 = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid & ~ (SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg0);
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_V1 = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid & ~ (SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_wireValid = redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_out;

    // redist10_i_cmp_eia608_from_utf84_q_64_fifo(STALLFIFO,230)
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_in = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_V1;
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_in = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_backStall;
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_data_in = bubble_select_redist9_i_cmp_eia608_from_utf84_q_32_fifo_b;
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_in_bitsignaltemp = redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_in[0];
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_in_bitsignaltemp = redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_in[0];
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_out[0] = redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_out_bitsignaltemp;
    assign redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_out[0] = redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_cmp_eia608_from_utf84_q_64_fifo (
        .valid_in(redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist9_i_cmp_eia608_from_utf84_q_32_fifo_b),
        .valid_out(redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_cmp_eia608_from_utf84_q_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_cmp_eia608_from_utf84_q_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist10_i_cmp_eia608_from_utf84_q_64_fifo(BITJOIN,286)
    assign bubble_join_redist10_i_cmp_eia608_from_utf84_q_64_fifo_q = redist10_i_cmp_eia608_from_utf84_q_64_fifo_data_out;

    // bubble_select_redist10_i_cmp_eia608_from_utf84_q_64_fifo(BITSELECT,287)
    assign bubble_select_redist10_i_cmp_eia608_from_utf84_q_64_fifo_b = $unsigned(bubble_join_redist10_i_cmp_eia608_from_utf84_q_64_fifo_q[0:0]);

    // i_cmp_not_eia608_from_utf87(LOGICAL,85)@65
    assign i_cmp_not_eia608_from_utf87_q = bubble_select_redist10_i_cmp_eia608_from_utf84_q_64_fifo_b ^ VCC_q;

    // c_i8_32119(CONSTANT,9)
    assign c_i8_32119_q = $unsigned(8'b00100000);

    // bubble_join_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo(BITJOIN,274)
    assign bubble_join_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_q = redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo(BITSELECT,275)
    assign bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_q[7:0]);

    // redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0(REG,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q <= $unsigned(8'b00000000);
        end
        else if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b1)
        begin
            redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q <= $unsigned(bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_b);
        end
    end

    // i_cmp14_eia608_from_utf817(COMPARE,63)@65
    assign i_cmp14_eia608_from_utf817_a = {2'b00, redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q};
    assign i_cmp14_eia608_from_utf817_b = {2'b00, c_i8_32119_q};
    assign i_cmp14_eia608_from_utf817_o = $unsigned(i_cmp14_eia608_from_utf817_a) - $unsigned(i_cmp14_eia608_from_utf817_b);
    assign i_cmp14_eia608_from_utf817_c[0] = i_cmp14_eia608_from_utf817_o[9];

    // i_cmp14_not_eia608_from_utf837(LOGICAL,64)@65
    assign i_cmp14_not_eia608_from_utf837_q = i_cmp14_eia608_from_utf817_c ^ VCC_q;

    // c_i8_42126(CONSTANT,11)
    assign c_i8_42126_q = $unsigned(8'b00101010);

    // i_cmp22_eia608_from_utf832(COMPARE,67)@64 + 1
    assign i_cmp22_eia608_from_utf832_a = {2'b00, bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_b};
    assign i_cmp22_eia608_from_utf832_b = {2'b00, c_i8_42126_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp22_eia608_from_utf832_o <= 10'b0;
        end
        else if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b1)
        begin
            i_cmp22_eia608_from_utf832_o <= $unsigned(i_cmp22_eia608_from_utf832_a) - $unsigned(i_cmp22_eia608_from_utf832_b);
        end
    end
    assign i_cmp22_eia608_from_utf832_c[0] = i_cmp22_eia608_from_utf832_o[9];

    // c_i8_39115(CONSTANT,10)
    assign c_i8_39115_q = $unsigned(8'b00100111);

    // i_cmp18_eia608_from_utf818(LOGICAL,65)@65
    assign i_cmp18_eia608_from_utf818_q = $unsigned(redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q == c_i8_39115_q ? 1'b1 : 1'b0);

    // i_acl_1276_eia608_from_utf845(LOGICAL,24)@65
    assign i_acl_1276_eia608_from_utf845_q = i_cmp18_eia608_from_utf818_q ^ i_cmp22_eia608_from_utf832_c;

    // i_cmp7_eia608_from_utf813(COMPARE,81)@65
    assign i_cmp7_eia608_from_utf813_a = {2'b00, redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q};
    assign i_cmp7_eia608_from_utf813_b = {2'b00, c_i8_39115_q};
    assign i_cmp7_eia608_from_utf813_o = $unsigned(i_cmp7_eia608_from_utf813_a) - $unsigned(i_cmp7_eia608_from_utf813_b);
    assign i_cmp7_eia608_from_utf813_c[0] = i_cmp7_eia608_from_utf813_o[9];

    // i_acl_1277_eia608_from_utf853(MUX,25)@65
    assign i_acl_1277_eia608_from_utf853_s = i_cmp7_eia608_from_utf813_c;
    always @(i_acl_1277_eia608_from_utf853_s or i_acl_1276_eia608_from_utf845_q or i_cmp14_not_eia608_from_utf837_q)
    begin
        unique case (i_acl_1277_eia608_from_utf853_s)
            1'b0 : i_acl_1277_eia608_from_utf853_q = i_acl_1276_eia608_from_utf845_q;
            1'b1 : i_acl_1277_eia608_from_utf853_q = i_cmp14_not_eia608_from_utf837_q;
            default : i_acl_1277_eia608_from_utf853_q = 1'b0;
        endcase
    end

    // c_i8_94116(CONSTANT,15)
    assign c_i8_94116_q = $unsigned(8'b01011110);

    // i_cmp27_eia608_from_utf814(COMPARE,68)@65
    assign i_cmp27_eia608_from_utf814_a = {2'b00, redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q};
    assign i_cmp27_eia608_from_utf814_b = {2'b00, c_i8_94116_q};
    assign i_cmp27_eia608_from_utf814_o = $unsigned(i_cmp27_eia608_from_utf814_a) - $unsigned(i_cmp27_eia608_from_utf814_b);
    assign i_cmp27_eia608_from_utf814_c[0] = i_cmp27_eia608_from_utf814_o[9];

    // c_i8_92120_recast_x(CONSTANT,163)
    assign c_i8_92120_recast_x_q = $unsigned(8'b01011100);

    // i_cmp30_eia608_from_utf820(LOGICAL,69)@65
    assign i_cmp30_eia608_from_utf820_q = $unsigned(redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q == c_i8_92120_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1278_eia608_from_utf839(LOGICAL,26)@65
    assign i_acl_1278_eia608_from_utf839_q = i_cmp30_eia608_from_utf820_q ^ i_cmp27_eia608_from_utf814_c;

    // c_i8_43113(CONSTANT,12)
    assign c_i8_43113_q = $unsigned(8'b00101011);

    // i_cmp4_eia608_from_utf810(COMPARE,74)@65
    assign i_cmp4_eia608_from_utf810_a = {2'b00, redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q};
    assign i_cmp4_eia608_from_utf810_b = {2'b00, c_i8_43113_q};
    assign i_cmp4_eia608_from_utf810_o = $unsigned(i_cmp4_eia608_from_utf810_a) - $unsigned(i_cmp4_eia608_from_utf810_b);
    assign i_cmp4_eia608_from_utf810_c[0] = i_cmp4_eia608_from_utf810_o[9];

    // i_acl_1279_eia608_from_utf858(MUX,27)@65
    assign i_acl_1279_eia608_from_utf858_s = i_cmp4_eia608_from_utf810_c;
    always @(i_acl_1279_eia608_from_utf858_s or i_acl_1278_eia608_from_utf839_q or i_acl_1277_eia608_from_utf853_q)
    begin
        unique case (i_acl_1279_eia608_from_utf858_s)
            1'b0 : i_acl_1279_eia608_from_utf858_q = i_acl_1278_eia608_from_utf839_q;
            1'b1 : i_acl_1279_eia608_from_utf858_q = i_acl_1277_eia608_from_utf853_q;
            default : i_acl_1279_eia608_from_utf858_q = 1'b0;
        endcase
    end

    // c_i8_123122(CONSTANT,6)
    assign c_i8_123122_q = $unsigned(8'b01111011);

    // i_cmp50_eia608_from_utf825(COMPARE,75)@65
    assign i_cmp50_eia608_from_utf825_a = {2'b00, redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q};
    assign i_cmp50_eia608_from_utf825_b = {2'b00, c_i8_123122_q};
    assign i_cmp50_eia608_from_utf825_o = $unsigned(i_cmp50_eia608_from_utf825_a) - $unsigned(i_cmp50_eia608_from_utf825_b);
    assign i_cmp50_eia608_from_utf825_c[0] = i_cmp50_eia608_from_utf825_o[9];

    // c_i8_97112(CONSTANT,17)
    assign c_i8_97112_q = $unsigned(8'b01100001);

    // i_cmp1_eia608_from_utf89(COMPARE,66)@65
    assign i_cmp1_eia608_from_utf89_a = {2'b00, redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q};
    assign i_cmp1_eia608_from_utf89_b = {2'b00, c_i8_97112_q};
    assign i_cmp1_eia608_from_utf89_o = $unsigned(i_cmp1_eia608_from_utf89_a) - $unsigned(i_cmp1_eia608_from_utf89_b);
    assign i_cmp1_eia608_from_utf89_c[0] = i_cmp1_eia608_from_utf89_o[9];

    // i_acl_1282_eia608_from_utf878(MUX,28)@65
    assign i_acl_1282_eia608_from_utf878_s = i_cmp1_eia608_from_utf89_c;
    always @(i_acl_1282_eia608_from_utf878_s or i_cmp50_eia608_from_utf825_c or i_acl_1279_eia608_from_utf858_q)
    begin
        unique case (i_acl_1282_eia608_from_utf878_s)
            1'b0 : i_acl_1282_eia608_from_utf878_q = i_cmp50_eia608_from_utf825_c;
            1'b1 : i_acl_1282_eia608_from_utf878_q = i_acl_1279_eia608_from_utf858_q;
            default : i_acl_1282_eia608_from_utf878_q = 1'b0;
        endcase
    end

    // i_acl_1283_eia608_from_utf886(LOGICAL,29)@65
    assign i_acl_1283_eia608_from_utf886_q = i_acl_1282_eia608_from_utf878_q & i_cmp_not_eia608_from_utf87_q;

    // i_unnamed_eia608_from_utf893(LOGICAL,109)@65
    assign i_unnamed_eia608_from_utf893_q = i_acl_1283_eia608_from_utf886_q ^ VCC_q;

    // bubble_join_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo(BITJOIN,271)
    assign bubble_join_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_q = redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_data_out;

    // bubble_select_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo(BITSELECT,272)
    assign bubble_select_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_b = $unsigned(bubble_join_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_q[63:0]);

    // i_llvm_fpga_mem_lm12843_eia608_from_utf898(BLACKBOX,87)@65
    // in in_i_stall@20000000
    // out out_lm12843_eia608_from_utf8_avm_address@20000000
    // out out_lm12843_eia608_from_utf8_avm_burstcount@20000000
    // out out_lm12843_eia608_from_utf8_avm_byteenable@20000000
    // out out_lm12843_eia608_from_utf8_avm_enable@20000000
    // out out_lm12843_eia608_from_utf8_avm_read@20000000
    // out out_lm12843_eia608_from_utf8_avm_write@20000000
    // out out_lm12843_eia608_from_utf8_avm_writedata@20000000
    // out out_o_readdata@97
    // out out_o_stall@20000000
    // out out_o_valid@97
    eia608_from_utf8_i_llvm_fpga_mem_lm12843_0 thei_llvm_fpga_mem_lm12843_eia608_from_utf898 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_b),
        .in_i_predicate(i_unnamed_eia608_from_utf893_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V0),
        .in_lm12843_eia608_from_utf8_avm_readdata(in_lm12843_eia608_from_utf8_avm_readdata),
        .in_lm12843_eia608_from_utf8_avm_readdatavalid(in_lm12843_eia608_from_utf8_avm_readdatavalid),
        .in_lm12843_eia608_from_utf8_avm_waitrequest(in_lm12843_eia608_from_utf8_avm_waitrequest),
        .in_lm12843_eia608_from_utf8_avm_writeack(in_lm12843_eia608_from_utf8_avm_writeack),
        .out_lm12843_eia608_from_utf8_avm_address(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_address),
        .out_lm12843_eia608_from_utf8_avm_burstcount(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_burstcount),
        .out_lm12843_eia608_from_utf8_avm_byteenable(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_byteenable),
        .out_lm12843_eia608_from_utf8_avm_enable(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_enable),
        .out_lm12843_eia608_from_utf8_avm_read(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_read),
        .out_lm12843_eia608_from_utf8_avm_write(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_write),
        .out_lm12843_eia608_from_utf8_avm_writedata(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo(STALLENABLE,461)
    // Valid signal propagation
    assign SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_V0 = SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_backStall = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_out | ~ (SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_wireValid = SE_i_acl_326_v_eia608_from_utf897_V0;

    // SE_i_acl_326_v_eia608_from_utf897(STALLENABLE,358)
    // Valid signal propagation
    assign SE_i_acl_326_v_eia608_from_utf897_V0 = SE_i_acl_326_v_eia608_from_utf897_R_v_0;
    // Stall signal propagation
    assign SE_i_acl_326_v_eia608_from_utf897_s_tv_0 = SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_backStall & SE_i_acl_326_v_eia608_from_utf897_R_v_0;
    // Backward Enable generation
    assign SE_i_acl_326_v_eia608_from_utf897_backEN = ~ (SE_i_acl_326_v_eia608_from_utf897_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_acl_326_v_eia608_from_utf897_v_s_0 = SE_i_acl_326_v_eia608_from_utf897_backEN & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V0;
    // Backward Stall generation
    assign SE_i_acl_326_v_eia608_from_utf897_backStall = ~ (SE_i_acl_326_v_eia608_from_utf897_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_326_v_eia608_from_utf897_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_acl_326_v_eia608_from_utf897_backEN == 1'b0)
            begin
                SE_i_acl_326_v_eia608_from_utf897_R_v_0 <= SE_i_acl_326_v_eia608_from_utf897_R_v_0 & SE_i_acl_326_v_eia608_from_utf897_s_tv_0;
            end
            else
            begin
                SE_i_acl_326_v_eia608_from_utf897_R_v_0 <= SE_i_acl_326_v_eia608_from_utf897_v_s_0;
            end

        end
    end

    // i_unnamed_eia608_from_utf851(LOGICAL,108)@33
    assign i_unnamed_eia608_from_utf851_q = bubble_select_redist9_i_cmp_eia608_from_utf84_q_32_fifo_b | i_cmp80_not_eia608_from_utf844_q;

    // c_i64_1128(CONSTANT,4)
    assign c_i64_1128_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // bubble_join_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo(BITJOIN,268)
    assign bubble_join_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_q = redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_data_out;

    // bubble_select_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo(BITSELECT,269)
    assign bubble_select_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_b = $unsigned(bubble_join_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_q[63:0]);

    // i_incdec_ptr168_eia608_from_utf80_add_x(ADD,185)@33
    assign i_incdec_ptr168_eia608_from_utf80_add_x_a = {1'b0, bubble_select_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_b};
    assign i_incdec_ptr168_eia608_from_utf80_add_x_b = {1'b0, c_i64_1128_q};
    assign i_incdec_ptr168_eia608_from_utf80_add_x_o = $unsigned(i_incdec_ptr168_eia608_from_utf80_add_x_a) + $unsigned(i_incdec_ptr168_eia608_from_utf80_add_x_b);
    assign i_incdec_ptr168_eia608_from_utf80_add_x_q = i_incdec_ptr168_eia608_from_utf80_add_x_o[64:0];

    // i_incdec_ptr168_eia608_from_utf80_trunc_sel_x(BITSELECT,188)@33
    assign i_incdec_ptr168_eia608_from_utf80_trunc_sel_x_b = i_incdec_ptr168_eia608_from_utf80_add_x_q[63:0];

    // i_llvm_fpga_mem_lm12964_eia608_from_utf856(BLACKBOX,88)@33
    // in in_i_stall@20000000
    // out out_lm12964_eia608_from_utf8_avm_address@20000000
    // out out_lm12964_eia608_from_utf8_avm_burstcount@20000000
    // out out_lm12964_eia608_from_utf8_avm_byteenable@20000000
    // out out_lm12964_eia608_from_utf8_avm_enable@20000000
    // out out_lm12964_eia608_from_utf8_avm_read@20000000
    // out out_lm12964_eia608_from_utf8_avm_write@20000000
    // out out_lm12964_eia608_from_utf8_avm_writedata@20000000
    // out out_o_readdata@65
    // out out_o_stall@20000000
    // out out_o_valid@65
    eia608_from_utf8_i_llvm_fpga_mem_lm12964_0 thei_llvm_fpga_mem_lm12964_eia608_from_utf856 (
        .in_flush(in_flush),
        .in_i_address(i_incdec_ptr168_eia608_from_utf80_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_eia608_from_utf851_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_backStall),
        .in_i_valid(SE_i_unnamed_eia608_from_utf851_V0),
        .in_lm12964_eia608_from_utf8_avm_readdata(in_lm12964_eia608_from_utf8_avm_readdata),
        .in_lm12964_eia608_from_utf8_avm_readdatavalid(in_lm12964_eia608_from_utf8_avm_readdatavalid),
        .in_lm12964_eia608_from_utf8_avm_waitrequest(in_lm12964_eia608_from_utf8_avm_waitrequest),
        .in_lm12964_eia608_from_utf8_avm_writeack(in_lm12964_eia608_from_utf8_avm_writeack),
        .out_lm12964_eia608_from_utf8_avm_address(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_address),
        .out_lm12964_eia608_from_utf8_avm_burstcount(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_burstcount),
        .out_lm12964_eia608_from_utf8_avm_byteenable(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_byteenable),
        .out_lm12964_eia608_from_utf8_avm_enable(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_enable),
        .out_lm12964_eia608_from_utf8_avm_read(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_read),
        .out_lm12964_eia608_from_utf8_avm_write(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_write),
        .out_lm12964_eia608_from_utf8_avm_writedata(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856(STALLENABLE,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg0 <= SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg1 <= SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg2 <= SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed0 = (~ (SE_i_acl_326_v_eia608_from_utf897_backStall) & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid) | SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed1 = (~ (SE_i_acl_1300_eia608_from_utf879_backStall) & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid) | SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed2 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid) | SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_StallValid = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_backStall & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg0 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_StallValid & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg1 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_StallValid & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_toReg2 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_StallValid & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_or0 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_or1 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed1 & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_or0;
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_consumed2 & SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_or1);
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_backStall = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V0 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V1 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V2 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_wireValid = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_valid;

    // SE_join_for_coalesced_delay_0(STALLENABLE,428)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_0_V0 = SE_join_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_0_backStall = coalesced_delay_0_fifo_stall_out | ~ (SE_join_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_0_and0 = SE_i_acl_1277_eia608_from_utf853_V0;
    assign SE_join_for_coalesced_delay_0_and1 = SE_i_acl_1300_eia608_from_utf879_V0 & SE_join_for_coalesced_delay_0_and0;
    assign SE_join_for_coalesced_delay_0_and2 = SE_i_acl_1313_eia608_from_utf888_V1 & SE_join_for_coalesced_delay_0_and1;
    assign SE_join_for_coalesced_delay_0_and3 = SE_i_cmp22_eia608_from_utf832_V0 & SE_join_for_coalesced_delay_0_and2;
    assign SE_join_for_coalesced_delay_0_and4 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V2 & SE_join_for_coalesced_delay_0_and3;
    assign SE_join_for_coalesced_delay_0_wireValid = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V0 & SE_join_for_coalesced_delay_0_and4;

    // SE_i_acl_1277_eia608_from_utf853(STALLENABLE,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_1277_eia608_from_utf853_fromReg0 <= '0;
            SE_i_acl_1277_eia608_from_utf853_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_acl_1277_eia608_from_utf853_fromReg0 <= SE_i_acl_1277_eia608_from_utf853_toReg0;
            // Successor 1
            SE_i_acl_1277_eia608_from_utf853_fromReg1 <= SE_i_acl_1277_eia608_from_utf853_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_acl_1277_eia608_from_utf853_consumed0 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_i_acl_1277_eia608_from_utf853_wireValid) | SE_i_acl_1277_eia608_from_utf853_fromReg0;
    assign SE_i_acl_1277_eia608_from_utf853_consumed1 = (~ (SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall) & SE_i_acl_1277_eia608_from_utf853_wireValid) | SE_i_acl_1277_eia608_from_utf853_fromReg1;
    // Consuming
    assign SE_i_acl_1277_eia608_from_utf853_StallValid = SE_i_acl_1277_eia608_from_utf853_backStall & SE_i_acl_1277_eia608_from_utf853_wireValid;
    assign SE_i_acl_1277_eia608_from_utf853_toReg0 = SE_i_acl_1277_eia608_from_utf853_StallValid & SE_i_acl_1277_eia608_from_utf853_consumed0;
    assign SE_i_acl_1277_eia608_from_utf853_toReg1 = SE_i_acl_1277_eia608_from_utf853_StallValid & SE_i_acl_1277_eia608_from_utf853_consumed1;
    // Backward Stall generation
    assign SE_i_acl_1277_eia608_from_utf853_or0 = SE_i_acl_1277_eia608_from_utf853_consumed0;
    assign SE_i_acl_1277_eia608_from_utf853_wireStall = ~ (SE_i_acl_1277_eia608_from_utf853_consumed1 & SE_i_acl_1277_eia608_from_utf853_or0);
    assign SE_i_acl_1277_eia608_from_utf853_backStall = SE_i_acl_1277_eia608_from_utf853_wireStall;
    // Valid signal propagation
    assign SE_i_acl_1277_eia608_from_utf853_V0 = SE_i_acl_1277_eia608_from_utf853_wireValid & ~ (SE_i_acl_1277_eia608_from_utf853_fromReg0);
    assign SE_i_acl_1277_eia608_from_utf853_V1 = SE_i_acl_1277_eia608_from_utf853_wireValid & ~ (SE_i_acl_1277_eia608_from_utf853_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_acl_1277_eia608_from_utf853_and0 = SE_i_cmp22_eia608_from_utf832_V5;
    assign SE_i_acl_1277_eia608_from_utf853_wireValid = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V1 & SE_i_acl_1277_eia608_from_utf853_and0;

    // SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898(STALLENABLE,389)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V0 = SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_and0 = SE_i_acl_1277_eia608_from_utf853_V1;
    assign SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_V0 & SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_and0;

    // SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo(STALLENABLE,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg0 <= SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg1 <= SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed0 = (~ (redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_out) & SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg0;
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed1 = (~ (SE_i_unnamed_eia608_from_utf851_backStall) & SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid) | SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_StallValid = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_backStall & SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid;
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_toReg0 = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_toReg1 = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_StallValid & SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_or0 = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireStall = ~ (SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_consumed1 & SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_or0);
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_backStall = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_V0 = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg0);
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_V1 = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_wireValid = redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_out;

    // redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo(STALLFIFO,224)
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_in = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_V0;
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_in = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_backStall;
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_data_in = bubble_select_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_b;
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_in_bitsignaltemp = redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_in[0];
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_in_bitsignaltemp = redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_in[0];
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_out[0] = redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_out_bitsignaltemp;
    assign redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_out[0] = redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo (
        .valid_in(redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_b),
        .valid_out(redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo(STALLENABLE,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg0 <= '0;
            SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg0 <= SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_toReg0;
            // Successor 1
            SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg1 <= SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall) & SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid) | SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg0;
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed1 = (~ (SE_i_acl_1322_eia608_from_utf889_backStall) & SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid) | SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_StallValid = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_backStall & SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid;
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_toReg0 = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_StallValid & SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed0;
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_toReg1 = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_StallValid & SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_or0 = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed0;
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireStall = ~ (SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_consumed1 & SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_or0);
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_backStall = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_V0 = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid & ~ (SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg0);
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_V1 = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid & ~ (SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_wireValid = redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_valid_out;

    // SE_i_acl_253_eia608_from_utf835(STALLENABLE,348)
    // Valid signal propagation
    assign SE_i_acl_253_eia608_from_utf835_V0 = SE_i_acl_253_eia608_from_utf835_R_v_0;
    assign SE_i_acl_253_eia608_from_utf835_V1 = SE_i_acl_253_eia608_from_utf835_R_v_1;
    // Stall signal propagation
    assign SE_i_acl_253_eia608_from_utf835_s_tv_0 = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_out & SE_i_acl_253_eia608_from_utf835_R_v_0;
    assign SE_i_acl_253_eia608_from_utf835_s_tv_1 = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_out & SE_i_acl_253_eia608_from_utf835_R_v_1;
    // Backward Enable generation
    assign SE_i_acl_253_eia608_from_utf835_or0 = SE_i_acl_253_eia608_from_utf835_s_tv_0;
    assign SE_i_acl_253_eia608_from_utf835_backEN = ~ (SE_i_acl_253_eia608_from_utf835_s_tv_1 | SE_i_acl_253_eia608_from_utf835_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_acl_253_eia608_from_utf835_v_s_0 = SE_i_acl_253_eia608_from_utf835_backEN & SE_i_cmp22_eia608_from_utf832_V1;
    // Backward Stall generation
    assign SE_i_acl_253_eia608_from_utf835_backStall = ~ (SE_i_acl_253_eia608_from_utf835_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_253_eia608_from_utf835_R_v_0 <= 1'b0;
            SE_i_acl_253_eia608_from_utf835_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_acl_253_eia608_from_utf835_backEN == 1'b0)
            begin
                SE_i_acl_253_eia608_from_utf835_R_v_0 <= SE_i_acl_253_eia608_from_utf835_R_v_0 & SE_i_acl_253_eia608_from_utf835_s_tv_0;
            end
            else
            begin
                SE_i_acl_253_eia608_from_utf835_R_v_0 <= SE_i_acl_253_eia608_from_utf835_v_s_0;
            end

            if (SE_i_acl_253_eia608_from_utf835_backEN == 1'b0)
            begin
                SE_i_acl_253_eia608_from_utf835_R_v_1 <= SE_i_acl_253_eia608_from_utf835_R_v_1 & SE_i_acl_253_eia608_from_utf835_s_tv_1;
            end
            else
            begin
                SE_i_acl_253_eia608_from_utf835_R_v_1 <= SE_i_acl_253_eia608_from_utf835_v_s_0;
            end

        end
    end

    // SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo(STALLENABLE,435)
    // Valid signal propagation
    assign SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_V0 = SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_backStall = SE_i_cmp22_eia608_from_utf832_backStall | ~ (SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_wireValid = redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_out;

    // SE_i_cmp22_eia608_from_utf832(STALLENABLE,368)
    // Valid signal propagation
    assign SE_i_cmp22_eia608_from_utf832_V0 = SE_i_cmp22_eia608_from_utf832_R_v_0;
    assign SE_i_cmp22_eia608_from_utf832_V1 = SE_i_cmp22_eia608_from_utf832_R_v_1;
    assign SE_i_cmp22_eia608_from_utf832_V2 = SE_i_cmp22_eia608_from_utf832_R_v_2;
    assign SE_i_cmp22_eia608_from_utf832_V3 = SE_i_cmp22_eia608_from_utf832_R_v_3;
    assign SE_i_cmp22_eia608_from_utf832_V4 = SE_i_cmp22_eia608_from_utf832_R_v_4;
    assign SE_i_cmp22_eia608_from_utf832_V5 = SE_i_cmp22_eia608_from_utf832_R_v_5;
    assign SE_i_cmp22_eia608_from_utf832_V6 = SE_i_cmp22_eia608_from_utf832_R_v_6;
    assign SE_i_cmp22_eia608_from_utf832_V7 = SE_i_cmp22_eia608_from_utf832_R_v_7;
    assign SE_i_cmp22_eia608_from_utf832_V8 = SE_i_cmp22_eia608_from_utf832_R_v_8;
    assign SE_i_cmp22_eia608_from_utf832_V9 = SE_i_cmp22_eia608_from_utf832_R_v_9;
    // Stall signal propagation
    assign SE_i_cmp22_eia608_from_utf832_s_tv_0 = SE_join_for_coalesced_delay_0_backStall & SE_i_cmp22_eia608_from_utf832_R_v_0;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_1 = SE_i_acl_253_eia608_from_utf835_backStall & SE_i_cmp22_eia608_from_utf832_R_v_1;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_2 = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_out & SE_i_cmp22_eia608_from_utf832_R_v_2;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_3 = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_out & SE_i_cmp22_eia608_from_utf832_R_v_3;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_4 = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_out & SE_i_cmp22_eia608_from_utf832_R_v_4;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_5 = SE_i_acl_1277_eia608_from_utf853_backStall & SE_i_cmp22_eia608_from_utf832_R_v_5;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_6 = SE_i_acl_1322_eia608_from_utf889_backStall & SE_i_cmp22_eia608_from_utf832_R_v_6;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_7 = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_out & SE_i_cmp22_eia608_from_utf832_R_v_7;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_8 = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_out & SE_i_cmp22_eia608_from_utf832_R_v_8;
    assign SE_i_cmp22_eia608_from_utf832_s_tv_9 = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_out & SE_i_cmp22_eia608_from_utf832_R_v_9;
    // Backward Enable generation
    assign SE_i_cmp22_eia608_from_utf832_or0 = SE_i_cmp22_eia608_from_utf832_s_tv_0;
    assign SE_i_cmp22_eia608_from_utf832_or1 = SE_i_cmp22_eia608_from_utf832_s_tv_1 | SE_i_cmp22_eia608_from_utf832_or0;
    assign SE_i_cmp22_eia608_from_utf832_or2 = SE_i_cmp22_eia608_from_utf832_s_tv_2 | SE_i_cmp22_eia608_from_utf832_or1;
    assign SE_i_cmp22_eia608_from_utf832_or3 = SE_i_cmp22_eia608_from_utf832_s_tv_3 | SE_i_cmp22_eia608_from_utf832_or2;
    assign SE_i_cmp22_eia608_from_utf832_or4 = SE_i_cmp22_eia608_from_utf832_s_tv_4 | SE_i_cmp22_eia608_from_utf832_or3;
    assign SE_i_cmp22_eia608_from_utf832_or5 = SE_i_cmp22_eia608_from_utf832_s_tv_5 | SE_i_cmp22_eia608_from_utf832_or4;
    assign SE_i_cmp22_eia608_from_utf832_or6 = SE_i_cmp22_eia608_from_utf832_s_tv_6 | SE_i_cmp22_eia608_from_utf832_or5;
    assign SE_i_cmp22_eia608_from_utf832_or7 = SE_i_cmp22_eia608_from_utf832_s_tv_7 | SE_i_cmp22_eia608_from_utf832_or6;
    assign SE_i_cmp22_eia608_from_utf832_or8 = SE_i_cmp22_eia608_from_utf832_s_tv_8 | SE_i_cmp22_eia608_from_utf832_or7;
    assign SE_i_cmp22_eia608_from_utf832_backEN = ~ (SE_i_cmp22_eia608_from_utf832_s_tv_9 | SE_i_cmp22_eia608_from_utf832_or8);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp22_eia608_from_utf832_v_s_0 = SE_i_cmp22_eia608_from_utf832_backEN & SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_V0;
    // Backward Stall generation
    assign SE_i_cmp22_eia608_from_utf832_backStall = ~ (SE_i_cmp22_eia608_from_utf832_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp22_eia608_from_utf832_R_v_0 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_1 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_2 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_3 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_4 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_5 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_6 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_7 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_8 <= 1'b0;
            SE_i_cmp22_eia608_from_utf832_R_v_9 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_0 <= SE_i_cmp22_eia608_from_utf832_R_v_0 & SE_i_cmp22_eia608_from_utf832_s_tv_0;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_0 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_1 <= SE_i_cmp22_eia608_from_utf832_R_v_1 & SE_i_cmp22_eia608_from_utf832_s_tv_1;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_1 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_2 <= SE_i_cmp22_eia608_from_utf832_R_v_2 & SE_i_cmp22_eia608_from_utf832_s_tv_2;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_2 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_3 <= SE_i_cmp22_eia608_from_utf832_R_v_3 & SE_i_cmp22_eia608_from_utf832_s_tv_3;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_3 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_4 <= SE_i_cmp22_eia608_from_utf832_R_v_4 & SE_i_cmp22_eia608_from_utf832_s_tv_4;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_4 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_5 <= SE_i_cmp22_eia608_from_utf832_R_v_5 & SE_i_cmp22_eia608_from_utf832_s_tv_5;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_5 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_6 <= SE_i_cmp22_eia608_from_utf832_R_v_6 & SE_i_cmp22_eia608_from_utf832_s_tv_6;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_6 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_7 <= SE_i_cmp22_eia608_from_utf832_R_v_7 & SE_i_cmp22_eia608_from_utf832_s_tv_7;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_7 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_8 <= SE_i_cmp22_eia608_from_utf832_R_v_8 & SE_i_cmp22_eia608_from_utf832_s_tv_8;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_8 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

            if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b0)
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_9 <= SE_i_cmp22_eia608_from_utf832_R_v_9 & SE_i_cmp22_eia608_from_utf832_s_tv_9;
            end
            else
            begin
                SE_i_cmp22_eia608_from_utf832_R_v_9 <= SE_i_cmp22_eia608_from_utf832_v_s_0;
            end

        end
    end

    // SE_i_acl_1313_eia608_from_utf888(STALLENABLE,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_1313_eia608_from_utf888_fromReg0 <= '0;
            SE_i_acl_1313_eia608_from_utf888_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_acl_1313_eia608_from_utf888_fromReg0 <= SE_i_acl_1313_eia608_from_utf888_toReg0;
            // Successor 1
            SE_i_acl_1313_eia608_from_utf888_fromReg1 <= SE_i_acl_1313_eia608_from_utf888_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_acl_1313_eia608_from_utf888_consumed0 = (~ (SE_i_acl_1322_eia608_from_utf889_backStall) & SE_i_acl_1313_eia608_from_utf888_wireValid) | SE_i_acl_1313_eia608_from_utf888_fromReg0;
    assign SE_i_acl_1313_eia608_from_utf888_consumed1 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_i_acl_1313_eia608_from_utf888_wireValid) | SE_i_acl_1313_eia608_from_utf888_fromReg1;
    // Consuming
    assign SE_i_acl_1313_eia608_from_utf888_StallValid = SE_i_acl_1313_eia608_from_utf888_backStall & SE_i_acl_1313_eia608_from_utf888_wireValid;
    assign SE_i_acl_1313_eia608_from_utf888_toReg0 = SE_i_acl_1313_eia608_from_utf888_StallValid & SE_i_acl_1313_eia608_from_utf888_consumed0;
    assign SE_i_acl_1313_eia608_from_utf888_toReg1 = SE_i_acl_1313_eia608_from_utf888_StallValid & SE_i_acl_1313_eia608_from_utf888_consumed1;
    // Backward Stall generation
    assign SE_i_acl_1313_eia608_from_utf888_or0 = SE_i_acl_1313_eia608_from_utf888_consumed0;
    assign SE_i_acl_1313_eia608_from_utf888_wireStall = ~ (SE_i_acl_1313_eia608_from_utf888_consumed1 & SE_i_acl_1313_eia608_from_utf888_or0);
    assign SE_i_acl_1313_eia608_from_utf888_backStall = SE_i_acl_1313_eia608_from_utf888_wireStall;
    // Valid signal propagation
    assign SE_i_acl_1313_eia608_from_utf888_V0 = SE_i_acl_1313_eia608_from_utf888_wireValid & ~ (SE_i_acl_1313_eia608_from_utf888_fromReg0);
    assign SE_i_acl_1313_eia608_from_utf888_V1 = SE_i_acl_1313_eia608_from_utf888_wireValid & ~ (SE_i_acl_1313_eia608_from_utf888_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_acl_1313_eia608_from_utf888_and0 = SE_i_acl_1300_eia608_from_utf879_V1;
    assign SE_i_acl_1313_eia608_from_utf888_wireValid = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V2 & SE_i_acl_1313_eia608_from_utf888_and0;

    // SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo(STALLENABLE,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg0 <= '0;
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg1 <= '0;
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg2 <= '0;
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg3 <= '0;
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg0 <= SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg0;
            // Successor 1
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg1 <= SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg1;
            // Successor 2
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg2 <= SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg2;
            // Successor 3
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg3 <= SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg3;
            // Successor 4
            SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg4 <= SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed0 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid) | SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg0;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed1 = (~ (SE_i_acl_1277_eia608_from_utf853_backStall) & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid) | SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg1;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed2 = (~ (SE_i_acl_1313_eia608_from_utf888_backStall) & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid) | SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg2;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed3 = (~ (SE_i_acl_1322_eia608_from_utf889_backStall) & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid) | SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg3;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed4 = (~ (redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_out) & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid) | SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg4;
    // Consuming
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_backStall & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg0 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed0;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg1 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed1;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg2 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed2;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg3 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed3;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_toReg4 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_StallValid & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed4;
    // Backward Stall generation
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or0 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed0;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or1 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed1 & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or0;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or2 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed2 & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or1;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or3 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed3 & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or2;
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireStall = ~ (SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_consumed4 & SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_or3);
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_backStall = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V0 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid & ~ (SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg0);
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V1 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid & ~ (SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg1);
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V2 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid & ~ (SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg2);
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V3 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid & ~ (SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg3);
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V4 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid & ~ (SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_wireValid = redist10_i_cmp_eia608_from_utf84_q_64_fifo_valid_out;

    // SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo(STALLENABLE,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg0 <= '0;
            SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg0 <= SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_toReg0;
            // Successor 1
            SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg1 <= SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed0 = (~ (SE_i_acl_1300_eia608_from_utf879_backStall) & SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid) | SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg0;
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed1 = (~ (redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_out) & SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid) | SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_StallValid = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_backStall & SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid;
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_toReg0 = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_StallValid & SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed0;
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_toReg1 = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_StallValid & SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_or0 = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed0;
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireStall = ~ (SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_consumed1 & SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_or0);
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_backStall = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_V0 = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid & ~ (SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg0);
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_V1 = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid & ~ (SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_wireValid = redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_out;

    // SE_i_acl_1300_eia608_from_utf879(STALLENABLE,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_acl_1300_eia608_from_utf879_fromReg0 <= '0;
            SE_i_acl_1300_eia608_from_utf879_fromReg1 <= '0;
            SE_i_acl_1300_eia608_from_utf879_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_acl_1300_eia608_from_utf879_fromReg0 <= SE_i_acl_1300_eia608_from_utf879_toReg0;
            // Successor 1
            SE_i_acl_1300_eia608_from_utf879_fromReg1 <= SE_i_acl_1300_eia608_from_utf879_toReg1;
            // Successor 2
            SE_i_acl_1300_eia608_from_utf879_fromReg2 <= SE_i_acl_1300_eia608_from_utf879_toReg2;
        end
    end
    // Input Stall processing
    assign SE_i_acl_1300_eia608_from_utf879_consumed0 = (~ (SE_join_for_coalesced_delay_0_backStall) & SE_i_acl_1300_eia608_from_utf879_wireValid) | SE_i_acl_1300_eia608_from_utf879_fromReg0;
    assign SE_i_acl_1300_eia608_from_utf879_consumed1 = (~ (SE_i_acl_1313_eia608_from_utf888_backStall) & SE_i_acl_1300_eia608_from_utf879_wireValid) | SE_i_acl_1300_eia608_from_utf879_fromReg1;
    assign SE_i_acl_1300_eia608_from_utf879_consumed2 = (~ (SE_i_acl_1322_eia608_from_utf889_backStall) & SE_i_acl_1300_eia608_from_utf879_wireValid) | SE_i_acl_1300_eia608_from_utf879_fromReg2;
    // Consuming
    assign SE_i_acl_1300_eia608_from_utf879_StallValid = SE_i_acl_1300_eia608_from_utf879_backStall & SE_i_acl_1300_eia608_from_utf879_wireValid;
    assign SE_i_acl_1300_eia608_from_utf879_toReg0 = SE_i_acl_1300_eia608_from_utf879_StallValid & SE_i_acl_1300_eia608_from_utf879_consumed0;
    assign SE_i_acl_1300_eia608_from_utf879_toReg1 = SE_i_acl_1300_eia608_from_utf879_StallValid & SE_i_acl_1300_eia608_from_utf879_consumed1;
    assign SE_i_acl_1300_eia608_from_utf879_toReg2 = SE_i_acl_1300_eia608_from_utf879_StallValid & SE_i_acl_1300_eia608_from_utf879_consumed2;
    // Backward Stall generation
    assign SE_i_acl_1300_eia608_from_utf879_or0 = SE_i_acl_1300_eia608_from_utf879_consumed0;
    assign SE_i_acl_1300_eia608_from_utf879_or1 = SE_i_acl_1300_eia608_from_utf879_consumed1 & SE_i_acl_1300_eia608_from_utf879_or0;
    assign SE_i_acl_1300_eia608_from_utf879_wireStall = ~ (SE_i_acl_1300_eia608_from_utf879_consumed2 & SE_i_acl_1300_eia608_from_utf879_or1);
    assign SE_i_acl_1300_eia608_from_utf879_backStall = SE_i_acl_1300_eia608_from_utf879_wireStall;
    // Valid signal propagation
    assign SE_i_acl_1300_eia608_from_utf879_V0 = SE_i_acl_1300_eia608_from_utf879_wireValid & ~ (SE_i_acl_1300_eia608_from_utf879_fromReg0);
    assign SE_i_acl_1300_eia608_from_utf879_V1 = SE_i_acl_1300_eia608_from_utf879_wireValid & ~ (SE_i_acl_1300_eia608_from_utf879_fromReg1);
    assign SE_i_acl_1300_eia608_from_utf879_V2 = SE_i_acl_1300_eia608_from_utf879_wireValid & ~ (SE_i_acl_1300_eia608_from_utf879_fromReg2);
    // Computing multiple Valid(s)
    assign SE_i_acl_1300_eia608_from_utf879_and0 = SE_out_i_llvm_fpga_mem_lm12964_eia608_from_utf856_V1;
    assign SE_i_acl_1300_eia608_from_utf879_wireValid = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_V0 & SE_i_acl_1300_eia608_from_utf879_and0;

    // SE_i_acl_1322_eia608_from_utf889(STALLENABLE,339)
    // Valid signal propagation
    assign SE_i_acl_1322_eia608_from_utf889_V0 = SE_i_acl_1322_eia608_from_utf889_wireValid;
    // Backward Stall generation
    assign SE_i_acl_1322_eia608_from_utf889_backStall = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_stall | ~ (SE_i_acl_1322_eia608_from_utf889_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_acl_1322_eia608_from_utf889_and0 = SE_i_acl_1300_eia608_from_utf879_V2;
    assign SE_i_acl_1322_eia608_from_utf889_and1 = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V3 & SE_i_acl_1322_eia608_from_utf889_and0;
    assign SE_i_acl_1322_eia608_from_utf889_and2 = SE_i_acl_1313_eia608_from_utf888_V0 & SE_i_acl_1322_eia608_from_utf889_and1;
    assign SE_i_acl_1322_eia608_from_utf889_and3 = SE_i_cmp22_eia608_from_utf832_V6 & SE_i_acl_1322_eia608_from_utf889_and2;
    assign SE_i_acl_1322_eia608_from_utf889_wireValid = SE_out_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_V1 & SE_i_acl_1322_eia608_from_utf889_and3;

    // c_i8_108129_recast_x(CONSTANT,155)
    assign c_i8_108129_recast_x_q = $unsigned(8'b10010100);

    // bubble_join_i_llvm_fpga_mem_lm12964_eia608_from_utf856(BITJOIN,250)
    assign bubble_join_i_llvm_fpga_mem_lm12964_eia608_from_utf856_q = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856(BITSELECT,251)
    assign bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm12964_eia608_from_utf856_q[7:0]);

    // i_switchleaf170_eia608_from_utf870(LOGICAL,104)@65
    assign i_switchleaf170_eia608_from_utf870_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b == c_i8_108129_recast_x_q ? 1'b1 : 1'b0);

    // bubble_join_redist13_i_cmp80_eia608_from_utf830_q_32_fifo(BITJOIN,292)
    assign bubble_join_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_q = redist13_i_cmp80_eia608_from_utf830_q_32_fifo_data_out;

    // bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo(BITSELECT,293)
    assign bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b = $unsigned(bubble_join_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_q[0:0]);

    // i_acl_1318_eia608_from_utf882(LOGICAL,36)@65
    assign i_acl_1318_eia608_from_utf882_q = bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b & i_switchleaf170_eia608_from_utf870_q;

    // i_acl_1322_eia608_from_utf889(LOGICAL,37)@65
    assign i_acl_1322_eia608_from_utf889_q = i_acl_1318_eia608_from_utf882_q & i_cmp_not_eia608_from_utf87_q;

    // c_i8_124130_recast_x(CONSTANT,158)
    assign c_i8_124130_recast_x_q = $unsigned(8'b10000100);

    // i_switchleaf166_eia608_from_utf868(LOGICAL,103)@65
    assign i_switchleaf166_eia608_from_utf868_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b == c_i8_124130_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1309_eia608_from_utf880(LOGICAL,34)@65
    assign i_acl_1309_eia608_from_utf880_q = bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b & i_switchleaf166_eia608_from_utf868_q;

    // i_acl_1313_eia608_from_utf888(LOGICAL,35)@65
    assign i_acl_1313_eia608_from_utf888_q = i_acl_1309_eia608_from_utf880_q & i_cmp_not_eia608_from_utf87_q;

    // i_reduction_eia608_from_utf8_1_eia608_from_utf895(LOGICAL,97)@65
    assign i_reduction_eia608_from_utf8_1_eia608_from_utf895_q = i_acl_1313_eia608_from_utf888_q | i_acl_1322_eia608_from_utf889_q;

    // c_i8_128132_recast_x(CONSTANT,160)
    assign c_i8_128132_recast_x_q = $unsigned(8'b10000000);

    // i_switchleaf164_eia608_from_utf866(LOGICAL,102)@65
    assign i_switchleaf164_eia608_from_utf866_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b == c_i8_128132_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1300_eia608_from_utf879(LOGICAL,32)@65
    assign i_acl_1300_eia608_from_utf879_q = bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b & i_switchleaf164_eia608_from_utf866_q;

    // i_acl_1304_eia608_from_utf887(LOGICAL,33)@65
    assign i_acl_1304_eia608_from_utf887_q = i_acl_1300_eia608_from_utf879_q & i_cmp_not_eia608_from_utf87_q;

    // c_i8_60118(CONSTANT,13)
    assign c_i8_60118_q = $unsigned(8'b11000100);

    // i_cmp68_eia608_from_utf816(COMPARE,79)@64 + 1
    assign i_cmp68_eia608_from_utf816_a = {2'b00, bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_b};
    assign i_cmp68_eia608_from_utf816_b = {2'b00, c_i8_60118_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp68_eia608_from_utf816_o <= 10'b0;
        end
        else if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b1)
        begin
            i_cmp68_eia608_from_utf816_o <= $unsigned(i_cmp68_eia608_from_utf816_a) - $unsigned(i_cmp68_eia608_from_utf816_b);
        end
    end
    assign i_cmp68_eia608_from_utf816_c[0] = i_cmp68_eia608_from_utf816_o[9];

    // c_i8_62124(CONSTANT,14)
    assign c_i8_62124_q = $unsigned(8'b11000010);

    // i_cmp71_eia608_from_utf829(COMPARE,80)@64 + 1
    assign i_cmp71_eia608_from_utf829_a = {2'b00, bubble_select_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_b};
    assign i_cmp71_eia608_from_utf829_b = {2'b00, c_i8_62124_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp71_eia608_from_utf829_o <= 10'b0;
        end
        else if (SE_i_cmp22_eia608_from_utf832_backEN == 1'b1)
        begin
            i_cmp71_eia608_from_utf829_o <= $unsigned(i_cmp71_eia608_from_utf829_a) - $unsigned(i_cmp71_eia608_from_utf829_b);
        end
    end
    assign i_cmp71_eia608_from_utf829_c[0] = i_cmp71_eia608_from_utf829_o[9];

    // i_acl_1286_eia608_from_utf842(LOGICAL,30)@65
    assign i_acl_1286_eia608_from_utf842_q = i_cmp71_eia608_from_utf829_c ^ i_cmp68_eia608_from_utf816_c;

    // i_acl_1289_eia608_from_utf850(LOGICAL,31)@65
    assign i_acl_1289_eia608_from_utf850_q = i_acl_1286_eia608_from_utf842_q & i_cmp_not_eia608_from_utf87_q;

    // i_reduction_eia608_from_utf8_0_eia608_from_utf894(LOGICAL,96)@65
    assign i_reduction_eia608_from_utf8_0_eia608_from_utf894_q = i_acl_1289_eia608_from_utf850_q | i_acl_1304_eia608_from_utf887_q;

    // i_reduction_eia608_from_utf8_3_eia608_from_utf899(LOGICAL,99)@65
    assign i_reduction_eia608_from_utf8_3_eia608_from_utf899_q = i_reduction_eia608_from_utf8_0_eia608_from_utf894_q | i_reduction_eia608_from_utf8_1_eia608_from_utf895_q;

    // c_i8_103133_recast_x(CONSTANT,153)
    assign c_i8_103133_recast_x_q = $unsigned(8'b10011001);

    // i_switchleaf174_eia608_from_utf876(LOGICAL,106)@65
    assign i_switchleaf174_eia608_from_utf876_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b == c_i8_103133_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1338_eia608_from_utf884(LOGICAL,40)@65
    assign i_acl_1338_eia608_from_utf884_q = bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b & i_switchleaf174_eia608_from_utf876_q;

    // i_not_eia608_from_utf891(LOGICAL,91)@65
    assign i_not_eia608_from_utf891_q = i_acl_1338_eia608_from_utf884_q & i_cmp_not_eia608_from_utf87_q;

    // c_i8_106131_recast_x(CONSTANT,154)
    assign c_i8_106131_recast_x_q = $unsigned(8'b10010110);

    // i_switchleaf172_eia608_from_utf874(LOGICAL,105)@65
    assign i_switchleaf172_eia608_from_utf874_q = $unsigned(bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b == c_i8_106131_recast_x_q ? 1'b1 : 1'b0);

    // i_acl_1328_eia608_from_utf883(LOGICAL,38)@65
    assign i_acl_1328_eia608_from_utf883_q = bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b & i_switchleaf172_eia608_from_utf874_q;

    // i_acl_1332_eia608_from_utf890(LOGICAL,39)@65
    assign i_acl_1332_eia608_from_utf890_q = i_acl_1328_eia608_from_utf883_q & i_cmp_not_eia608_from_utf87_q;

    // i_reduction_eia608_from_utf8_2_eia608_from_utf896(LOGICAL,98)@65
    assign i_reduction_eia608_from_utf8_2_eia608_from_utf896_q = i_acl_1332_eia608_from_utf890_q | i_not_eia608_from_utf891_q;

    // i_reduction_eia608_from_utf8_4_eia608_from_utf8101(LOGICAL,100)@65
    assign i_reduction_eia608_from_utf8_4_eia608_from_utf8101_q = i_reduction_eia608_from_utf8_2_eia608_from_utf896_q | i_reduction_eia608_from_utf8_3_eia608_from_utf899_q;

    // i_unnamed_eia608_from_utf8103(LOGICAL,107)@65
    assign i_unnamed_eia608_from_utf8103_q = i_reduction_eia608_from_utf8_4_eia608_from_utf8101_q ^ VCC_q;

    // i_acl_1355_v_v_eia608_from_utf855_vt_const_63(CONSTANT,42)
    assign i_acl_1355_v_v_eia608_from_utf855_vt_const_63_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // c_i64_2127(CONSTANT,5)
    assign c_i64_2127_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // i_acl_1355_v_v_eia608_from_utf855(MUX,41)@65
    assign i_acl_1355_v_v_eia608_from_utf855_s = i_acl_1289_eia608_from_utf850_q;
    always @(i_acl_1355_v_v_eia608_from_utf855_s or c_i64_2127_q or c_i64_1128_q)
    begin
        unique case (i_acl_1355_v_v_eia608_from_utf855_s)
            1'b0 : i_acl_1355_v_v_eia608_from_utf855_q = c_i64_2127_q;
            1'b1 : i_acl_1355_v_v_eia608_from_utf855_q = c_i64_1128_q;
            default : i_acl_1355_v_v_eia608_from_utf855_q = 64'b0;
        endcase
    end

    // i_acl_1355_v_v_eia608_from_utf855_vt_select_1(BITSELECT,44)@65
    assign i_acl_1355_v_v_eia608_from_utf855_vt_select_1_b = i_acl_1355_v_v_eia608_from_utf855_q[1:0];

    // i_acl_1355_v_v_eia608_from_utf855_vt_join(BITJOIN,43)@65
    assign i_acl_1355_v_v_eia608_from_utf855_vt_join_q = {i_acl_1355_v_v_eia608_from_utf855_vt_const_63_q, i_acl_1355_v_v_eia608_from_utf855_vt_select_1_b};

    // i_acl_1355_v_eia608_from_utf80_add_x(ADD,182)@65
    assign i_acl_1355_v_eia608_from_utf80_add_x_a = {1'b0, bubble_select_redist1_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_64_fifo_b};
    assign i_acl_1355_v_eia608_from_utf80_add_x_b = {1'b0, i_acl_1355_v_v_eia608_from_utf855_vt_join_q};
    assign i_acl_1355_v_eia608_from_utf80_add_x_o = $unsigned(i_acl_1355_v_eia608_from_utf80_add_x_a) + $unsigned(i_acl_1355_v_eia608_from_utf80_add_x_b);
    assign i_acl_1355_v_eia608_from_utf80_add_x_q = i_acl_1355_v_eia608_from_utf80_add_x_o[64:0];

    // i_acl_1355_v_eia608_from_utf80_trunc_sel_x(BITSELECT,184)@65
    assign i_acl_1355_v_eia608_from_utf80_trunc_sel_x_b = i_acl_1355_v_eia608_from_utf80_add_x_q[63:0];

    // i_llvm_fpga_mem_ml5_eia608_from_utf8104(BLACKBOX,90)@65
    // in in_i_stall@20000000
    // out out_ml5_eia608_from_utf8_avm_address@20000000
    // out out_ml5_eia608_from_utf8_avm_burstcount@20000000
    // out out_ml5_eia608_from_utf8_avm_byteenable@20000000
    // out out_ml5_eia608_from_utf8_avm_enable@20000000
    // out out_ml5_eia608_from_utf8_avm_read@20000000
    // out out_ml5_eia608_from_utf8_avm_write@20000000
    // out out_ml5_eia608_from_utf8_avm_writedata@20000000
    // out out_o_readdata@97
    // out out_o_stall@20000000
    // out out_o_valid@97
    eia608_from_utf8_i_llvm_fpga_mem_ml5_0 thei_llvm_fpga_mem_ml5_eia608_from_utf8104 (
        .in_flush(in_flush),
        .in_i_address(i_acl_1355_v_eia608_from_utf80_trunc_sel_x_b),
        .in_i_predicate(i_unnamed_eia608_from_utf8103_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_backStall),
        .in_i_valid(SE_i_acl_1322_eia608_from_utf889_V0),
        .in_ml5_eia608_from_utf8_avm_readdata(in_ml5_eia608_from_utf8_avm_readdata),
        .in_ml5_eia608_from_utf8_avm_readdatavalid(in_ml5_eia608_from_utf8_avm_readdatavalid),
        .in_ml5_eia608_from_utf8_avm_waitrequest(in_ml5_eia608_from_utf8_avm_waitrequest),
        .in_ml5_eia608_from_utf8_avm_writeack(in_ml5_eia608_from_utf8_avm_writeack),
        .out_ml5_eia608_from_utf8_avm_address(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_address),
        .out_ml5_eia608_from_utf8_avm_burstcount(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_burstcount),
        .out_ml5_eia608_from_utf8_avm_byteenable(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_byteenable),
        .out_ml5_eia608_from_utf8_avm_enable(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_enable),
        .out_ml5_eia608_from_utf8_avm_read(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_read),
        .out_ml5_eia608_from_utf8_avm_write(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_write),
        .out_ml5_eia608_from_utf8_avm_writedata(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_ml5_eia608_from_utf8104(BITJOIN,256)
    assign bubble_join_i_llvm_fpga_mem_ml5_eia608_from_utf8104_q = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_ml5_eia608_from_utf8104(BITSELECT,257)
    assign bubble_select_i_llvm_fpga_mem_ml5_eia608_from_utf8104_b = $unsigned(bubble_join_i_llvm_fpga_mem_ml5_eia608_from_utf8104_q[7:0]);

    // bubble_join_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo(BITJOIN,277)
    assign bubble_join_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_q = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_data_out;

    // bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo(BITSELECT,278)
    assign bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b = $unsigned(bubble_join_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_q[7:0]);

    // i_cmp54_eia608_from_utf833(LOGICAL,76)@97
    assign i_cmp54_eia608_from_utf833_q = $unsigned(bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b == c_i8_123122_q ? 1'b1 : 1'b0);

    // bubble_join_i_llvm_fpga_mem_lm12843_eia608_from_utf898(BITJOIN,246)
    assign bubble_join_i_llvm_fpga_mem_lm12843_eia608_from_utf898_q = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm12843_eia608_from_utf898(BITSELECT,247)
    assign bubble_select_i_llvm_fpga_mem_lm12843_eia608_from_utf898_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm12843_eia608_from_utf898_q[31:0]);

    // i_cmp59_eia608_from_utf826(LOGICAL,77)@97
    assign i_cmp59_eia608_from_utf826_q = $unsigned(bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b == c_i8_125117_q ? 1'b1 : 1'b0);

    // c_i8_127123(CONSTANT,8)
    assign c_i8_127123_q = $unsigned(8'b01111111);

    // i_cmp63_eia608_from_utf828(COMPARE,78)@97
    assign i_cmp63_eia608_from_utf828_a = {2'b00, bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b};
    assign i_cmp63_eia608_from_utf828_b = {2'b00, c_i8_127123_q};
    assign i_cmp63_eia608_from_utf828_o = $unsigned(i_cmp63_eia608_from_utf828_a) - $unsigned(i_cmp63_eia608_from_utf828_b);
    assign i_cmp63_eia608_from_utf828_c[0] = i_cmp63_eia608_from_utf828_o[9];

    // i_cmp35_eia608_from_utf822(LOGICAL,70)@97
    assign i_cmp35_eia608_from_utf822_q = $unsigned(bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b == c_i8_94116_q ? 1'b1 : 1'b0);

    // c_i8_96121(CONSTANT,16)
    assign c_i8_96121_q = $unsigned(8'b01100000);

    // i_cmp39_eia608_from_utf824(COMPARE,71)@97
    assign i_cmp39_eia608_from_utf824_a = {2'b00, bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b};
    assign i_cmp39_eia608_from_utf824_b = {2'b00, c_i8_96121_q};
    assign i_cmp39_eia608_from_utf824_o = $unsigned(i_cmp39_eia608_from_utf824_a) - $unsigned(i_cmp39_eia608_from_utf824_b);
    assign i_cmp39_eia608_from_utf824_c[0] = i_cmp39_eia608_from_utf824_o[9];

    // SE_out_i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108(STALLENABLE,388)
    // Backward Stall generation
    assign SE_out_i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_wireValid = i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_o_valid;

    // bubble_join_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x(BITJOIN,265)
    assign bubble_join_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_q = i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x(BITSELECT,266)
    assign bubble_select_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_q[31:0]);

    // i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108(BLACKBOX,86)@114
    // in in_i_stall@20000000
    // out out_iowr_bl_return_eia608_from_utf8_o_fifodata@20000000
    // out out_iowr_bl_return_eia608_from_utf8_o_fifovalid@20000000
    // out out_o_stall@20000000
    eia608_from_utf8_i_iowr_bl_return_unnameA000000Z83_eia608_from_utf80 thei_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108 (
        .in_i_data(bubble_select_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_b),
        .in_i_stall(SE_out_i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_backStall),
        .in_i_valid(SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_V0),
        .in_iowr_bl_return_eia608_from_utf8_i_fifoready(in_iowr_bl_return_eia608_from_utf8_i_fifoready),
        .out_iowr_bl_return_eia608_from_utf8_o_fifodata(i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_iowr_bl_return_eia608_from_utf8_o_fifodata),
        .out_iowr_bl_return_eia608_from_utf8_o_fifovalid(i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_iowr_bl_return_eia608_from_utf8_o_fifovalid),
        .out_o_ack(),
        .out_o_stall(i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_o_stall),
        .out_o_valid(i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x(STALLENABLE,427)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_backStall = i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_o_stall | ~ (SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_wireValid = i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_o_valid;

    // i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x(BLACKBOX,191)@97
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@114
    // out out_c1_exit_0_tpl@114
    // out out_c1_exit_1_tpl@114
    eia608_from_utf8_i_sfc_s_c1_in_wt_entry_A000000Z_eia608_from_utf8106 thei_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_c1_eni29_0_tpl(GND_q),
        .in_c1_eni29_1_tpl(i_cmp39_eia608_from_utf824_c),
        .in_c1_eni29_2_tpl(i_cmp35_eia608_from_utf822_q),
        .in_c1_eni29_3_tpl(i_cmp63_eia608_from_utf828_c),
        .in_c1_eni29_4_tpl(i_cmp59_eia608_from_utf826_q),
        .in_c1_eni29_5_tpl(bubble_select_i_llvm_fpga_mem_lm12843_eia608_from_utf898_b),
        .in_c1_eni29_6_tpl(i_cmp54_eia608_from_utf833_q),
        .in_c1_eni29_7_tpl(bubble_select_redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_b),
        .in_c1_eni29_8_tpl(bubble_select_i_llvm_fpga_mem_ml5_eia608_from_utf8104_b),
        .in_c1_eni29_9_tpl(sel_for_coalesced_delay_0_h),
        .in_c1_eni29_10_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni29_11_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni29_12_tpl(bubble_select_redist14_i_cmp80_eia608_from_utf830_q_64_fifo_b),
        .in_c1_eni29_13_tpl(bubble_select_redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_b),
        .in_c1_eni29_14_tpl(i_acl_250_eia608_from_utf848_q),
        .in_c1_eni29_15_tpl(i_acl_254_eia608_from_utf847_q),
        .in_c1_eni29_16_tpl(i_acl_259_eia608_from_utf840_q),
        .in_c1_eni29_17_tpl(i_acl_265_eia608_from_utf854_q),
        .in_c1_eni29_18_tpl(i_acl_270_eia608_from_utf838_q),
        .in_c1_eni29_19_tpl(bubble_select_redist15_i_cmp71_eia608_from_utf829_c_33_fifo_b),
        .in_c1_eni29_20_tpl(bubble_select_redist16_i_cmp68_eia608_from_utf816_c_33_fifo_b),
        .in_c1_eni29_21_tpl(i_acl_327_eia608_from_utf8102_q),
        .in_c1_eni29_22_tpl(sel_for_coalesced_delay_0_f),
        .in_c1_eni29_23_tpl(i_reduction_eia608_from_utf8_9_eia608_from_utf857_q),
        .in_c1_eni29_24_tpl(i_acl_351_eia608_from_utf849_q),
        .in_c1_eni29_25_tpl(sel_for_coalesced_delay_0_i),
        .in_c1_eni29_26_tpl(sel_for_coalesced_delay_0_g),
        .in_c1_eni29_27_tpl(sel_for_coalesced_delay_0_j),
        .in_c1_eni29_28_tpl(sel_for_coalesced_delay_0_e),
        .in_c1_eni29_29_tpl(sel_for_coalesced_delay_0_d),
        .out_o_stall(i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_o_valid),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_c1_exit_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg(STALLFIFO,581)
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_in = SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_V0;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_in = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_backStall;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_out[0] = bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg (
        .valid_in(bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1(STALLENABLE,500)
    // Valid signal propagation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_V0 = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_and0 = bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_valid_out;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_and1 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_and0;
    assign SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_wireValid = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_V0 & SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_and1;

    // SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104(STALLENABLE,396)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg0 <= SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg1 <= SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed0 = (~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_backStall) & SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid) | SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg0;
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed1 = (~ (SE_out_coalesced_delay_0_fifo_backStall) & SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid) | SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_StallValid = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_backStall & SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid;
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_toReg0 = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_StallValid & SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed0;
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_toReg1 = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_StallValid & SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_or0 = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed0;
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireStall = ~ (SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_consumed1 & SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_or0);
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_backStall = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_V0 = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid & ~ (SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg0);
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_V1 = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid & ~ (SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_wireValid = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_o_valid;

    // SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898(STALLENABLE,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg0 <= SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg1 <= SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed0 = (~ (SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_backStall) & SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid) | SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed1 = (~ (SE_out_coalesced_delay_0_fifo_backStall) & SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid) | SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_StallValid = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall & SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_toReg0 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_StallValid & SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_toReg1 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_StallValid & SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_or0 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_consumed1 & SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_or0);
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_backStall = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V0 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V1 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_wireValid = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_o_valid;

    // redist14_i_cmp80_eia608_from_utf830_q_64_fifo(STALLFIFO,233)
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_in = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_V1;
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_data_in = bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b;
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_in_bitsignaltemp = redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_in[0];
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_in_bitsignaltemp = redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_in[0];
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_out[0] = redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_out_bitsignaltemp;
    assign redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_out[0] = redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_cmp80_eia608_from_utf830_q_64_fifo (
        .valid_in(redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_b),
        .valid_out(redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_cmp80_eia608_from_utf830_q_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_cmp80_eia608_from_utf830_q_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_cmp71_eia608_from_utf829_c_33_fifo(STALLFIFO,234)
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_in = SE_i_cmp22_eia608_from_utf832_V3;
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_data_in = i_cmp71_eia608_from_utf829_c;
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_in_bitsignaltemp = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_in[0];
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_in_bitsignaltemp = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_in[0];
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_out[0] = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_out_bitsignaltemp;
    assign redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_out[0] = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist15_i_cmp71_eia608_from_utf829_c_33_fifo (
        .valid_in(redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp71_eia608_from_utf829_c),
        .valid_out(redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_cmp71_eia608_from_utf829_c_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_cmp71_eia608_from_utf829_c_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_cmp68_eia608_from_utf816_c_33_fifo(STALLFIFO,235)
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_in = SE_i_cmp22_eia608_from_utf832_V4;
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_data_in = i_cmp68_eia608_from_utf816_c;
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_in_bitsignaltemp = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_in[0];
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_in_bitsignaltemp = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_in[0];
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_out[0] = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_out_bitsignaltemp;
    assign redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_out[0] = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_i_cmp68_eia608_from_utf816_c_33_fifo (
        .valid_in(redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp68_eia608_from_utf816_c),
        .valid_out(redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_cmp68_eia608_from_utf816_c_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_cmp68_eia608_from_utf816_c_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_cmp50_eia608_from_utf825_c_32_fifo(STALLFIFO,236)
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_in = SE_i_cmp22_eia608_from_utf832_V7;
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_data_in = i_cmp50_eia608_from_utf825_c;
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_in_bitsignaltemp = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_in[0];
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_in_bitsignaltemp = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_in[0];
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_out[0] = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_out_bitsignaltemp;
    assign redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_out[0] = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_cmp50_eia608_from_utf825_c_32_fifo (
        .valid_in(redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp50_eia608_from_utf825_c),
        .valid_out(redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_cmp50_eia608_from_utf825_c_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_cmp50_eia608_from_utf825_c_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo(STALLFIFO,227)
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_in = SE_i_cmp22_eia608_from_utf832_V2;
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_data_in = redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q;
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_in_bitsignaltemp = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_in[0];
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_in_bitsignaltemp = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_in[0];
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_out[0] = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_out_bitsignaltemp;
    assign redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_out[0] = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(8),
        .IMPL("ram")
    ) theredist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo (
        .valid_in(redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_32_0_q),
        .valid_out(redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_cmp30_eia608_from_utf820_q_32_fifo(STALLFIFO,237)
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_in = SE_i_cmp22_eia608_from_utf832_V8;
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_data_in = i_cmp30_eia608_from_utf820_q;
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_in_bitsignaltemp = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_in[0];
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_in_bitsignaltemp = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_in[0];
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_out[0] = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_out_bitsignaltemp;
    assign redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_out[0] = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist18_i_cmp30_eia608_from_utf820_q_32_fifo (
        .valid_in(redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp30_eia608_from_utf820_q),
        .valid_out(redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist18_i_cmp30_eia608_from_utf820_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist18_i_cmp30_eia608_from_utf820_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_cmp18_eia608_from_utf818_q_32_fifo(STALLFIFO,238)
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_in = SE_i_cmp22_eia608_from_utf832_V9;
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_data_in = i_cmp18_eia608_from_utf818_q;
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_in_bitsignaltemp = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_in[0];
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_in_bitsignaltemp = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_in[0];
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_out[0] = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_out_bitsignaltemp;
    assign redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_out[0] = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_cmp18_eia608_from_utf818_q_32_fifo (
        .valid_in(redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp18_eia608_from_utf818_q),
        .valid_out(redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_cmp18_eia608_from_utf818_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_cmp18_eia608_from_utf818_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_pivot168_eia608_from_utf862(COMPARE,92)@65
    assign i_pivot168_eia608_from_utf862_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b[7]}}, bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b});
    assign i_pivot168_eia608_from_utf862_b = $unsigned({{2{c_i8_124130_recast_x_q[7]}}, c_i8_124130_recast_x_q});
    assign i_pivot168_eia608_from_utf862_o = $unsigned($signed(i_pivot168_eia608_from_utf862_a) - $signed(i_pivot168_eia608_from_utf862_b));
    assign i_pivot168_eia608_from_utf862_c[0] = i_pivot168_eia608_from_utf862_o[9];

    // i_acl_323_v_eia608_from_utf881(MUX,53)@65
    assign i_acl_323_v_eia608_from_utf881_s = i_pivot168_eia608_from_utf862_c;
    always @(i_acl_323_v_eia608_from_utf881_s or i_switchleaf166_eia608_from_utf868_q or i_switchleaf164_eia608_from_utf866_q)
    begin
        unique case (i_acl_323_v_eia608_from_utf881_s)
            1'b0 : i_acl_323_v_eia608_from_utf881_q = i_switchleaf166_eia608_from_utf868_q;
            1'b1 : i_acl_323_v_eia608_from_utf881_q = i_switchleaf164_eia608_from_utf866_q;
            default : i_acl_323_v_eia608_from_utf881_q = 1'b0;
        endcase
    end

    // i_pivot176_eia608_from_utf872(COMPARE,93)@65
    assign i_pivot176_eia608_from_utf872_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b[7]}}, bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b});
    assign i_pivot176_eia608_from_utf872_b = $unsigned({{2{c_i8_103133_recast_x_q[7]}}, c_i8_103133_recast_x_q});
    assign i_pivot176_eia608_from_utf872_o = $unsigned($signed(i_pivot176_eia608_from_utf872_a) - $signed(i_pivot176_eia608_from_utf872_b));
    assign i_pivot176_eia608_from_utf872_c[0] = i_pivot176_eia608_from_utf872_o[9];

    // i_acl_324_v_eia608_from_utf885(MUX,54)@65
    assign i_acl_324_v_eia608_from_utf885_s = i_pivot176_eia608_from_utf872_c;
    always @(i_acl_324_v_eia608_from_utf885_s or i_switchleaf174_eia608_from_utf876_q or i_switchleaf172_eia608_from_utf874_q)
    begin
        unique case (i_acl_324_v_eia608_from_utf885_s)
            1'b0 : i_acl_324_v_eia608_from_utf885_q = i_switchleaf174_eia608_from_utf876_q;
            1'b1 : i_acl_324_v_eia608_from_utf885_q = i_switchleaf172_eia608_from_utf874_q;
            default : i_acl_324_v_eia608_from_utf885_q = 1'b0;
        endcase
    end

    // i_pivot178_eia608_from_utf864(COMPARE,94)@65
    assign i_pivot178_eia608_from_utf864_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b[7]}}, bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b});
    assign i_pivot178_eia608_from_utf864_b = $unsigned({{2{c_i8_106131_recast_x_q[7]}}, c_i8_106131_recast_x_q});
    assign i_pivot178_eia608_from_utf864_o = $unsigned($signed(i_pivot178_eia608_from_utf864_a) - $signed(i_pivot178_eia608_from_utf864_b));
    assign i_pivot178_eia608_from_utf864_c[0] = i_pivot178_eia608_from_utf864_o[9];

    // i_acl_325_v_eia608_from_utf892(MUX,55)@65
    assign i_acl_325_v_eia608_from_utf892_s = i_pivot178_eia608_from_utf864_c;
    always @(i_acl_325_v_eia608_from_utf892_s or i_acl_324_v_eia608_from_utf885_q or i_switchleaf170_eia608_from_utf870_q)
    begin
        unique case (i_acl_325_v_eia608_from_utf892_s)
            1'b0 : i_acl_325_v_eia608_from_utf892_q = i_acl_324_v_eia608_from_utf885_q;
            1'b1 : i_acl_325_v_eia608_from_utf892_q = i_switchleaf170_eia608_from_utf870_q;
            default : i_acl_325_v_eia608_from_utf892_q = 1'b0;
        endcase
    end

    // i_pivot180_eia608_from_utf860(COMPARE,95)@65
    assign i_pivot180_eia608_from_utf860_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b[7]}}, bubble_select_i_llvm_fpga_mem_lm12964_eia608_from_utf856_b});
    assign i_pivot180_eia608_from_utf860_b = $unsigned({{2{c_i8_108129_recast_x_q[7]}}, c_i8_108129_recast_x_q});
    assign i_pivot180_eia608_from_utf860_o = $unsigned($signed(i_pivot180_eia608_from_utf860_a) - $signed(i_pivot180_eia608_from_utf860_b));
    assign i_pivot180_eia608_from_utf860_c[0] = i_pivot180_eia608_from_utf860_o[9];

    // i_acl_326_v_eia608_from_utf897(MUX,57)@65 + 1
    assign i_acl_326_v_eia608_from_utf897_s = i_pivot180_eia608_from_utf860_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_acl_326_v_eia608_from_utf897_q <= 1'b0;
        end
        else if (SE_i_acl_326_v_eia608_from_utf897_backEN == 1'b1)
        begin
            unique case (i_acl_326_v_eia608_from_utf897_s)
                1'b0 : i_acl_326_v_eia608_from_utf897_q <= i_acl_325_v_eia608_from_utf892_q;
                1'b1 : i_acl_326_v_eia608_from_utf897_q <= i_acl_323_v_eia608_from_utf881_q;
                default : i_acl_326_v_eia608_from_utf897_q <= 1'b0;
            endcase
        end
    end

    // redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo(STALLFIFO,239)
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_in = SE_in_redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_V0;
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_data_in = i_acl_326_v_eia608_from_utf897_q;
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_in_bitsignaltemp = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_in[0];
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_in_bitsignaltemp = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_in[0];
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_out[0] = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_out_bitsignaltemp;
    assign redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_out[0] = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_acl_326_v_eia608_from_utf897_q_32_fifo (
        .valid_in(redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_acl_326_v_eia608_from_utf897_q),
        .valid_out(redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_acl_263_eia608_from_utf846(LOGICAL,50)@65 + 1
    assign i_acl_263_eia608_from_utf846_qi = i_cmp22_eia608_from_utf832_c ^ i_cmp4_eia608_from_utf810_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_263_eia608_from_utf846_delay ( .xin(i_acl_263_eia608_from_utf846_qi), .xout(i_acl_263_eia608_from_utf846_q), .ena(SE_i_acl_253_eia608_from_utf835_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist22_i_acl_263_eia608_from_utf846_q_32_fifo(STALLFIFO,240)
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_in = SE_i_acl_253_eia608_from_utf835_V0;
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_data_in = i_acl_263_eia608_from_utf846_q;
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_in_bitsignaltemp = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_in[0];
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_in_bitsignaltemp = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_in[0];
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_out[0] = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_out_bitsignaltemp;
    assign redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_out[0] = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist22_i_acl_263_eia608_from_utf846_q_32_fifo (
        .valid_in(redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_acl_263_eia608_from_utf846_q),
        .valid_out(redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist22_i_acl_263_eia608_from_utf846_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist22_i_acl_263_eia608_from_utf846_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_acl_253_eia608_from_utf835(LOGICAL,47)@65 + 1
    assign i_acl_253_eia608_from_utf835_qi = i_cmp27_eia608_from_utf814_c ^ i_cmp1_eia608_from_utf89_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_acl_253_eia608_from_utf835_delay ( .xin(i_acl_253_eia608_from_utf835_qi), .xout(i_acl_253_eia608_from_utf835_q), .ena(SE_i_acl_253_eia608_from_utf835_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist23_i_acl_253_eia608_from_utf835_q_32_fifo(STALLFIFO,241)
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_in = SE_i_acl_253_eia608_from_utf835_V1;
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_data_in = i_acl_253_eia608_from_utf835_q;
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_in_bitsignaltemp = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_in[0];
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_in_bitsignaltemp = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_in[0];
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_out[0] = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_out_bitsignaltemp;
    assign redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_out[0] = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist23_i_acl_253_eia608_from_utf835_q_32_fifo (
        .valid_in(redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_acl_253_eia608_from_utf835_q),
        .valid_out(redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist23_i_acl_253_eia608_from_utf835_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist23_i_acl_253_eia608_from_utf835_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_cmp_not_eia608_from_utf87_q_32_fifo(STALLFIFO,228)
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_in = SE_out_redist10_i_cmp_eia608_from_utf84_q_64_fifo_V4;
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_data_in = i_cmp_not_eia608_from_utf87_q;
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_in_bitsignaltemp = redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_in[0];
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_in_bitsignaltemp = redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_in[0];
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_out[0] = redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_out_bitsignaltemp;
    assign redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_out[0] = redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_cmp_not_eia608_from_utf87_q_32_fifo (
        .valid_in(redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp_not_eia608_from_utf87_q),
        .valid_out(redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,221)
    assign join_for_coalesced_delay_0_q = {i_acl_1283_eia608_from_utf886_q, i_acl_1300_eia608_from_utf879_q, i_acl_1313_eia608_from_utf888_q, i_acl_1318_eia608_from_utf882_q, i_cmp14_eia608_from_utf817_c, bubble_select_redist10_i_cmp_eia608_from_utf84_q_64_fifo_b, i_not_eia608_from_utf891_q, i_switchleaf164_eia608_from_utf866_q, i_switchleaf170_eia608_from_utf870_q};

    // coalesced_delay_0_fifo(STALLFIFO,242)
    assign coalesced_delay_0_fifo_valid_in = SE_join_for_coalesced_delay_0_V0;
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
        .DATA_WIDTH(9),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,468)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_wt_entry_eia608_from_utf8s_c1_enter_eia608_from_utf8106_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist8_i_cmp_not_eia608_from_utf87_q_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_and2 = redist23_i_acl_253_eia608_from_utf835_q_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and1;
    assign SE_out_coalesced_delay_0_fifo_and3 = redist22_i_acl_263_eia608_from_utf846_q_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and2;
    assign SE_out_coalesced_delay_0_fifo_and4 = redist21_i_acl_326_v_eia608_from_utf897_q_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and3;
    assign SE_out_coalesced_delay_0_fifo_and5 = redist19_i_cmp18_eia608_from_utf818_q_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and4;
    assign SE_out_coalesced_delay_0_fifo_and6 = redist18_i_cmp30_eia608_from_utf820_q_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and5;
    assign SE_out_coalesced_delay_0_fifo_and7 = redist7_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_64_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and6;
    assign SE_out_coalesced_delay_0_fifo_and8 = redist17_i_cmp50_eia608_from_utf825_c_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and7;
    assign SE_out_coalesced_delay_0_fifo_and9 = redist16_i_cmp68_eia608_from_utf816_c_33_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and8;
    assign SE_out_coalesced_delay_0_fifo_and10 = redist15_i_cmp71_eia608_from_utf829_c_33_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and9;
    assign SE_out_coalesced_delay_0_fifo_and11 = redist14_i_cmp80_eia608_from_utf830_q_64_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and10;
    assign SE_out_coalesced_delay_0_fifo_and12 = redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and11;
    assign SE_out_coalesced_delay_0_fifo_and13 = SE_out_i_llvm_fpga_mem_lm12843_eia608_from_utf898_V1 & SE_out_coalesced_delay_0_fifo_and12;
    assign SE_out_coalesced_delay_0_fifo_wireValid = SE_out_i_llvm_fpga_mem_ml5_eia608_from_utf8104_V1 & SE_out_coalesced_delay_0_fifo_and13;

    // redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo(STALLFIFO,231)
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V3;
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_data_in = i_cmp80_not_eia608_from_utf844_q;
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_in_bitsignaltemp = redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_in[0];
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_in_bitsignaltemp = redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_in[0];
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_out[0] = redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_out_bitsignaltemp;
    assign redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_out[0] = redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_i_cmp80_not_eia608_from_utf844_q_64_fifo (
        .valid_in(redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp80_not_eia608_from_utf844_q),
        .valid_out(redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_i_cmp80_eia608_from_utf830_q_32_fifo(STALLFIFO,232)
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V2;
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_in = SE_out_redist13_i_cmp80_eia608_from_utf830_q_32_fifo_backStall;
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_data_in = i_cmp80_eia608_from_utf830_q;
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_in_bitsignaltemp = redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_in[0];
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_in_bitsignaltemp = redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_in[0];
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_out[0] = redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_out_bitsignaltemp;
    assign redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_out[0] = redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_i_cmp80_eia608_from_utf830_q_32_fifo (
        .valid_in(redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp80_eia608_from_utf830_q),
        .valid_out(redist13_i_cmp80_eia608_from_utf830_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_cmp80_eia608_from_utf830_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_unnamed_eia608_from_utf851(STALLENABLE,414)
    // Valid signal propagation
    assign SE_i_unnamed_eia608_from_utf851_V0 = SE_i_unnamed_eia608_from_utf851_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_eia608_from_utf851_backStall = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_o_stall | ~ (SE_i_unnamed_eia608_from_utf851_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_eia608_from_utf851_and0 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V1;
    assign SE_i_unnamed_eia608_from_utf851_and1 = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_V0 & SE_i_unnamed_eia608_from_utf851_and0;
    assign SE_i_unnamed_eia608_from_utf851_wireValid = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_V1 & SE_i_unnamed_eia608_from_utf851_and1;

    // redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo(STALLFIFO,225)
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V0;
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_in = SE_out_redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_backStall;
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_data_in = bubble_select_i_llvm_fpga_mem_lm2_eia608_from_utf88_b;
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_out[0] = redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_out[0] = redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(8),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo (
        .valid_in(redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_lm2_eia608_from_utf88_b),
        .valid_out(redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88(STALLENABLE,394)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg1 <= '0;
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg2 <= '0;
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg0 <= SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg1 <= SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg2 <= SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg3 <= SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed0 = (~ (redist5_i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata_31_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid) | SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed1 = (~ (SE_i_unnamed_eia608_from_utf851_backStall) & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid) | SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg1;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed2 = (~ (redist13_i_cmp80_eia608_from_utf830_q_32_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid) | SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg2;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed3 = (~ (redist12_i_cmp80_not_eia608_from_utf844_q_64_fifo_stall_out) & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid) | SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_StallValid = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_backStall & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg0 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_StallValid & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg1 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_StallValid & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed1;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg2 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_StallValid & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed2;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_toReg3 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_StallValid & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or0 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or1 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed1 & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or0;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or2 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed2 & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or1;
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_consumed3 & SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_or2);
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_backStall = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V0 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V1 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg1);
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V2 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg2);
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_V3 = SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_wireValid = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_valid;

    // cpn_i32_recast_x(CONSTANT,165)
    assign cpn_i32_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_cmp_eia608_from_utf84(LOGICAL,84)@1
    assign i_cmp_eia608_from_utf84_q = $unsigned(bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_b == cpn_i32_recast_x_q ? 1'b1 : 1'b0);

    // bubble_join_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x(BITJOIN,261)
    assign bubble_join_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_q = i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl;

    // bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x(BITSELECT,262)
    assign bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_b = $unsigned(bubble_join_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_q[63:0]);

    // i_llvm_fpga_mem_lm2_eia608_from_utf88(BLACKBOX,89)@1
    // in in_i_stall@20000000
    // out out_lm2_eia608_from_utf8_avm_address@20000000
    // out out_lm2_eia608_from_utf8_avm_burstcount@20000000
    // out out_lm2_eia608_from_utf8_avm_byteenable@20000000
    // out out_lm2_eia608_from_utf8_avm_enable@20000000
    // out out_lm2_eia608_from_utf8_avm_read@20000000
    // out out_lm2_eia608_from_utf8_avm_write@20000000
    // out out_lm2_eia608_from_utf8_avm_writedata@20000000
    // out out_o_readdata@33
    // out out_o_stall@20000000
    // out out_o_valid@33
    eia608_from_utf8_i_llvm_fpga_mem_lm2_0 thei_llvm_fpga_mem_lm2_eia608_from_utf88 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_b),
        .in_i_predicate(i_cmp_eia608_from_utf84_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm2_eia608_from_utf88_backStall),
        .in_i_valid(SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V2),
        .in_lm2_eia608_from_utf8_avm_readdata(in_lm2_eia608_from_utf8_avm_readdata),
        .in_lm2_eia608_from_utf8_avm_readdatavalid(in_lm2_eia608_from_utf8_avm_readdatavalid),
        .in_lm2_eia608_from_utf8_avm_waitrequest(in_lm2_eia608_from_utf8_avm_waitrequest),
        .in_lm2_eia608_from_utf8_avm_writeack(in_lm2_eia608_from_utf8_avm_writeack),
        .out_lm2_eia608_from_utf8_avm_address(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_address),
        .out_lm2_eia608_from_utf8_avm_burstcount(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_burstcount),
        .out_lm2_eia608_from_utf8_avm_byteenable(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_byteenable),
        .out_lm2_eia608_from_utf8_avm_enable(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_enable),
        .out_lm2_eia608_from_utf8_avm_read(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_read),
        .out_lm2_eia608_from_utf8_avm_write(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_write),
        .out_lm2_eia608_from_utf8_avm_writedata(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_cmp_eia608_from_utf84_q_32_fifo(STALLFIFO,229)
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_in = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V1;
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_in = SE_out_redist9_i_cmp_eia608_from_utf84_q_32_fifo_backStall;
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_data_in = i_cmp_eia608_from_utf84_q;
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_in_bitsignaltemp = redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_in[0];
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_in_bitsignaltemp = redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_in[0];
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_out[0] = redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_out_bitsignaltemp;
    assign redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_out[0] = redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist9_i_cmp_eia608_from_utf84_q_32_fifo (
        .valid_in(redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp_eia608_from_utf84_q),
        .valid_out(redist9_i_cmp_eia608_from_utf84_q_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_i_cmp_eia608_from_utf84_q_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo(STALLFIFO,223)
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_in = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V0;
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_in = SE_out_redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_backStall;
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_data_in = bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_b;
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_in_bitsignaltemp = redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_in[0];
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_in_bitsignaltemp = redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_in[0];
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_out[0] = redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_out[0] = redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo (
        .valid_in(redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_b),
        .valid_out(redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x(STALLENABLE,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg0 <= '0;
            SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg1 <= '0;
            SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg0 <= SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg1 <= SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg2 <= SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed0 = (~ (redist0_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl_32_fifo_stall_out) & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid) | SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg0;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed1 = (~ (redist9_i_cmp_eia608_from_utf84_q_32_fifo_stall_out) & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid) | SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg1;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_lm2_eia608_from_utf88_out_o_stall) & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid) | SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_StallValid = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_backStall & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg0 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_StallValid & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg1 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_StallValid & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed1;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_toReg2 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_StallValid & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_or0 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed0;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_or1 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed1 & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_or0;
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireStall = ~ (SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_consumed2 & SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_or1);
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_backStall = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V0 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg0);
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V1 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg1);
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_V2 = SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid & ~ (SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_wireValid = i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_valid;

    // i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x(BLACKBOX,189)@1
    // in in_i_stall@20000000
    // out out_iord_bl_call_eia608_from_utf8_o_fifoready@20000000
    // out out_o_stall@20000000
    eia608_from_utf8_i_iord_bl_call_unnamed_A000000Z82_eia608_from_utf80 thei_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x (
        .in_i_stall(SE_out_i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_backStall),
        .in_i_valid(SE_out_eia608_from_utf8_B1_start_merge_reg_V0),
        .in_iord_bl_call_eia608_from_utf8_i_fifodata(in_iord_bl_call_eia608_from_utf8_i_fifodata),
        .in_iord_bl_call_eia608_from_utf8_i_fifovalid(in_iord_bl_call_eia608_from_utf8_i_fifovalid),
        .out_iord_bl_call_eia608_from_utf8_o_fifoready(i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_iord_bl_call_eia608_from_utf8_o_fifoready),
        .out_o_stall(i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_stall),
        .out_o_valid(i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,416)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = eia608_from_utf8_B1_start_merge_reg_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // eia608_from_utf8_B1_start_merge_reg(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_data_out@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    eia608_from_utf8_B1_start_merge_reg theeia608_from_utf8_B1_start_merge_reg (
        .in_data_in(GND_q),
        .in_stall_in(SE_out_eia608_from_utf8_B1_start_merge_reg_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out(),
        .out_stall_out(eia608_from_utf8_B1_start_merge_reg_out_stall_out),
        .out_valid_out(eia608_from_utf8_B1_start_merge_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_eia608_from_utf8_B1_start_merge_reg(STALLENABLE,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg0 <= '0;
            SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg0 <= SE_out_eia608_from_utf8_B1_start_merge_reg_toReg0;
            // Successor 1
            SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg1 <= SE_out_eia608_from_utf8_B1_start_merge_reg_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_consumed0 = (~ (i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_o_stall) & SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid) | SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg0;
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_consumed1 = (~ (i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_o_stall) & SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid) | SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg1;
    // Consuming
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_StallValid = SE_out_eia608_from_utf8_B1_start_merge_reg_backStall & SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid;
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_toReg0 = SE_out_eia608_from_utf8_B1_start_merge_reg_StallValid & SE_out_eia608_from_utf8_B1_start_merge_reg_consumed0;
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_toReg1 = SE_out_eia608_from_utf8_B1_start_merge_reg_StallValid & SE_out_eia608_from_utf8_B1_start_merge_reg_consumed1;
    // Backward Stall generation
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_or0 = SE_out_eia608_from_utf8_B1_start_merge_reg_consumed0;
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_wireStall = ~ (SE_out_eia608_from_utf8_B1_start_merge_reg_consumed1 & SE_out_eia608_from_utf8_B1_start_merge_reg_or0);
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_backStall = SE_out_eia608_from_utf8_B1_start_merge_reg_wireStall;
    // Valid signal propagation
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_V0 = SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid & ~ (SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg0);
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_V1 = SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid & ~ (SE_out_eia608_from_utf8_B1_start_merge_reg_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_eia608_from_utf8_B1_start_merge_reg_wireValid = eia608_from_utf8_B1_start_merge_reg_out_valid_out;

    // SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x(STALLENABLE,425)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_backStall = bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_reg_stall_out | ~ (SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_wireValid = i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x(BLACKBOX,190)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    eia608_from_utf8_i_sfc_s_c0_in_wt_entry_A000000Zr1_eia608_from_utf80 thei_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_backStall),
        .in_i_valid(SE_out_eia608_from_utf8_B1_start_merge_reg_V1),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_eia608_from_utf80_0_tpl(GND_q),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out(i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out(i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit_0_tpl(),
        .out_c0_exit_1_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,23)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out = i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out = i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_eia608_from_utf81_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,146)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,151)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,167)
    assign out_iord_bl_call_eia608_from_utf8_o_fifoready = i_iord_bl_call_eia608_from_utf8_unnamed_eia608_from_utf82_eia608_from_utf81_aunroll_x_out_iord_bl_call_eia608_from_utf8_o_fifoready;

    // dupName_0_sync_out_x(GPOUT,168)@97
    assign out_valid_out = SE_out_bubble_out_i_sfc_s_c0_in_wt_entry_eia608_from_utf8s_c0_enter1_eia608_from_utf80_aunroll_x_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,174)
    assign out_lm2_eia608_from_utf8_avm_address = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_address;
    assign out_lm2_eia608_from_utf8_avm_enable = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_enable;
    assign out_lm2_eia608_from_utf8_avm_read = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_read;
    assign out_lm2_eia608_from_utf8_avm_write = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_write;
    assign out_lm2_eia608_from_utf8_avm_writedata = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_writedata;
    assign out_lm2_eia608_from_utf8_avm_byteenable = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_byteenable;
    assign out_lm2_eia608_from_utf8_avm_burstcount = i_llvm_fpga_mem_lm2_eia608_from_utf88_out_lm2_eia608_from_utf8_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,176)
    assign out_lm12964_eia608_from_utf8_avm_address = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_address;
    assign out_lm12964_eia608_from_utf8_avm_enable = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_enable;
    assign out_lm12964_eia608_from_utf8_avm_read = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_read;
    assign out_lm12964_eia608_from_utf8_avm_write = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_write;
    assign out_lm12964_eia608_from_utf8_avm_writedata = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_writedata;
    assign out_lm12964_eia608_from_utf8_avm_byteenable = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_byteenable;
    assign out_lm12964_eia608_from_utf8_avm_burstcount = i_llvm_fpga_mem_lm12964_eia608_from_utf856_out_lm12964_eia608_from_utf8_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,178)
    assign out_lm12843_eia608_from_utf8_avm_address = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_address;
    assign out_lm12843_eia608_from_utf8_avm_enable = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_enable;
    assign out_lm12843_eia608_from_utf8_avm_read = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_read;
    assign out_lm12843_eia608_from_utf8_avm_write = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_write;
    assign out_lm12843_eia608_from_utf8_avm_writedata = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_writedata;
    assign out_lm12843_eia608_from_utf8_avm_byteenable = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_byteenable;
    assign out_lm12843_eia608_from_utf8_avm_burstcount = i_llvm_fpga_mem_lm12843_eia608_from_utf898_out_lm12843_eia608_from_utf8_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,180)
    assign out_ml5_eia608_from_utf8_avm_address = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_address;
    assign out_ml5_eia608_from_utf8_avm_enable = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_enable;
    assign out_ml5_eia608_from_utf8_avm_read = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_read;
    assign out_ml5_eia608_from_utf8_avm_write = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_write;
    assign out_ml5_eia608_from_utf8_avm_writedata = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_writedata;
    assign out_ml5_eia608_from_utf8_avm_byteenable = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_byteenable;
    assign out_ml5_eia608_from_utf8_avm_burstcount = i_llvm_fpga_mem_ml5_eia608_from_utf8104_out_ml5_eia608_from_utf8_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,181)
    assign out_iowr_bl_return_eia608_from_utf8_o_fifodata = i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_iowr_bl_return_eia608_from_utf8_o_fifodata;
    assign out_iowr_bl_return_eia608_from_utf8_o_fifovalid = i_iowr_bl_return_eia608_from_utf8_unnamed_eia608_from_utf83_eia608_from_utf8108_out_iowr_bl_return_eia608_from_utf8_o_fifovalid;

endmodule
