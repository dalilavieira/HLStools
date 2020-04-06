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

// SystemVerilog created from dijkstra_bb_B2_stall_region
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_bb_B2_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [31:0] in_intel_reserved_ffwd_12_0,
    input wire [31:0] in_intel_reserved_ffwd_13_0,
    input wire [31:0] in_intel_reserved_ffwd_14_0,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [31:0] in_intel_reserved_ffwd_17_0,
    input wire [31:0] in_intel_reserved_ffwd_18_0,
    input wire [31:0] in_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire [63:0] in_intel_reserved_ffwd_0_0_0_tpl,
    input wire [31:0] in_intel_reserved_ffwd_0_0_1_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_055_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_dest_data_out_11_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_dest_data_out_13_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_dest_data_out_14_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_dest_data_out_15_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_dest_data_out_16_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_dest_data_out_17_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_dest_data_out_19_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_dest_data_out_12_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_valid_out;
    wire [0:0] i_spec_select223_dijkstra21_s;
    reg [31:0] i_spec_select223_dijkstra21_q;
    wire [0:0] i_spec_select224_dijkstra25_s;
    reg [31:0] i_spec_select224_dijkstra25_q;
    wire [0:0] i_spec_select225_dijkstra27_s;
    reg [31:0] i_spec_select225_dijkstra27_q;
    wire [0:0] i_spec_select226_dijkstra29_s;
    reg [31:0] i_spec_select226_dijkstra29_q;
    wire [0:0] i_spec_select227_dijkstra31_s;
    reg [31:0] i_spec_select227_dijkstra31_q;
    wire [0:0] i_spec_select228_dijkstra33_s;
    reg [31:0] i_spec_select228_dijkstra33_q;
    wire [0:0] i_spec_select229_dijkstra35_s;
    reg [31:0] i_spec_select229_dijkstra35_q;
    wire [0:0] i_spec_select230_dijkstra37_s;
    reg [31:0] i_spec_select230_dijkstra37_q;
    wire [0:0] i_unnamed_dijkstra10_q;
    wire [0:0] i_unnamed_dijkstra12_q;
    wire [0:0] i_unnamed_dijkstra14_q;
    wire [0:0] i_unnamed_dijkstra16_q;
    wire [0:0] i_unnamed_dijkstra18_q;
    wire [0:0] i_unnamed_dijkstra2_q;
    wire [0:0] i_unnamed_dijkstra23_s;
    reg [31:0] i_unnamed_dijkstra23_q;
    wire [0:0] i_unnamed_dijkstra4_q;
    wire [0:0] i_unnamed_dijkstra6_q;
    wire [0:0] i_unnamed_dijkstra8_q;
    wire [31:0] c_i32_154_recast_x_q;
    wire [31:0] c_i32_253_recast_x_q;
    wire [31:0] c_i32_352_recast_x_q;
    wire [31:0] c_i32_451_recast_x_q;
    wire [31:0] c_i32_550_recast_x_q;
    wire [31:0] c_i32_649_recast_x_q;
    wire [31:0] c_i32_748_recast_x_q;
    wire [31:0] c_i32_847_recast_x_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_dest_data_out_0_0_1_tpl;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_wireStall;
    wire [0:0] SE_stall_entry_StallValid;
    wire [0:0] SE_stall_entry_toReg0;
    reg [0:0] SE_stall_entry_fromReg0;
    wire [0:0] SE_stall_entry_consumed0;
    wire [0:0] SE_stall_entry_toReg1;
    reg [0:0] SE_stall_entry_fromReg1;
    wire [0:0] SE_stall_entry_consumed1;
    wire [0:0] SE_stall_entry_toReg2;
    reg [0:0] SE_stall_entry_fromReg2;
    wire [0:0] SE_stall_entry_consumed2;
    wire [0:0] SE_stall_entry_toReg3;
    reg [0:0] SE_stall_entry_fromReg3;
    wire [0:0] SE_stall_entry_consumed3;
    wire [0:0] SE_stall_entry_toReg4;
    reg [0:0] SE_stall_entry_fromReg4;
    wire [0:0] SE_stall_entry_consumed4;
    wire [0:0] SE_stall_entry_toReg5;
    reg [0:0] SE_stall_entry_fromReg5;
    wire [0:0] SE_stall_entry_consumed5;
    wire [0:0] SE_stall_entry_toReg6;
    reg [0:0] SE_stall_entry_fromReg6;
    wire [0:0] SE_stall_entry_consumed6;
    wire [0:0] SE_stall_entry_toReg7;
    reg [0:0] SE_stall_entry_fromReg7;
    wire [0:0] SE_stall_entry_consumed7;
    wire [0:0] SE_stall_entry_toReg8;
    reg [0:0] SE_stall_entry_fromReg8;
    wire [0:0] SE_stall_entry_consumed8;
    wire [0:0] SE_stall_entry_toReg9;
    reg [0:0] SE_stall_entry_fromReg9;
    wire [0:0] SE_stall_entry_consumed9;
    wire [0:0] SE_stall_entry_or0;
    wire [0:0] SE_stall_entry_or1;
    wire [0:0] SE_stall_entry_or2;
    wire [0:0] SE_stall_entry_or3;
    wire [0:0] SE_stall_entry_or4;
    wire [0:0] SE_stall_entry_or5;
    wire [0:0] SE_stall_entry_or6;
    wire [0:0] SE_stall_entry_or7;
    wire [0:0] SE_stall_entry_or8;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_stall_entry_V1;
    wire [0:0] SE_stall_entry_V2;
    wire [0:0] SE_stall_entry_V3;
    wire [0:0] SE_stall_entry_V4;
    wire [0:0] SE_stall_entry_V5;
    wire [0:0] SE_stall_entry_V6;
    wire [0:0] SE_stall_entry_V7;
    wire [0:0] SE_stall_entry_V8;
    wire [0:0] SE_stall_entry_V9;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg7;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg8;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed8;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V6;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V7;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V8;


    // c_i32_055(CONSTANT,3)
    assign c_i32_055_q = $unsigned(32'b00000000000000000000000000000000);

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30(BITJOIN,137)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_q = i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_dest_data_out_16_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30(BITSELECT,138)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_q[31:0]);

    // c_i32_550_recast_x(CONSTANT,109)
    assign c_i32_550_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x(BITJOIN,171)
    assign bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_q = i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_dest_data_out_0_0_1_tpl;

    // bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x(BITSELECT,172)
    assign bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_q[31:0]);

    // i_unnamed_dijkstra8(LOGICAL,41)@0
    assign i_unnamed_dijkstra8_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_550_recast_x_q ? 1'b1 : 1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_spec_select227_dijkstra31(MUX,28)@0
    assign i_spec_select227_dijkstra31_s = i_unnamed_dijkstra8_q;
    always @(i_spec_select227_dijkstra31_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_b or c_i32_055_q)
    begin
        unique case (i_spec_select227_dijkstra31_s)
            1'b0 : i_spec_select227_dijkstra31_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_b;
            1'b1 : i_spec_select227_dijkstra31_q = c_i32_055_q;
            default : i_spec_select227_dijkstra31_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_12_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(i_spec_select227_dijkstra31_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_V0),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22(BLACKBOX,14)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_unnamed_6_dijkstra0 thei_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_backStall),
        .in_valid_in(SE_stall_entry_V8),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_dest_data_out_12_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34(BLACKBOX,12)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23724_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_backStall),
        .in_valid_in(SE_stall_entry_V6),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_dest_data_out_18_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32(BLACKBOX,11)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23623_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_backStall),
        .in_valid_in(SE_stall_entry_V5),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_dest_data_out_17_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28(BLACKBOX,9)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23421_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_backStall),
        .in_valid_in(SE_stall_entry_V3),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_dest_data_out_15_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23320_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26 (
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_backStall),
        .in_valid_in(SE_stall_entry_V2),
        .out_dest_data_out_14_0(i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_dest_data_out_14_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24(BLACKBOX,7)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23219_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24 (
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_backStall),
        .in_valid_in(SE_stall_entry_V1),
        .out_dest_data_out_13_0(i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_dest_data_out_13_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20(BLACKBOX,6)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23118_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_dest_data_out_11_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_stall_entry_fromReg0 <= '0;
            SE_stall_entry_fromReg1 <= '0;
            SE_stall_entry_fromReg2 <= '0;
            SE_stall_entry_fromReg3 <= '0;
            SE_stall_entry_fromReg4 <= '0;
            SE_stall_entry_fromReg5 <= '0;
            SE_stall_entry_fromReg6 <= '0;
            SE_stall_entry_fromReg7 <= '0;
            SE_stall_entry_fromReg8 <= '0;
            SE_stall_entry_fromReg9 <= '0;
        end
        else
        begin
            // Successor 0
            SE_stall_entry_fromReg0 <= SE_stall_entry_toReg0;
            // Successor 1
            SE_stall_entry_fromReg1 <= SE_stall_entry_toReg1;
            // Successor 2
            SE_stall_entry_fromReg2 <= SE_stall_entry_toReg2;
            // Successor 3
            SE_stall_entry_fromReg3 <= SE_stall_entry_toReg3;
            // Successor 4
            SE_stall_entry_fromReg4 <= SE_stall_entry_toReg4;
            // Successor 5
            SE_stall_entry_fromReg5 <= SE_stall_entry_toReg5;
            // Successor 6
            SE_stall_entry_fromReg6 <= SE_stall_entry_toReg6;
            // Successor 7
            SE_stall_entry_fromReg7 <= SE_stall_entry_toReg7;
            // Successor 8
            SE_stall_entry_fromReg8 <= SE_stall_entry_toReg8;
            // Successor 9
            SE_stall_entry_fromReg9 <= SE_stall_entry_toReg9;
        end
    end
    // Input Stall processing
    assign SE_stall_entry_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg0;
    assign SE_stall_entry_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg1;
    assign SE_stall_entry_consumed2 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg2;
    assign SE_stall_entry_consumed3 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg3;
    assign SE_stall_entry_consumed4 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg4;
    assign SE_stall_entry_consumed5 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg5;
    assign SE_stall_entry_consumed6 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg6;
    assign SE_stall_entry_consumed7 = (~ (i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg7;
    assign SE_stall_entry_consumed8 = (~ (i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg8;
    assign SE_stall_entry_consumed9 = (~ (i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_stall_out) & SE_stall_entry_wireValid) | SE_stall_entry_fromReg9;
    // Consuming
    assign SE_stall_entry_StallValid = SE_stall_entry_backStall & SE_stall_entry_wireValid;
    assign SE_stall_entry_toReg0 = SE_stall_entry_StallValid & SE_stall_entry_consumed0;
    assign SE_stall_entry_toReg1 = SE_stall_entry_StallValid & SE_stall_entry_consumed1;
    assign SE_stall_entry_toReg2 = SE_stall_entry_StallValid & SE_stall_entry_consumed2;
    assign SE_stall_entry_toReg3 = SE_stall_entry_StallValid & SE_stall_entry_consumed3;
    assign SE_stall_entry_toReg4 = SE_stall_entry_StallValid & SE_stall_entry_consumed4;
    assign SE_stall_entry_toReg5 = SE_stall_entry_StallValid & SE_stall_entry_consumed5;
    assign SE_stall_entry_toReg6 = SE_stall_entry_StallValid & SE_stall_entry_consumed6;
    assign SE_stall_entry_toReg7 = SE_stall_entry_StallValid & SE_stall_entry_consumed7;
    assign SE_stall_entry_toReg8 = SE_stall_entry_StallValid & SE_stall_entry_consumed8;
    assign SE_stall_entry_toReg9 = SE_stall_entry_StallValid & SE_stall_entry_consumed9;
    // Backward Stall generation
    assign SE_stall_entry_or0 = SE_stall_entry_consumed0;
    assign SE_stall_entry_or1 = SE_stall_entry_consumed1 & SE_stall_entry_or0;
    assign SE_stall_entry_or2 = SE_stall_entry_consumed2 & SE_stall_entry_or1;
    assign SE_stall_entry_or3 = SE_stall_entry_consumed3 & SE_stall_entry_or2;
    assign SE_stall_entry_or4 = SE_stall_entry_consumed4 & SE_stall_entry_or3;
    assign SE_stall_entry_or5 = SE_stall_entry_consumed5 & SE_stall_entry_or4;
    assign SE_stall_entry_or6 = SE_stall_entry_consumed6 & SE_stall_entry_or5;
    assign SE_stall_entry_or7 = SE_stall_entry_consumed7 & SE_stall_entry_or6;
    assign SE_stall_entry_or8 = SE_stall_entry_consumed8 & SE_stall_entry_or7;
    assign SE_stall_entry_wireStall = ~ (SE_stall_entry_consumed9 & SE_stall_entry_or8);
    assign SE_stall_entry_backStall = SE_stall_entry_wireStall;
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg0);
    assign SE_stall_entry_V1 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg1);
    assign SE_stall_entry_V2 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg2);
    assign SE_stall_entry_V3 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg3);
    assign SE_stall_entry_V4 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg4);
    assign SE_stall_entry_V5 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg5);
    assign SE_stall_entry_V6 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg6);
    assign SE_stall_entry_V7 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg7);
    assign SE_stall_entry_V8 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg8);
    assign SE_stall_entry_V9 = SE_stall_entry_wireValid & ~ (SE_stall_entry_fromReg9);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30(BLACKBOX,10)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23522_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_backStall),
        .in_valid_in(SE_stall_entry_V4),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_dest_data_out_16_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30(STALLENABLE,182)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V8 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32(BITJOIN,140)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_q = i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_dest_data_out_17_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32(BITSELECT,141)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_q[31:0]);

    // c_i32_649_recast_x(CONSTANT,110)
    assign c_i32_649_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_dijkstra6(LOGICAL,40)@0
    assign i_unnamed_dijkstra6_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_649_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select228_dijkstra33(MUX,29)@0
    assign i_spec_select228_dijkstra33_s = i_unnamed_dijkstra6_q;
    always @(i_spec_select228_dijkstra33_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_b or c_i32_055_q)
    begin
        unique case (i_spec_select228_dijkstra33_s)
            1'b0 : i_spec_select228_dijkstra33_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_b;
            1'b1 : i_spec_select228_dijkstra33_q = c_i32_055_q;
            default : i_spec_select228_dijkstra33_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_13_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_spec_select228_dijkstra33_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_V0),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32(STALLENABLE,184)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V7 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34(BITJOIN,143)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_q = i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_dest_data_out_18_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34(BITSELECT,144)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_q[31:0]);

    // c_i32_748_recast_x(CONSTANT,111)
    assign c_i32_748_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_dijkstra4(LOGICAL,39)@0
    assign i_unnamed_dijkstra4_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_748_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select229_dijkstra35(MUX,30)@0
    assign i_spec_select229_dijkstra35_s = i_unnamed_dijkstra4_q;
    always @(i_spec_select229_dijkstra35_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_b or c_i32_055_q)
    begin
        unique case (i_spec_select229_dijkstra35_s)
            1'b0 : i_spec_select229_dijkstra35_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_b;
            1'b1 : i_spec_select229_dijkstra35_q = c_i32_055_q;
            default : i_spec_select229_dijkstra35_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_14_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_spec_select229_dijkstra35_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_V0),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34(STALLENABLE,186)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V6 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20(BITJOIN,125)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_q = i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_dest_data_out_11_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20(BITSELECT,126)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_q[31:0]);

    // i_unnamed_dijkstra18(LOGICAL,36)@0
    assign i_unnamed_dijkstra18_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_055_q ? 1'b1 : 1'b0);

    // i_spec_select223_dijkstra21(MUX,24)@0
    assign i_spec_select223_dijkstra21_s = i_unnamed_dijkstra18_q;
    always @(i_spec_select223_dijkstra21_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_b or c_i32_055_q)
    begin
        unique case (i_spec_select223_dijkstra21_s)
            1'b0 : i_spec_select223_dijkstra21_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_b;
            1'b1 : i_spec_select223_dijkstra21_q = c_i32_055_q;
            default : i_spec_select223_dijkstra21_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38(BLACKBOX,21)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_7_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_spec_select223_dijkstra21_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20(STALLENABLE,174)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V4 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22(BITJOIN,149)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_q = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_dest_data_out_12_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22(BITSELECT,150)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_q[31:0]);

    // c_i32_154_recast_x(CONSTANT,105)
    assign c_i32_154_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // i_unnamed_dijkstra16(LOGICAL,35)@0
    assign i_unnamed_dijkstra16_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_154_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstra23(MUX,38)@0
    assign i_unnamed_dijkstra23_s = i_unnamed_dijkstra16_q;
    always @(i_unnamed_dijkstra23_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_b or c_i32_055_q)
    begin
        unique case (i_unnamed_dijkstra23_s)
            1'b0 : i_unnamed_dijkstra23_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_b;
            1'b1 : i_unnamed_dijkstra23_q = c_i32_055_q;
            default : i_unnamed_dijkstra23_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_8_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(i_unnamed_dijkstra23_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22(STALLENABLE,190)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_and0 = i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V3 & SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24(BITJOIN,128)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_q = i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_dest_data_out_13_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24(BITSELECT,129)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_q[31:0]);

    // c_i32_253_recast_x(CONSTANT,106)
    assign c_i32_253_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_dijkstra14(LOGICAL,34)@0
    assign i_unnamed_dijkstra14_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_253_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select224_dijkstra25(MUX,25)@0
    assign i_spec_select224_dijkstra25_s = i_unnamed_dijkstra14_q;
    always @(i_spec_select224_dijkstra25_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_b or c_i32_055_q)
    begin
        unique case (i_spec_select224_dijkstra25_s)
            1'b0 : i_spec_select224_dijkstra25_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_b;
            1'b1 : i_spec_select224_dijkstra25_q = c_i32_055_q;
            default : i_spec_select224_dijkstra25_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40(BLACKBOX,23)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_9_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_spec_select224_dijkstra25_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_V0),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24(STALLENABLE,176)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V2 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26(BITJOIN,131)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_q = i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_dest_data_out_14_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26(BITSELECT,132)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_q[31:0]);

    // c_i32_352_recast_x(CONSTANT,107)
    assign c_i32_352_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_dijkstra12(LOGICAL,33)@0
    assign i_unnamed_dijkstra12_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_352_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select225_dijkstra27(MUX,26)@0
    assign i_spec_select225_dijkstra27_s = i_unnamed_dijkstra12_q;
    always @(i_spec_select225_dijkstra27_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_b or c_i32_055_q)
    begin
        unique case (i_spec_select225_dijkstra27_s)
            1'b0 : i_spec_select225_dijkstra27_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_b;
            1'b1 : i_spec_select225_dijkstra27_q = c_i32_055_q;
            default : i_spec_select225_dijkstra27_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_10_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_spec_select225_dijkstra27_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_V0),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26(STALLENABLE,178)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28(BITJOIN,134)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_q = i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_dest_data_out_15_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28(BITSELECT,135)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_q[31:0]);

    // c_i32_451_recast_x(CONSTANT,108)
    assign c_i32_451_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_dijkstra10(LOGICAL,32)@0
    assign i_unnamed_dijkstra10_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_451_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select226_dijkstra29(MUX,27)@0
    assign i_spec_select226_dijkstra29_s = i_unnamed_dijkstra10_q;
    always @(i_spec_select226_dijkstra29_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_b or c_i32_055_q)
    begin
        unique case (i_spec_select226_dijkstra29_s)
            1'b0 : i_spec_select226_dijkstra29_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_b;
            1'b1 : i_spec_select226_dijkstra29_q = c_i32_055_q;
            default : i_spec_select226_dijkstra29_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42(BLACKBOX,16)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_11_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_spec_select226_dijkstra29_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28(STALLENABLE,180)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V0 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_and0;

    // i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x(BLACKBOX,122)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_s_struct_A000000Z_dijkstra5_dijkstra0 thei_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x (
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V9),
        .in_intel_reserved_ffwd_0_0_0_tpl(in_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(in_intel_reserved_ffwd_0_0_1_tpl),
        .out_stall_out(i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_valid_out),
        .out_dest_data_out_0_0_0_tpl(),
        .out_dest_data_out_0_0_1_tpl(i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_dest_data_out_0_0_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x(STALLENABLE,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg2 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg3 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg4 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg5 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg6 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg7 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg8 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg3 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg4 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg5 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg6 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg6;
            // Successor 7
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg7 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg7;
            // Successor 8
            SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg8 <= SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg8;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23421_dijkstra28_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed1 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23320_dijkstra26_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed2 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23219_dijkstra24_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg2;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed3 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_unnamed_dijkstra6_dijkstra22_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg3;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed4 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23118_dijkstra20_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg4;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed5 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg5;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed6 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23724_dijkstra34_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg6;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed7 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23623_dijkstra32_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg7;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed8 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23522_dijkstra30_backStall) & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg8;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_backStall & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed2;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg3 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed3;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg4 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed4;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg5 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed5;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg6 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed6;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg7 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed7;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_toReg8 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_StallValid & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed8;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or2 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or1;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or3 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed3 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or2;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or4 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed4 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or3;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or5 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed5 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or4;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or6 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed6 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or5;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or7 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed7 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or6;
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_consumed8 & SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_or7);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_backStall = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V0 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V1 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V2 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg2);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V3 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg3);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V4 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg4);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V5 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg5);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V6 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg6);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V7 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg7);
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V8 = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_fromReg8);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_wireValid = i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36(BLACKBOX,13)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_dest_i32_spec_select23825_0 thei_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36 (
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_backStall),
        .in_valid_in(SE_stall_entry_V7),
        .out_dest_data_out_19_0(i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_dest_data_out_19_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36(STALLENABLE,188)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_and0 = i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_wireValid = SE_out_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_V5 & SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_and0;

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40(STALLENABLE,208)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and4 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and5 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and6 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and5;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and7 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and6;
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_and7;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36(BITJOIN,146)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_q = i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_out_dest_data_out_19_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36(BITSELECT,147)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_q[31:0]);

    // c_i32_847_recast_x(CONSTANT,112)
    assign c_i32_847_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_dijkstra2(LOGICAL,37)@0
    assign i_unnamed_dijkstra2_q = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_s_struct_z8dijkstrapa9_ii_inputss_unnamed_dijkstra5_dijkstra0_aunroll_x_b == c_i32_847_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select230_dijkstra37(MUX,31)@0
    assign i_spec_select230_dijkstra37_s = i_unnamed_dijkstra2_q;
    always @(i_spec_select230_dijkstra37_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_b or c_i32_055_q)
    begin
        unique case (i_spec_select230_dijkstra37_s)
            1'b0 : i_spec_select230_dijkstra37_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_b;
            1'b1 : i_spec_select230_dijkstra37_q = c_i32_055_q;
            default : i_spec_select230_dijkstra37_q = 32'b0;
        endcase
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46(BLACKBOX,20)@0
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_15_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_spec_select230_dijkstra37_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_spec_select23825_dijkstra36_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,98)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra15_dijkstra46_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,102)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,113)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra7_dijkstra38_out_intel_reserved_ffwd_2_0;

    // dupName_0_sync_out_x(GPOUT,114)@0
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_V0;

    // dupName_1_regfree_osync_x(GPOUT,115)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra8_dijkstra39_out_intel_reserved_ffwd_3_0;

    // dupName_2_regfree_osync_x(GPOUT,116)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra9_dijkstra40_out_intel_reserved_ffwd_4_0;

    // dupName_3_regfree_osync_x(GPOUT,117)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra10_dijkstra41_out_intel_reserved_ffwd_5_0;

    // dupName_4_regfree_osync_x(GPOUT,118)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra11_dijkstra42_out_intel_reserved_ffwd_6_0;

    // dupName_5_regfree_osync_x(GPOUT,119)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra12_dijkstra43_out_intel_reserved_ffwd_7_0;

    // dupName_6_regfree_osync_x(GPOUT,120)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra13_dijkstra44_out_intel_reserved_ffwd_8_0;

    // dupName_7_regfree_osync_x(GPOUT,121)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra14_dijkstra45_out_intel_reserved_ffwd_9_0;

endmodule
