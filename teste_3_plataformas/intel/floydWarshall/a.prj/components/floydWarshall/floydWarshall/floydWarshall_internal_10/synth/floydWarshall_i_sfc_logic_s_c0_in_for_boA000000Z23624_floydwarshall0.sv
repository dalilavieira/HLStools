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

// SystemVerilog created from floydWarshall_i_sfc_logic_s_c0_in_for_boA000000Z23624_floydwarshall0
// SystemVerilog created on Mon Apr  6 11:17:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module floydWarshall_i_sfc_logic_s_c0_in_for_boA000000Z23624_floydwarshall0 (
    input wire [63:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdata,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_writeack,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest,
    input wire [0:0] in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [31:0] out_intel_reserved_ffwd_10_0,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_address,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_enable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_read,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_write,
    output wire [63:0] out_unnamed_floydWarshall4_floydWarshall_avm_writedata,
    output wire [7:0] out_unnamed_floydWarshall4_floydWarshall_avm_byteenable,
    output wire [0:0] out_unnamed_floydWarshall4_floydWarshall_avm_burstcount,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [31:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    output wire [0:0] out_c0_exi3240_0_tpl,
    output wire [0:0] out_c0_exi3240_1_tpl,
    output wire [0:0] out_c0_exi3240_2_tpl,
    output wire [0:0] out_c0_exi3240_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_floydWarshall1,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [0:0] in_c0_eni5_2_tpl,
    input wire [0:0] in_c0_eni5_3_tpl,
    input wire [31:0] in_c0_eni5_4_tpl,
    input wire [0:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_1203_q;
    wire [31:0] c_i32_0205_q;
    wire [31:0] c_i32_1206_q;
    wire [2:0] c_i3_1212_q;
    wire [2:0] c_i3_2210_q;
    wire [1:0] i_cleanups_shl109_floydwarshall7_vt_join_q;
    wire [0:0] i_cleanups_shl109_floydwarshall7_vt_select_1_b;
    wire [0:0] i_forked102_and_floydwarshall3_qi;
    reg [0:0] i_forked102_and_floydwarshall3_q;
    wire [3:0] i_fpga_indvars_iv_next_floydwarshall114_a;
    wire [3:0] i_fpga_indvars_iv_next_floydwarshall114_b;
    logic [3:0] i_fpga_indvars_iv_next_floydwarshall114_o;
    wire [3:0] i_fpga_indvars_iv_next_floydwarshall114_q;
    wire [63:0] i_idxprom4_floydwarshall26_vt_join_q;
    wire [31:0] i_idxprom4_floydwarshall26_vt_select_31_b;
    wire [63:0] i_idxprom_floydwarshall24_vt_join_q;
    wire [31:0] i_idxprom_floydwarshall24_vt_select_31_b;
    wire [32:0] i_inc_floydwarshall104_a;
    wire [32:0] i_inc_floydwarshall104_b;
    logic [32:0] i_inc_floydwarshall104_o;
    wire [32:0] i_inc_floydwarshall104_q;
    wire [0:0] i_keep_going105_or_floydwarshall12_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a4i32_graph3110_floydwarshall27_out_dest_data_out_0_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall10_floydwarshall121_out_intel_reserved_ffwd_6_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall11_floydwarshall122_out_intel_reserved_ffwd_7_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall12_floydwarshall123_out_intel_reserved_ffwd_8_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall13_floydwarshall124_out_intel_reserved_ffwd_9_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall14_floydwarshall125_out_intel_reserved_ffwd_10_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall15_floydwarshall126_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall16_floydwarshall127_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall17_floydwarshall128_out_intel_reserved_ffwd_13_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall18_floydwarshall129_out_intel_reserved_ffwd_14_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall19_floydwarshall130_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall20_floydwarshall131_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall5_floydwarshall116_out_intel_reserved_ffwd_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall6_floydwarshall117_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall7_floydwarshall118_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall8_floydwarshall119_out_intel_reserved_ffwd_4_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall9_floydwarshall120_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_feedback_stall_out_30;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_feedback_stall_out_33;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_feedback_stall_out_35;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_feedback_stall_out_32;
    wire [31:0] i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_feedback_stall_out_36;
    wire [31:0] i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_feedback_stall_out_31;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11_out_feedback_valid_out_34;
    wire [0:0] i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9_out_feedback_out_33;
    wire [0:0] i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9_out_feedback_valid_out_33;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134_out_feedback_valid_out_35;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond115_floydwarshall110_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond115_floydwarshall110_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113_out_feedback_valid_out_32;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58_out_feedback_valid_out_30;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73_out_feedback_valid_out_22;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15_out_feedback_out_36;
    wire [0:0] i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15_out_feedback_valid_out_36;
    wire [31:0] i_llvm_fpga_push_i32_j_029_push31_floydwarshall105_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_j_029_push31_floydwarshall105_out_feedback_valid_out_31;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115_out_feedback_valid_out_14;
    wire [0:0] i_masked114_floydwarshall132_qi;
    reg [0:0] i_masked114_floydwarshall132_q;
    wire [0:0] i_next_cleanups113_floydwarshall112_s;
    reg [1:0] i_next_cleanups113_floydwarshall112_q;
    wire [0:0] i_notcmp101_floydwarshall109_q;
    wire [0:0] i_or112_floydwarshall111_q;
    wire [0:0] i_spec_select206_floydwarshall63_s;
    reg [31:0] i_spec_select206_floydwarshall63_q;
    wire [0:0] i_spec_select207_floydwarshall66_s;
    reg [31:0] i_spec_select207_floydwarshall66_q;
    wire [0:0] i_spec_select208_floydwarshall69_s;
    reg [31:0] i_spec_select208_floydwarshall69_q;
    wire [0:0] i_spec_select209_floydwarshall72_s;
    reg [31:0] i_spec_select209_floydwarshall72_q;
    wire [0:0] i_spec_select210_floydwarshall75_s;
    reg [31:0] i_spec_select210_floydwarshall75_q;
    wire [0:0] i_spec_select211_floydwarshall78_s;
    reg [31:0] i_spec_select211_floydwarshall78_q;
    wire [0:0] i_spec_select212_floydwarshall81_s;
    reg [31:0] i_spec_select212_floydwarshall81_q;
    wire [0:0] i_spec_select213_floydwarshall84_s;
    reg [31:0] i_spec_select213_floydwarshall84_q;
    wire [0:0] i_spec_select214_floydwarshall87_s;
    reg [31:0] i_spec_select214_floydwarshall87_q;
    wire [0:0] i_spec_select215_floydwarshall90_s;
    reg [31:0] i_spec_select215_floydwarshall90_q;
    wire [0:0] i_spec_select216_floydwarshall93_s;
    reg [31:0] i_spec_select216_floydwarshall93_q;
    wire [0:0] i_spec_select217_floydwarshall96_s;
    reg [31:0] i_spec_select217_floydwarshall96_q;
    wire [0:0] i_spec_select218_floydwarshall99_s;
    reg [31:0] i_spec_select218_floydwarshall99_q;
    wire [0:0] i_spec_select219_floydwarshall102_s;
    reg [31:0] i_spec_select219_floydwarshall102_q;
    wire [0:0] i_spec_select_floydwarshall57_s;
    reg [31:0] i_spec_select_floydwarshall57_q;
    wire [0:0] i_unnamed_floydwarshall16_qi;
    reg [0:0] i_unnamed_floydwarshall16_q;
    wire [0:0] i_unnamed_floydwarshall18_qi;
    reg [0:0] i_unnamed_floydwarshall18_q;
    wire [0:0] i_unnamed_floydwarshall20_qi;
    reg [0:0] i_unnamed_floydwarshall20_q;
    wire [0:0] i_unnamed_floydwarshall22_qi;
    reg [0:0] i_unnamed_floydwarshall22_q;
    wire [0:0] i_unnamed_floydwarshall30_qi;
    reg [0:0] i_unnamed_floydwarshall30_q;
    wire [0:0] i_unnamed_floydwarshall32_q;
    wire [0:0] i_unnamed_floydwarshall33_q;
    wire [0:0] i_unnamed_floydwarshall34_q;
    wire [0:0] i_unnamed_floydwarshall35_qi;
    reg [0:0] i_unnamed_floydwarshall35_q;
    wire [0:0] i_unnamed_floydwarshall37_q;
    wire [0:0] i_unnamed_floydwarshall38_q;
    wire [0:0] i_unnamed_floydwarshall39_q;
    wire [0:0] i_unnamed_floydwarshall40_qi;
    reg [0:0] i_unnamed_floydwarshall40_q;
    wire [0:0] i_unnamed_floydwarshall42_q;
    wire [0:0] i_unnamed_floydwarshall43_q;
    wire [0:0] i_unnamed_floydwarshall44_q;
    wire [0:0] i_unnamed_floydwarshall45_qi;
    reg [0:0] i_unnamed_floydwarshall45_q;
    wire [0:0] i_unnamed_floydwarshall47_q;
    wire [0:0] i_unnamed_floydwarshall48_q;
    wire [0:0] i_unnamed_floydwarshall49_q;
    wire [0:0] i_unnamed_floydwarshall50_q;
    wire [0:0] i_unnamed_floydwarshall51_q;
    wire [0:0] i_unnamed_floydwarshall52_q;
    wire [31:0] i_unnamed_floydwarshall53_q;
    wire [0:0] i_unnamed_floydwarshall54_qi;
    reg [0:0] i_unnamed_floydwarshall54_q;
    wire [0:0] i_unnamed_floydwarshall60_s;
    reg [31:0] i_unnamed_floydwarshall60_q;
    wire [0:0] i_xor111_floydwarshall6_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_floydwarshall114_sel_x_b;
    wire [31:0] bgTrunc_i_inc_floydwarshall104_sel_x_b;
    wire [31:0] c_i32_2207_recast_x_q;
    wire [31:0] c_i32_3208_recast_x_q;
    wire [64:0] i_arrayidx5_floydwarshall0_add_x_a;
    wire [64:0] i_arrayidx5_floydwarshall0_add_x_b;
    logic [64:0] i_arrayidx5_floydwarshall0_add_x_o;
    wire [64:0] i_arrayidx5_floydwarshall0_add_x_q;
    wire [64:0] i_arrayidx5_floydwarshall0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx5_floydwarshall0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx5_floydwarshall0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx5_floydwarshall0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx5_floydwarshall0_mult_extender_x_q;
    wire [58:0] i_arrayidx5_floydwarshall0_mult_multconst_x_q;
    wire [63:0] i_arrayidx5_floydwarshall0_trunc_sel_x_b;
    wire [127:0] i_arrayidx5_floydwarshall0_dupName_0_mult_extender_x_q;
    wire [60:0] i_arrayidx5_floydwarshall0_dupName_0_mult_multconst_x_q;
    wire [63:0] i_arrayidx5_floydwarshall0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_floydwarshall0_dupName_1_trunc_sel_x_b;
    wire [63:0] i_arrayidx5_floydwarshall0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup110_floydwarshall5_sel_x_b;
    wire [63:0] i_idxprom4_floydwarshall26_sel_x_b;
    wire [63:0] i_idxprom_floydwarshall24_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg36_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg37_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg38_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg39_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg40_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg41_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg42_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg44_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg45_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg46_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg47_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg48_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg49_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg50_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg51_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg52_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg53_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg54_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg55_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg56_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg57_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg58_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg59_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg60_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg61_q;
    wire [0:0] i_exitcond_floydwarshall107_cmp_nsign_q;
    wire [35:0] i_arrayidx5_floydwarshall0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx5_floydwarshall0_mult_x_sums_align_0_qint;
    wire [58:0] i_arrayidx5_floydwarshall0_mult_x_sums_join_1_q;
    wire [40:0] i_arrayidx5_floydwarshall0_mult_x_sums_align_2_q;
    wire [40:0] i_arrayidx5_floydwarshall0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx5_floydwarshall0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx5_floydwarshall0_mult_x_sums_align_3_qint;
    wire [68:0] i_arrayidx5_floydwarshall0_mult_x_sums_join_4_q;
    wire [69:0] i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_a;
    wire [69:0] i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_b;
    logic [69:0] i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_o;
    wire [69:0] i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_q;
    wire [35:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0_qint;
    wire [56:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_1_q;
    wire [38:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2_q;
    wire [38:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3_qint;
    wire [66:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_4_q;
    wire [67:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_a;
    wire [67:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_b;
    logic [67:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_o;
    wire [67:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid394_i_cleanups_shl109_floydwarshall0_shift_x_q;
    wire [0:0] leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_s;
    reg [1:0] leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_q;
    wire [13:0] i_arrayidx5_floydwarshall0_mult_x_im0_shift0_q;
    wire [13:0] i_arrayidx5_floydwarshall0_mult_x_im0_shift0_qint;
    wire [21:0] i_arrayidx5_floydwarshall0_mult_x_im3_shift0_q;
    wire [21:0] i_arrayidx5_floydwarshall0_mult_x_im3_shift0_qint;
    wire [21:0] i_arrayidx5_floydwarshall0_mult_x_im6_shift0_q;
    wire [21:0] i_arrayidx5_floydwarshall0_mult_x_im6_shift0_qint;
    wire [21:0] i_arrayidx5_floydwarshall0_mult_x_im9_shift0_q;
    wire [21:0] i_arrayidx5_floydwarshall0_mult_x_im9_shift0_qint;
    wire [11:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0_q;
    wire [11:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0_qint;
    wire [19:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0_q;
    wire [19:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0_qint;
    wire [19:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0_q;
    wire [19:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0_qint;
    wire [19:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0_q;
    wire [19:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0_qint;
    wire [9:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_e;
    wire [9:0] i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_b;
    wire [17:0] i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_c;
    wire [17:0] i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_d;
    wire [17:0] i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_e;
    reg [0:0] redist0_sync_together266_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [0:0] redist2_sync_together266_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [31:0] redist3_sync_together266_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [0:0] redist4_sync_together266_aunroll_x_in_c0_eni5_5_tpl_1_q;
    reg [0:0] redist5_sync_together266_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist6_sync_together266_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist6_sync_together266_aunroll_x_in_i_valid_6_delay_0;
    reg [0:0] redist6_sync_together266_aunroll_x_in_i_valid_6_delay_1;
    reg [0:0] redist6_sync_together266_aunroll_x_in_i_valid_6_delay_2;
    reg [0:0] redist6_sync_together266_aunroll_x_in_i_valid_6_delay_3;
    reg [63:0] redist7_i_arrayidx5_floydwarshall0_trunc_sel_x_b_1_q;
    reg [0:0] redist8_i_xor111_floydwarshall6_q_1_q;
    reg [0:0] redist9_i_xor111_floydwarshall6_q_6_q;
    reg [0:0] redist9_i_xor111_floydwarshall6_q_6_delay_0;
    reg [0:0] redist9_i_xor111_floydwarshall6_q_6_delay_1;
    reg [0:0] redist9_i_xor111_floydwarshall6_q_6_delay_2;
    reg [0:0] redist9_i_xor111_floydwarshall6_q_6_delay_3;
    reg [0:0] redist10_i_unnamed_floydwarshall54_q_6_q;
    reg [0:0] redist10_i_unnamed_floydwarshall54_q_6_delay_0;
    reg [0:0] redist10_i_unnamed_floydwarshall54_q_6_delay_1;
    reg [0:0] redist10_i_unnamed_floydwarshall54_q_6_delay_2;
    reg [0:0] redist10_i_unnamed_floydwarshall54_q_6_delay_3;
    reg [0:0] redist11_i_unnamed_floydwarshall45_q_5_q;
    reg [0:0] redist11_i_unnamed_floydwarshall45_q_5_delay_0;
    reg [0:0] redist11_i_unnamed_floydwarshall45_q_5_delay_1;
    reg [0:0] redist11_i_unnamed_floydwarshall45_q_5_delay_2;
    reg [0:0] redist12_i_unnamed_floydwarshall40_q_5_q;
    reg [0:0] redist12_i_unnamed_floydwarshall40_q_5_delay_0;
    reg [0:0] redist12_i_unnamed_floydwarshall40_q_5_delay_1;
    reg [0:0] redist12_i_unnamed_floydwarshall40_q_5_delay_2;
    reg [0:0] redist13_i_unnamed_floydwarshall35_q_5_q;
    reg [0:0] redist13_i_unnamed_floydwarshall35_q_5_delay_0;
    reg [0:0] redist13_i_unnamed_floydwarshall35_q_5_delay_1;
    reg [0:0] redist13_i_unnamed_floydwarshall35_q_5_delay_2;
    reg [0:0] redist14_i_unnamed_floydwarshall30_q_5_q;
    reg [0:0] redist14_i_unnamed_floydwarshall30_q_5_delay_0;
    reg [0:0] redist14_i_unnamed_floydwarshall30_q_5_delay_1;
    reg [0:0] redist14_i_unnamed_floydwarshall30_q_5_delay_2;
    reg [0:0] redist15_i_unnamed_floydwarshall22_q_6_q;
    reg [0:0] redist15_i_unnamed_floydwarshall22_q_6_delay_0;
    reg [0:0] redist15_i_unnamed_floydwarshall22_q_6_delay_1;
    reg [0:0] redist15_i_unnamed_floydwarshall22_q_6_delay_2;
    reg [0:0] redist15_i_unnamed_floydwarshall22_q_6_delay_3;
    reg [0:0] redist16_i_unnamed_floydwarshall20_q_6_q;
    reg [0:0] redist16_i_unnamed_floydwarshall20_q_6_delay_0;
    reg [0:0] redist16_i_unnamed_floydwarshall20_q_6_delay_1;
    reg [0:0] redist16_i_unnamed_floydwarshall20_q_6_delay_2;
    reg [0:0] redist16_i_unnamed_floydwarshall20_q_6_delay_3;
    reg [0:0] redist17_i_unnamed_floydwarshall18_q_6_q;
    reg [0:0] redist17_i_unnamed_floydwarshall18_q_6_delay_0;
    reg [0:0] redist17_i_unnamed_floydwarshall18_q_6_delay_1;
    reg [0:0] redist17_i_unnamed_floydwarshall18_q_6_delay_2;
    reg [0:0] redist17_i_unnamed_floydwarshall18_q_6_delay_3;
    reg [0:0] redist18_i_unnamed_floydwarshall16_q_6_q;
    reg [0:0] redist18_i_unnamed_floydwarshall16_q_6_delay_0;
    reg [0:0] redist18_i_unnamed_floydwarshall16_q_6_delay_1;
    reg [0:0] redist18_i_unnamed_floydwarshall16_q_6_delay_2;
    reg [0:0] redist18_i_unnamed_floydwarshall16_q_6_delay_3;
    reg [0:0] redist19_i_masked114_floydwarshall132_q_6_q;
    reg [0:0] redist19_i_masked114_floydwarshall132_q_6_delay_0;
    reg [0:0] redist19_i_masked114_floydwarshall132_q_6_delay_1;
    reg [0:0] redist19_i_masked114_floydwarshall132_q_6_delay_2;
    reg [0:0] redist19_i_masked114_floydwarshall132_q_6_delay_3;
    reg [31:0] redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_0;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_1;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_2;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_3;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_0;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_1;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_2;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_3;
    reg [0:0] redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_0;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_1;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_2;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_3;
    reg [0:0] redist28_i_forked102_and_floydwarshall3_q_6_q;
    reg [0:0] redist28_i_forked102_and_floydwarshall3_q_6_delay_0;
    reg [0:0] redist28_i_forked102_and_floydwarshall3_q_6_delay_1;
    reg [0:0] redist28_i_forked102_and_floydwarshall3_q_6_delay_2;
    reg [0:0] redist28_i_forked102_and_floydwarshall3_q_6_delay_3;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together266_aunroll_x_in_i_valid_1(DELAY,412)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together266_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist5_sync_together266_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1(DELAY,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x(BITSELECT,392)@2
    assign leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x_in = i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x_b = leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid394_i_cleanups_shl109_floydwarshall0_shift_x(BITJOIN,393)@2
    assign leftShiftStage0Idx1_uid394_i_cleanups_shl109_floydwarshall0_shift_x_q = {leftShiftStage0Idx1Rng1_uid393_i_cleanups_shl109_floydwarshall0_shift_x_b, GND_q};

    // leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x(MUX,395)@2
    assign leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_s or i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out or leftShiftStage0Idx1_uid394_i_cleanups_shl109_floydwarshall0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_s)
            1'b0 : leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_q = i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out;
            1'b1 : leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_q = leftShiftStage0Idx1_uid394_i_cleanups_shl109_floydwarshall0_shift_x_q;
            default : leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl109_floydwarshall7_vt_select_1(BITSELECT,82)@2
    assign i_cleanups_shl109_floydwarshall7_vt_select_1_b = leftShiftStage0_uid396_i_cleanups_shl109_floydwarshall0_shift_x_q[1:1];

    // i_cleanups_shl109_floydwarshall7_vt_join(BITJOIN,81)@2
    assign i_cleanups_shl109_floydwarshall7_vt_join_q = {i_cleanups_shl109_floydwarshall7_vt_select_1_b, GND_q};

    // i_xor111_floydwarshall6(LOGICAL,209)@2
    assign i_xor111_floydwarshall6_q = i_first_cleanup110_floydwarshall5_sel_x_b ^ VCC_q;

    // i_notcmp101_floydwarshall109(LOGICAL,166)@2
    assign i_notcmp101_floydwarshall109_q = i_exitcond_floydwarshall107_cmp_nsign_q ^ VCC_q;

    // i_or112_floydwarshall111(LOGICAL,167)@2
    assign i_or112_floydwarshall111_q = i_notcmp101_floydwarshall109_q | i_xor111_floydwarshall6_q;

    // i_next_cleanups113_floydwarshall112(MUX,165)@2
    assign i_next_cleanups113_floydwarshall112_s = i_or112_floydwarshall111_q;
    always @(i_next_cleanups113_floydwarshall112_s or i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out or i_cleanups_shl109_floydwarshall7_vt_join_q)
    begin
        unique case (i_next_cleanups113_floydwarshall112_s)
            1'b0 : i_next_cleanups113_floydwarshall112_q = i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out;
            1'b1 : i_next_cleanups113_floydwarshall112_q = i_cleanups_shl109_floydwarshall7_vt_join_q;
            default : i_next_cleanups113_floydwarshall112_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113(BLACKBOX,144)@2
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    floydWarshall_i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall0 thei_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113 (
        .in_data_in(i_next_cleanups113_floydwarshall112_q),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_feedback_stall_out_32),
        .in_keep_going105(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together266_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113_out_feedback_valid_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,408)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // c_i2_1203(CONSTANT,72)
    assign c_i2_1203_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4(BLACKBOX,135)@2
    // out out_feedback_stall_out_32@20000000
    floydWarshall_i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall0 thei_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4 (
        .in_data_in(c_i2_1203_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_32(i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_i2_cleanups108_push32_floydwarshall113_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together266_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_feedback_stall_out_32),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup110_floydwarshall5_sel_x(BITSELECT,278)@2
    assign i_first_cleanup110_floydwarshall5_sel_x_b = i_llvm_fpga_pop_i2_cleanups108_pop32_floydwarshall4_out_data_out[0:0];

    // c_i3_1212(CONSTANT,76)
    assign c_i3_1212_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_floydwarshall114(ADD,86)@2
    assign i_fpga_indvars_iv_next_floydwarshall114_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_data_out};
    assign i_fpga_indvars_iv_next_floydwarshall114_b = {1'b0, c_i3_1212_q};
    assign i_fpga_indvars_iv_next_floydwarshall114_o = $unsigned(i_fpga_indvars_iv_next_floydwarshall114_a) + $unsigned(i_fpga_indvars_iv_next_floydwarshall114_b);
    assign i_fpga_indvars_iv_next_floydwarshall114_q = i_fpga_indvars_iv_next_floydwarshall114_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_floydwarshall114_sel_x(BITSELECT,226)@2
    assign bgTrunc_i_fpga_indvars_iv_next_floydwarshall114_sel_x_b = i_fpga_indvars_iv_next_floydwarshall114_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115(BLACKBOX,163)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    floydWarshall_i_llvm_fpga_push_i3_fpga_iA000000Zush14_floydwarshall0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_floydwarshall114_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_feedback_stall_out_14),
        .in_keep_going105(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together266_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_2210(CONSTANT,77)
    assign c_i3_2210_q = $unsigned(3'b010);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106(BLACKBOX,138)@2
    // out out_feedback_stall_out_14@20000000
    floydWarshall_i_llvm_fpga_pop_i3_fpga_inA000000Zpop14_floydwarshall0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106 (
        .in_data_in(c_i3_2210_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i3_fpga_indvars_iv_push14_floydwarshall115_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together266_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_floydwarshall107_cmp_nsign(LOGICAL,352)@2
    assign i_exitcond_floydwarshall107_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop14_floydwarshall106_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond115_floydwarshall110(BLACKBOX,143)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    floydWarshall_i_llvm_fpga_push_i1_notexitcond115_floydwarshall0 thei_llvm_fpga_push_i1_notexitcond115_floydwarshall110 (
        .in_data_in(i_exitcond_floydwarshall107_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_not_exitcond_stall_out),
        .in_first_cleanup110(i_first_cleanup110_floydwarshall5_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together266_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond115_floydwarshall110_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond115_floydwarshall110_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,288)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13(BLACKBOX,141)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    floydWarshall_i_llvm_fpga_push_i1_lastiniteration107_floydwarshall0 thei_llvm_fpga_push_i1_lastiniteration107_floydwarshall13 (
        .in_data_in(GND_q),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_initeration_stall_out),
        .in_keep_going105(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going105_floydwarshall8(BLACKBOX,115)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    floydWarshall_i_llvm_fpga_pipeline_keep_going105_floydwarshall0 thei_llvm_fpga_pipeline_keep_going105_floydwarshall8 (
        .in_data_in(in_c0_eni5_2_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration107_floydwarshall13_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond115_floydwarshall110_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond115_floydwarshall110_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,79)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_valid_out = i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_exiting_stall_out = i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,221)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_pipeline_valid_out;

    // redist6_sync_together266_aunroll_x_in_i_valid_6(DELAY,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_0 <= '0;
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_1 <= '0;
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_2 <= '0;
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_3 <= '0;
            redist6_sync_together266_aunroll_x_in_i_valid_6_q <= '0;
        end
        else
        begin
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_0 <= $unsigned(redist5_sync_together266_aunroll_x_in_i_valid_1_q);
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_1 <= redist6_sync_together266_aunroll_x_in_i_valid_6_delay_0;
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_2 <= redist6_sync_together266_aunroll_x_in_i_valid_6_delay_1;
            redist6_sync_together266_aunroll_x_in_i_valid_6_delay_3 <= redist6_sync_together266_aunroll_x_in_i_valid_6_delay_2;
            redist6_sync_together266_aunroll_x_in_i_valid_6_q <= redist6_sync_together266_aunroll_x_in_i_valid_6_delay_3;
        end
    end

    // valid_fanout_reg53(REG,336)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg10(REG,293)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together266_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist8_i_xor111_floydwarshall6_q_1(DELAY,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_xor111_floydwarshall6_q_1_q <= '0;
        end
        else
        begin
            redist8_i_xor111_floydwarshall6_q_1_q <= $unsigned(i_xor111_floydwarshall6_q);
        end
    end

    // i_arrayidx5_floydwarshall0_dupName_0_mult_multconst_x(CONSTANT,270)
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_multconst_x_q = $unsigned(61'b0000000000000000000000000000000000000000000000000000000000000);

    // c_i32_0205(CONSTANT,73)
    assign c_i32_0205_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg8(REG,291)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg43(REG,326)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg43_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg43_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1206(CONSTANT,74)
    assign c_i32_1206_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_floydwarshall104(ADD,95)@2
    assign i_inc_floydwarshall104_a = {1'b0, i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out};
    assign i_inc_floydwarshall104_b = {1'b0, c_i32_1206_q};
    assign i_inc_floydwarshall104_o = $unsigned(i_inc_floydwarshall104_a) + $unsigned(i_inc_floydwarshall104_b);
    assign i_inc_floydwarshall104_q = i_inc_floydwarshall104_o[32:0];

    // bgTrunc_i_inc_floydwarshall104_sel_x(BITSELECT,227)@2
    assign bgTrunc_i_inc_floydwarshall104_sel_x_b = i_inc_floydwarshall104_q[31:0];

    // i_llvm_fpga_push_i32_j_029_push31_floydwarshall105(BLACKBOX,162)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    floydWarshall_i_llvm_fpga_push_i32_j_029_push31_floydwarshall0 thei_llvm_fpga_push_i32_j_029_push31_floydwarshall105 (
        .in_data_in(bgTrunc_i_inc_floydwarshall104_sel_x_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_feedback_stall_out_31),
        .in_keep_going105(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_j_029_push31_floydwarshall105_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_j_029_push31_floydwarshall105_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25(BLACKBOX,137)@2
    // out out_feedback_stall_out_31@20000000
    floydWarshall_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall0 thei_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_j_029_push31_floydwarshall105_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_j_029_push31_floydwarshall105_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1(DELAY,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out);
        end
    end

    // i_idxprom4_floydwarshall26_sel_x(BITSELECT,279)@3
    assign i_idxprom4_floydwarshall26_sel_x_b = {32'b00000000000000000000000000000000, redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q[31:0]};

    // i_idxprom4_floydwarshall26_vt_select_31(BITSELECT,90)@3
    assign i_idxprom4_floydwarshall26_vt_select_31_b = i_idxprom4_floydwarshall26_sel_x_b[31:0];

    // i_idxprom4_floydwarshall26_vt_join(BITJOIN,89)@3
    assign i_idxprom4_floydwarshall26_vt_join_q = {c_i32_0205_q, i_idxprom4_floydwarshall26_vt_select_31_b};

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select(BITSELECT,405)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_b = i_idxprom4_floydwarshall26_vt_join_q[63:54];
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_c = i_idxprom4_floydwarshall26_vt_join_q[53:36];
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_d = i_idxprom4_floydwarshall26_vt_join_q[35:18];
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_e = i_idxprom4_floydwarshall26_vt_join_q[17:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0(BITSHIFT,401)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0_qint = { i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_b, 2'b00 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0_qint[11:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3(BITSHIFT,386)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx5_floydwarshall0_dupName_0_mult_x_im0_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0(BITSHIFT,403)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0_qint = { i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_d, 2'b00 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0_qint[19:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2(BITSHIFT,385)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx5_floydwarshall0_dupName_0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2_qint[38:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_4(BITJOIN,387)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_4_q = {i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_3_q, i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_2_q};

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0(BITSHIFT,402)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0_qint = { i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_c, 2'b00 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0_qint[19:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0(BITSHIFT,383)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx5_floydwarshall0_dupName_0_mult_x_im3_shift0_q}, 15'b000000000000000 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0(BITSHIFT,404)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0_qint = { i_arrayidx5_floydwarshall0_dupName_0_mult_x_bs1_merged_bit_select_e, 2'b00 };
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0_qint[19:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_1(BITJOIN,384)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_1_q = {i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_align_0_q, {1'b0, i_arrayidx5_floydwarshall0_dupName_0_mult_x_im9_shift0_q}};

    // i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0(ADD,388)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_1_q};
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_join_4_q};
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_q = i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_o[67:0];

    // i_arrayidx5_floydwarshall0_dupName_0_mult_extender_x(BITJOIN,269)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_mult_extender_x_q = {i_arrayidx5_floydwarshall0_dupName_0_mult_multconst_x_q, i_arrayidx5_floydwarshall0_dupName_0_mult_x_sums_result_add_0_0_q[66:0]};

    // i_arrayidx5_floydwarshall0_dupName_1_trunc_sel_x(BITSELECT,272)@3
    assign i_arrayidx5_floydwarshall0_dupName_1_trunc_sel_x_b = i_arrayidx5_floydwarshall0_dupName_0_mult_extender_x_q[63:0];

    // i_arrayidx5_floydwarshall0_mult_multconst_x(CONSTANT,267)
    assign i_arrayidx5_floydwarshall0_mult_multconst_x_q = $unsigned(59'b00000000000000000000000000000000000000000000000000000000000);

    // valid_fanout_reg6(REG,289)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg7(REG,290)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15(BLACKBOX,161)@2
    // out out_feedback_out_36@20000000
    // out out_feedback_valid_out_36@20000000
    floydWarshall_i_llvm_fpga_push_i32_i_030A000000Zush36_floydwarshall0 thei_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15 (
        .in_data_in(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out),
        .in_feedback_stall_in_36(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_feedback_stall_out_36),
        .in_keep_going105(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_36(i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15_out_feedback_out_36),
        .out_feedback_valid_out_36(i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15_out_feedback_valid_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together266_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,410)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together266_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together266_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14(BLACKBOX,136)@2
    // out out_feedback_stall_out_36@20000000
    floydWarshall_i_llvm_fpga_pop_i32_i_030_A000000Zpop36_floydwarshall0 thei_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14 (
        .in_data_in(redist3_sync_together266_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_36(i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15_out_feedback_out_36),
        .in_feedback_valid_in_36(i_llvm_fpga_push_i32_i_030_pop13146_push36_floydwarshall15_out_feedback_valid_out_36),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out),
        .out_feedback_stall_out_36(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_feedback_stall_out_36),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_floydwarshall24_sel_x(BITSELECT,280)@2
    assign i_idxprom_floydwarshall24_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out[31:0]};

    // i_idxprom_floydwarshall24_vt_select_31(BITSELECT,94)@2
    assign i_idxprom_floydwarshall24_vt_select_31_b = i_idxprom_floydwarshall24_sel_x_b[31:0];

    // i_idxprom_floydwarshall24_vt_join(BITJOIN,93)@2
    assign i_idxprom_floydwarshall24_vt_join_q = {c_i32_0205_q, i_idxprom_floydwarshall24_vt_select_31_b};

    // i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select(BITSELECT,406)@2
    assign i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_b = i_idxprom_floydwarshall24_vt_join_q[63:54];
    assign i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_c = i_idxprom_floydwarshall24_vt_join_q[53:36];
    assign i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_d = i_idxprom_floydwarshall24_vt_join_q[35:18];
    assign i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_e = i_idxprom_floydwarshall24_vt_join_q[17:0];

    // i_arrayidx5_floydwarshall0_mult_x_im0_shift0(BITSHIFT,397)@2
    assign i_arrayidx5_floydwarshall0_mult_x_im0_shift0_qint = { i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_b, 4'b0000 };
    assign i_arrayidx5_floydwarshall0_mult_x_im0_shift0_q = i_arrayidx5_floydwarshall0_mult_x_im0_shift0_qint[13:0];

    // i_arrayidx5_floydwarshall0_mult_x_sums_align_3(BITSHIFT,368)@2
    assign i_arrayidx5_floydwarshall0_mult_x_sums_align_3_qint = { {1'b0, i_arrayidx5_floydwarshall0_mult_x_im0_shift0_q}, 13'b0000000000000 };
    assign i_arrayidx5_floydwarshall0_mult_x_sums_align_3_q = i_arrayidx5_floydwarshall0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx5_floydwarshall0_mult_x_im6_shift0(BITSHIFT,399)@2
    assign i_arrayidx5_floydwarshall0_mult_x_im6_shift0_qint = { i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_d, 4'b0000 };
    assign i_arrayidx5_floydwarshall0_mult_x_im6_shift0_q = i_arrayidx5_floydwarshall0_mult_x_im6_shift0_qint[21:0];

    // i_arrayidx5_floydwarshall0_mult_x_sums_align_2(BITSHIFT,367)@2
    assign i_arrayidx5_floydwarshall0_mult_x_sums_align_2_qint = { {1'b0, i_arrayidx5_floydwarshall0_mult_x_im6_shift0_q}, 18'b000000000000000000 };
    assign i_arrayidx5_floydwarshall0_mult_x_sums_align_2_q = i_arrayidx5_floydwarshall0_mult_x_sums_align_2_qint[40:0];

    // i_arrayidx5_floydwarshall0_mult_x_sums_join_4(BITJOIN,369)@2
    assign i_arrayidx5_floydwarshall0_mult_x_sums_join_4_q = {i_arrayidx5_floydwarshall0_mult_x_sums_align_3_q, i_arrayidx5_floydwarshall0_mult_x_sums_align_2_q};

    // i_arrayidx5_floydwarshall0_mult_x_im3_shift0(BITSHIFT,398)@2
    assign i_arrayidx5_floydwarshall0_mult_x_im3_shift0_qint = { i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_c, 4'b0000 };
    assign i_arrayidx5_floydwarshall0_mult_x_im3_shift0_q = i_arrayidx5_floydwarshall0_mult_x_im3_shift0_qint[21:0];

    // i_arrayidx5_floydwarshall0_mult_x_sums_align_0(BITSHIFT,365)@2
    assign i_arrayidx5_floydwarshall0_mult_x_sums_align_0_qint = { {1'b0, i_arrayidx5_floydwarshall0_mult_x_im3_shift0_q}, 13'b0000000000000 };
    assign i_arrayidx5_floydwarshall0_mult_x_sums_align_0_q = i_arrayidx5_floydwarshall0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx5_floydwarshall0_mult_x_im9_shift0(BITSHIFT,400)@2
    assign i_arrayidx5_floydwarshall0_mult_x_im9_shift0_qint = { i_arrayidx5_floydwarshall0_mult_x_bs1_merged_bit_select_e, 4'b0000 };
    assign i_arrayidx5_floydwarshall0_mult_x_im9_shift0_q = i_arrayidx5_floydwarshall0_mult_x_im9_shift0_qint[21:0];

    // i_arrayidx5_floydwarshall0_mult_x_sums_join_1(BITJOIN,366)@2
    assign i_arrayidx5_floydwarshall0_mult_x_sums_join_1_q = {i_arrayidx5_floydwarshall0_mult_x_sums_align_0_q, {1'b0, i_arrayidx5_floydwarshall0_mult_x_im9_shift0_q}};

    // i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0(ADD,370)@2
    assign i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx5_floydwarshall0_mult_x_sums_join_1_q};
    assign i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx5_floydwarshall0_mult_x_sums_join_4_q};
    assign i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_q = i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_o[69:0];

    // i_arrayidx5_floydwarshall0_mult_extender_x(BITJOIN,266)@2
    assign i_arrayidx5_floydwarshall0_mult_extender_x_q = {i_arrayidx5_floydwarshall0_mult_multconst_x_q, i_arrayidx5_floydwarshall0_mult_x_sums_result_add_0_0_q[68:0]};

    // i_arrayidx5_floydwarshall0_trunc_sel_x(BITSELECT,268)@2
    assign i_arrayidx5_floydwarshall0_trunc_sel_x_b = i_arrayidx5_floydwarshall0_mult_extender_x_q[63:0];

    // redist7_i_arrayidx5_floydwarshall0_trunc_sel_x_b_1(DELAY,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx5_floydwarshall0_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx5_floydwarshall0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx5_floydwarshall0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg9(REG,292)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together266_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a4i32_graph3110_floydwarshall27(BLACKBOX,97)@3
    floydWarshall_i_llvm_fpga_ffwd_dest_p102A000000Zh3110_floydwarshall0 thei_llvm_fpga_ffwd_dest_p1024a4i32_graph3110_floydwarshall27 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a4i32_graph3110_floydwarshall27_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx5_floydwarshall0_add_x(ADD,254)@3
    assign i_arrayidx5_floydwarshall0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a4i32_graph3110_floydwarshall27_out_dest_data_out_0_0};
    assign i_arrayidx5_floydwarshall0_add_x_b = {1'b0, redist7_i_arrayidx5_floydwarshall0_trunc_sel_x_b_1_q};
    assign i_arrayidx5_floydwarshall0_add_x_o = $unsigned(i_arrayidx5_floydwarshall0_add_x_a) + $unsigned(i_arrayidx5_floydwarshall0_add_x_b);
    assign i_arrayidx5_floydwarshall0_add_x_q = i_arrayidx5_floydwarshall0_add_x_o[64:0];

    // i_arrayidx5_floydwarshall0_dupName_0_trunc_sel_x(BITSELECT,271)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_trunc_sel_x_b = i_arrayidx5_floydwarshall0_add_x_q[63:0];

    // i_arrayidx5_floydwarshall0_dupName_0_add_x(ADD,261)@3
    assign i_arrayidx5_floydwarshall0_dupName_0_add_x_a = {1'b0, i_arrayidx5_floydwarshall0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx5_floydwarshall0_dupName_0_add_x_b = {1'b0, i_arrayidx5_floydwarshall0_dupName_1_trunc_sel_x_b};
    assign i_arrayidx5_floydwarshall0_dupName_0_add_x_o = $unsigned(i_arrayidx5_floydwarshall0_dupName_0_add_x_a) + $unsigned(i_arrayidx5_floydwarshall0_dupName_0_add_x_b);
    assign i_arrayidx5_floydwarshall0_dupName_0_add_x_q = i_arrayidx5_floydwarshall0_dupName_0_add_x_o[64:0];

    // i_arrayidx5_floydwarshall0_dupName_2_trunc_sel_x(BITSELECT,273)@3
    assign i_arrayidx5_floydwarshall0_dupName_2_trunc_sel_x_b = i_arrayidx5_floydwarshall0_dupName_0_add_x_q[63:0];

    // i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29(BLACKBOX,114)@3
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_unnamed_floydWarshall4_floydWarshall_avm_address@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_burstcount@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_byteenable@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_enable@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_read@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_write@20000000
    // out out_unnamed_floydWarshall4_floydWarshall_avm_writedata@20000000
    floydWarshall_i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall0 thei_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx5_floydwarshall0_dupName_2_trunc_sel_x_b),
        .in_i_predicate(redist8_i_xor111_floydwarshall6_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdata(in_unnamed_floydWarshall4_floydWarshall_avm_readdata),
        .in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid(in_unnamed_floydWarshall4_floydWarshall_avm_readdatavalid),
        .in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest(in_unnamed_floydWarshall4_floydWarshall_avm_waitrequest),
        .in_unnamed_floydWarshall4_floydWarshall_avm_writeack(in_unnamed_floydWarshall4_floydWarshall_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_floydWarshall4_floydWarshall_avm_address(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_address),
        .out_unnamed_floydWarshall4_floydWarshall_avm_burstcount(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount),
        .out_unnamed_floydWarshall4_floydWarshall_avm_byteenable(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_enable(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_enable),
        .out_unnamed_floydWarshall4_floydWarshall_avm_read(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_read),
        .out_unnamed_floydWarshall4_floydWarshall_avm_write(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_write),
        .out_unnamed_floydWarshall4_floydWarshall_avm_writedata(i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg29(REG,312)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg30(REG,313)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg3(REG,286)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,287)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist5_sync_together266_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2(DELAY,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2_q <= $unsigned(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11(BLACKBOX,139)@3
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    floydWarshall_i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall0 thei_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11 (
        .in_data_in(redist23_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_1_q),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_feedback_stall_out_34),
        .in_keep_going105(redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together266_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,409)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together266_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together266_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10(BLACKBOX,132)@2
    // out out_feedback_stall_out_34@20000000
    floydWarshall_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall0 thei_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10 (
        .in_data_in(redist2_sync_together266_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i1_exitcond3144_push34_floydwarshall11_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_1(DELAY,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out);
        end
    end

    // redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6(DELAY,431)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_0 <= '0;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_1 <= '0;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_2 <= '0;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_3 <= '0;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_0 <= $unsigned(redist23_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_1_q);
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_1 <= redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_0;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_2 <= redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_1;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_3 <= redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_2;
            redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_q <= redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_delay_3;
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7(DELAY,434)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_0 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_1 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_2 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_3 <= '0;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_0 <= $unsigned(redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2_q);
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_1 <= redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_0;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_2 <= redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_1;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_3 <= redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_2;
            redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_q <= redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_delay_3;
        end
    end

    // i_keep_going105_or_floydwarshall12(LOGICAL,96)@8
    assign i_keep_going105_or_floydwarshall12_q = redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_q | redist24_i_llvm_fpga_pop_i1_exitcond3144_pop34_floydwarshall10_out_data_out_6_q;

    // i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85(BLACKBOX,157)@8
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85 (
        .in_data_in(i_spec_select213_floydwarshall84_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_feedback_stall_out_17),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,284)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,285)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9(BLACKBOX,140)@2
    // out out_feedback_out_33@20000000
    // out out_feedback_valid_out_33@20000000
    floydWarshall_i_llvm_fpga_push_i1_forked141143_push33_floydwarshall0 thei_llvm_fpga_push_i1_forked141143_push33_floydwarshall9 (
        .in_data_in(i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_data_out),
        .in_feedback_stall_in_33(i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_feedback_stall_out_33),
        .in_keep_going105(redist25_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_33(i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9_out_feedback_out_33),
        .out_feedback_valid_out_33(i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9_out_feedback_valid_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together266_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,407)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together266_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together266_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2(BLACKBOX,133)@2
    // out out_feedback_stall_out_33@20000000
    floydWarshall_i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall0 thei_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2 (
        .in_data_in(redist0_sync_together266_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_33(i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9_out_feedback_out_33),
        .in_feedback_valid_in_33(i_llvm_fpga_push_i1_forked141143_push33_floydwarshall9_out_feedback_valid_out_33),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_data_out),
        .out_feedback_stall_out_33(i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_feedback_stall_out_33),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked102_and_floydwarshall3(LOGICAL,85)@2 + 1
    assign i_forked102_and_floydwarshall3_qi = redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q & i_llvm_fpga_pop_i1_forked141143_pop33_floydwarshall2_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked102_and_floydwarshall3_delay ( .xin(i_forked102_and_floydwarshall3_qi), .xout(i_forked102_and_floydwarshall3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist28_i_forked102_and_floydwarshall3_q_6(DELAY,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_forked102_and_floydwarshall3_q_6_delay_0 <= '0;
            redist28_i_forked102_and_floydwarshall3_q_6_delay_1 <= '0;
            redist28_i_forked102_and_floydwarshall3_q_6_delay_2 <= '0;
            redist28_i_forked102_and_floydwarshall3_q_6_delay_3 <= '0;
            redist28_i_forked102_and_floydwarshall3_q_6_q <= '0;
        end
        else
        begin
            redist28_i_forked102_and_floydwarshall3_q_6_delay_0 <= $unsigned(i_forked102_and_floydwarshall3_q);
            redist28_i_forked102_and_floydwarshall3_q_6_delay_1 <= redist28_i_forked102_and_floydwarshall3_q_6_delay_0;
            redist28_i_forked102_and_floydwarshall3_q_6_delay_2 <= redist28_i_forked102_and_floydwarshall3_q_6_delay_1;
            redist28_i_forked102_and_floydwarshall3_q_6_delay_3 <= redist28_i_forked102_and_floydwarshall3_q_6_delay_2;
            redist28_i_forked102_and_floydwarshall3_q_6_q <= redist28_i_forked102_and_floydwarshall3_q_6_delay_3;
        end
    end

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83(BLACKBOX,128)@8
    // out out_feedback_stall_out_17@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop17_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_a_sroa_67_1_push17_floydwarshall85_out_feedback_valid_out_17),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3208_recast_x(CONSTANT,231)
    assign c_i32_3208_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_floydwarshall22(LOGICAL,186)@2 + 1
    assign i_unnamed_floydwarshall22_qi = $unsigned(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out == c_i32_3208_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall22_delay ( .xin(i_unnamed_floydwarshall22_qi), .xout(i_unnamed_floydwarshall22_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_i_unnamed_floydwarshall22_q_6(DELAY,422)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_unnamed_floydwarshall22_q_6_delay_0 <= '0;
            redist15_i_unnamed_floydwarshall22_q_6_delay_1 <= '0;
            redist15_i_unnamed_floydwarshall22_q_6_delay_2 <= '0;
            redist15_i_unnamed_floydwarshall22_q_6_delay_3 <= '0;
            redist15_i_unnamed_floydwarshall22_q_6_q <= '0;
        end
        else
        begin
            redist15_i_unnamed_floydwarshall22_q_6_delay_0 <= $unsigned(i_unnamed_floydwarshall22_q);
            redist15_i_unnamed_floydwarshall22_q_6_delay_1 <= redist15_i_unnamed_floydwarshall22_q_6_delay_0;
            redist15_i_unnamed_floydwarshall22_q_6_delay_2 <= redist15_i_unnamed_floydwarshall22_q_6_delay_1;
            redist15_i_unnamed_floydwarshall22_q_6_delay_3 <= redist15_i_unnamed_floydwarshall22_q_6_delay_2;
            redist15_i_unnamed_floydwarshall22_q_6_q <= redist15_i_unnamed_floydwarshall22_q_6_delay_3;
        end
    end

    // i_unnamed_floydwarshall40(LOGICAL,195)@3 + 1
    assign i_unnamed_floydwarshall40_qi = $unsigned(redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q == c_i32_1206_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall40_delay ( .xin(i_unnamed_floydwarshall40_qi), .xout(i_unnamed_floydwarshall40_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist12_i_unnamed_floydwarshall40_q_5(DELAY,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_unnamed_floydwarshall40_q_5_delay_0 <= '0;
            redist12_i_unnamed_floydwarshall40_q_5_delay_1 <= '0;
            redist12_i_unnamed_floydwarshall40_q_5_delay_2 <= '0;
            redist12_i_unnamed_floydwarshall40_q_5_q <= '0;
        end
        else
        begin
            redist12_i_unnamed_floydwarshall40_q_5_delay_0 <= $unsigned(i_unnamed_floydwarshall40_q);
            redist12_i_unnamed_floydwarshall40_q_5_delay_1 <= redist12_i_unnamed_floydwarshall40_q_5_delay_0;
            redist12_i_unnamed_floydwarshall40_q_5_delay_2 <= redist12_i_unnamed_floydwarshall40_q_5_delay_1;
            redist12_i_unnamed_floydwarshall40_q_5_q <= redist12_i_unnamed_floydwarshall40_q_5_delay_2;
        end
    end

    // i_unnamed_floydwarshall42(LOGICAL,196)@8
    assign i_unnamed_floydwarshall42_q = redist12_i_unnamed_floydwarshall40_q_5_q & redist15_i_unnamed_floydwarshall22_q_6_q;

    // i_spec_select213_floydwarshall84(MUX,175)@8
    assign i_spec_select213_floydwarshall84_s = i_unnamed_floydwarshall42_q;
    always @(i_spec_select213_floydwarshall84_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select213_floydwarshall84_s)
            1'b0 : i_spec_select213_floydwarshall84_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_67_1_pop17_floydwarshall83_out_data_out;
            1'b1 : i_spec_select213_floydwarshall84_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select213_floydwarshall84_q = 32'b0;
        endcase
    end

    // redist9_i_xor111_floydwarshall6_q_6(DELAY,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_xor111_floydwarshall6_q_6_delay_0 <= '0;
            redist9_i_xor111_floydwarshall6_q_6_delay_1 <= '0;
            redist9_i_xor111_floydwarshall6_q_6_delay_2 <= '0;
            redist9_i_xor111_floydwarshall6_q_6_delay_3 <= '0;
            redist9_i_xor111_floydwarshall6_q_6_q <= '0;
        end
        else
        begin
            redist9_i_xor111_floydwarshall6_q_6_delay_0 <= $unsigned(redist8_i_xor111_floydwarshall6_q_1_q);
            redist9_i_xor111_floydwarshall6_q_6_delay_1 <= redist9_i_xor111_floydwarshall6_q_6_delay_0;
            redist9_i_xor111_floydwarshall6_q_6_delay_2 <= redist9_i_xor111_floydwarshall6_q_6_delay_1;
            redist9_i_xor111_floydwarshall6_q_6_delay_3 <= redist9_i_xor111_floydwarshall6_q_6_delay_2;
            redist9_i_xor111_floydwarshall6_q_6_q <= redist9_i_xor111_floydwarshall6_q_6_delay_3;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall14_floydwarshall125(BLACKBOX,102)@8
    // out out_intel_reserved_ffwd_10_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall14_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall14_floydwarshall125 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_10_0(i_spec_select213_floydwarshall84_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall14_floydwarshall125_out_intel_reserved_ffwd_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,224)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall14_floydwarshall125_out_intel_reserved_ffwd_10_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,233)
    assign out_unnamed_floydWarshall4_floydWarshall_avm_address = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_address;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_enable = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_enable;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_read = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_read;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_write = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_write;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_writedata = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_writedata;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_byteenable = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_byteenable;
    assign out_unnamed_floydWarshall4_floydWarshall_avm_burstcount = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_unnamed_floydWarshall4_floydWarshall_avm_burstcount;

    // valid_fanout_reg54(REG,337)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg31(REG,314)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg32(REG,315)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88(BLACKBOX,150)@8
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88 (
        .in_data_in(i_spec_select214_floydwarshall87_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_feedback_stall_out_24),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86(BLACKBOX,121)@8
    // out out_feedback_stall_out_24@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop24_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_a_sroa_32_1_push24_floydwarshall88_out_feedback_valid_out_24),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall18(LOGICAL,184)@2 + 1
    assign i_unnamed_floydwarshall18_qi = $unsigned(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out == c_i32_1206_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall18_delay ( .xin(i_unnamed_floydwarshall18_qi), .xout(i_unnamed_floydwarshall18_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist17_i_unnamed_floydwarshall18_q_6(DELAY,424)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_unnamed_floydwarshall18_q_6_delay_0 <= '0;
            redist17_i_unnamed_floydwarshall18_q_6_delay_1 <= '0;
            redist17_i_unnamed_floydwarshall18_q_6_delay_2 <= '0;
            redist17_i_unnamed_floydwarshall18_q_6_delay_3 <= '0;
            redist17_i_unnamed_floydwarshall18_q_6_q <= '0;
        end
        else
        begin
            redist17_i_unnamed_floydwarshall18_q_6_delay_0 <= $unsigned(i_unnamed_floydwarshall18_q);
            redist17_i_unnamed_floydwarshall18_q_6_delay_1 <= redist17_i_unnamed_floydwarshall18_q_6_delay_0;
            redist17_i_unnamed_floydwarshall18_q_6_delay_2 <= redist17_i_unnamed_floydwarshall18_q_6_delay_1;
            redist17_i_unnamed_floydwarshall18_q_6_delay_3 <= redist17_i_unnamed_floydwarshall18_q_6_delay_2;
            redist17_i_unnamed_floydwarshall18_q_6_q <= redist17_i_unnamed_floydwarshall18_q_6_delay_3;
        end
    end

    // c_i32_2207_recast_x(CONSTANT,230)
    assign c_i32_2207_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_floydwarshall35(LOGICAL,191)@3 + 1
    assign i_unnamed_floydwarshall35_qi = $unsigned(redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q == c_i32_2207_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall35_delay ( .xin(i_unnamed_floydwarshall35_qi), .xout(i_unnamed_floydwarshall35_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist13_i_unnamed_floydwarshall35_q_5(DELAY,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_unnamed_floydwarshall35_q_5_delay_0 <= '0;
            redist13_i_unnamed_floydwarshall35_q_5_delay_1 <= '0;
            redist13_i_unnamed_floydwarshall35_q_5_delay_2 <= '0;
            redist13_i_unnamed_floydwarshall35_q_5_q <= '0;
        end
        else
        begin
            redist13_i_unnamed_floydwarshall35_q_5_delay_0 <= $unsigned(i_unnamed_floydwarshall35_q);
            redist13_i_unnamed_floydwarshall35_q_5_delay_1 <= redist13_i_unnamed_floydwarshall35_q_5_delay_0;
            redist13_i_unnamed_floydwarshall35_q_5_delay_2 <= redist13_i_unnamed_floydwarshall35_q_5_delay_1;
            redist13_i_unnamed_floydwarshall35_q_5_q <= redist13_i_unnamed_floydwarshall35_q_5_delay_2;
        end
    end

    // i_unnamed_floydwarshall39(LOGICAL,194)@8
    assign i_unnamed_floydwarshall39_q = redist13_i_unnamed_floydwarshall35_q_5_q & redist17_i_unnamed_floydwarshall18_q_6_q;

    // i_spec_select214_floydwarshall87(MUX,176)@8
    assign i_spec_select214_floydwarshall87_s = i_unnamed_floydwarshall39_q;
    always @(i_spec_select214_floydwarshall87_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select214_floydwarshall87_s)
            1'b0 : i_spec_select214_floydwarshall87_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_32_1_pop24_floydwarshall86_out_data_out;
            1'b1 : i_spec_select214_floydwarshall87_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select214_floydwarshall87_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall15_floydwarshall126(BLACKBOX,103)@8
    // out out_intel_reserved_ffwd_11_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall15_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall15_floydwarshall126 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_11_0(i_spec_select214_floydwarshall87_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall15_floydwarshall126_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,234)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall15_floydwarshall126_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg55(REG,338)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg33(REG,316)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg34(REG,317)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91(BLACKBOX,154)@8
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91 (
        .in_data_in(i_spec_select215_floydwarshall90_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_feedback_stall_out_20),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89(BLACKBOX,125)@8
    // out out_feedback_stall_out_20@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop20_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_20(i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i32_a_sroa_52_1_push20_floydwarshall91_out_feedback_valid_out_20),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall20(LOGICAL,185)@2 + 1
    assign i_unnamed_floydwarshall20_qi = $unsigned(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out == c_i32_2207_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall20_delay ( .xin(i_unnamed_floydwarshall20_qi), .xout(i_unnamed_floydwarshall20_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_unnamed_floydwarshall20_q_6(DELAY,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_unnamed_floydwarshall20_q_6_delay_0 <= '0;
            redist16_i_unnamed_floydwarshall20_q_6_delay_1 <= '0;
            redist16_i_unnamed_floydwarshall20_q_6_delay_2 <= '0;
            redist16_i_unnamed_floydwarshall20_q_6_delay_3 <= '0;
            redist16_i_unnamed_floydwarshall20_q_6_q <= '0;
        end
        else
        begin
            redist16_i_unnamed_floydwarshall20_q_6_delay_0 <= $unsigned(i_unnamed_floydwarshall20_q);
            redist16_i_unnamed_floydwarshall20_q_6_delay_1 <= redist16_i_unnamed_floydwarshall20_q_6_delay_0;
            redist16_i_unnamed_floydwarshall20_q_6_delay_2 <= redist16_i_unnamed_floydwarshall20_q_6_delay_1;
            redist16_i_unnamed_floydwarshall20_q_6_delay_3 <= redist16_i_unnamed_floydwarshall20_q_6_delay_2;
            redist16_i_unnamed_floydwarshall20_q_6_q <= redist16_i_unnamed_floydwarshall20_q_6_delay_3;
        end
    end

    // i_unnamed_floydwarshall38(LOGICAL,193)@8
    assign i_unnamed_floydwarshall38_q = redist13_i_unnamed_floydwarshall35_q_5_q & redist16_i_unnamed_floydwarshall20_q_6_q;

    // i_spec_select215_floydwarshall90(MUX,177)@8
    assign i_spec_select215_floydwarshall90_s = i_unnamed_floydwarshall38_q;
    always @(i_spec_select215_floydwarshall90_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select215_floydwarshall90_s)
            1'b0 : i_spec_select215_floydwarshall90_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_52_1_pop20_floydwarshall89_out_data_out;
            1'b1 : i_spec_select215_floydwarshall90_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select215_floydwarshall90_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall16_floydwarshall127(BLACKBOX,104)@8
    // out out_intel_reserved_ffwd_12_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall16_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall16_floydwarshall127 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_12_0(i_spec_select215_floydwarshall90_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall16_floydwarshall127_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,239)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall16_floydwarshall127_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg56(REG,339)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg35(REG,318)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg36(REG,319)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94(BLACKBOX,158)@8
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94 (
        .in_data_in(i_spec_select216_floydwarshall93_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_feedback_stall_out_16),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92(BLACKBOX,129)@8
    // out out_feedback_stall_out_16@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop16_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_a_sroa_72_1_push16_floydwarshall94_out_feedback_valid_out_16),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall37(LOGICAL,192)@8
    assign i_unnamed_floydwarshall37_q = redist13_i_unnamed_floydwarshall35_q_5_q & redist15_i_unnamed_floydwarshall22_q_6_q;

    // i_spec_select216_floydwarshall93(MUX,178)@8
    assign i_spec_select216_floydwarshall93_s = i_unnamed_floydwarshall37_q;
    always @(i_spec_select216_floydwarshall93_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select216_floydwarshall93_s)
            1'b0 : i_spec_select216_floydwarshall93_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_72_1_pop16_floydwarshall92_out_data_out;
            1'b1 : i_spec_select216_floydwarshall93_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select216_floydwarshall93_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall17_floydwarshall128(BLACKBOX,105)@8
    // out out_intel_reserved_ffwd_13_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall17_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall17_floydwarshall128 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_13_0(i_spec_select216_floydwarshall93_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall17_floydwarshall128_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,241)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall17_floydwarshall128_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg57(REG,340)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg37(REG,320)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg38(REG,321)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97(BLACKBOX,151)@8
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97 (
        .in_data_in(i_spec_select217_floydwarshall96_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_feedback_stall_out_23),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95(BLACKBOX,122)@8
    // out out_feedback_stall_out_23@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop23_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_a_sroa_37_1_push23_floydwarshall97_out_feedback_valid_out_23),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall30(LOGICAL,187)@3 + 1
    assign i_unnamed_floydwarshall30_qi = $unsigned(redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q == c_i32_3208_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall30_delay ( .xin(i_unnamed_floydwarshall30_qi), .xout(i_unnamed_floydwarshall30_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist14_i_unnamed_floydwarshall30_q_5(DELAY,421)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_unnamed_floydwarshall30_q_5_delay_0 <= '0;
            redist14_i_unnamed_floydwarshall30_q_5_delay_1 <= '0;
            redist14_i_unnamed_floydwarshall30_q_5_delay_2 <= '0;
            redist14_i_unnamed_floydwarshall30_q_5_q <= '0;
        end
        else
        begin
            redist14_i_unnamed_floydwarshall30_q_5_delay_0 <= $unsigned(i_unnamed_floydwarshall30_q);
            redist14_i_unnamed_floydwarshall30_q_5_delay_1 <= redist14_i_unnamed_floydwarshall30_q_5_delay_0;
            redist14_i_unnamed_floydwarshall30_q_5_delay_2 <= redist14_i_unnamed_floydwarshall30_q_5_delay_1;
            redist14_i_unnamed_floydwarshall30_q_5_q <= redist14_i_unnamed_floydwarshall30_q_5_delay_2;
        end
    end

    // i_unnamed_floydwarshall34(LOGICAL,190)@8
    assign i_unnamed_floydwarshall34_q = redist14_i_unnamed_floydwarshall30_q_5_q & redist17_i_unnamed_floydwarshall18_q_6_q;

    // i_spec_select217_floydwarshall96(MUX,179)@8
    assign i_spec_select217_floydwarshall96_s = i_unnamed_floydwarshall34_q;
    always @(i_spec_select217_floydwarshall96_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select217_floydwarshall96_s)
            1'b0 : i_spec_select217_floydwarshall96_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_37_1_pop23_floydwarshall95_out_data_out;
            1'b1 : i_spec_select217_floydwarshall96_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select217_floydwarshall96_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall18_floydwarshall129(BLACKBOX,106)@8
    // out out_intel_reserved_ffwd_14_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall18_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall18_floydwarshall129 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_14_0(i_spec_select217_floydwarshall96_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall18_floydwarshall129_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,242)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall18_floydwarshall129_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg58(REG,341)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg39(REG,322)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg40(REG,323)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100(BLACKBOX,155)@8
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100 (
        .in_data_in(i_spec_select218_floydwarshall99_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_feedback_stall_out_19),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98(BLACKBOX,126)@8
    // out out_feedback_stall_out_19@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop19_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_a_sroa_57_1_push19_floydwarshall100_out_feedback_valid_out_19),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall33(LOGICAL,189)@8
    assign i_unnamed_floydwarshall33_q = redist14_i_unnamed_floydwarshall30_q_5_q & redist16_i_unnamed_floydwarshall20_q_6_q;

    // i_spec_select218_floydwarshall99(MUX,180)@8
    assign i_spec_select218_floydwarshall99_s = i_unnamed_floydwarshall33_q;
    always @(i_spec_select218_floydwarshall99_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select218_floydwarshall99_s)
            1'b0 : i_spec_select218_floydwarshall99_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_57_1_pop19_floydwarshall98_out_data_out;
            1'b1 : i_spec_select218_floydwarshall99_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select218_floydwarshall99_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall19_floydwarshall130(BLACKBOX,107)@8
    // out out_intel_reserved_ffwd_15_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall19_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall19_floydwarshall130 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_15_0(i_spec_select218_floydwarshall99_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall19_floydwarshall130_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,243)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall19_floydwarshall130_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg59(REG,342)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg41(REG,324)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg42(REG,325)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103(BLACKBOX,159)@8
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103 (
        .in_data_in(i_spec_select219_floydwarshall102_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_feedback_stall_out_15),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101(BLACKBOX,130)@8
    // out out_feedback_stall_out_15@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop15_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_a_sroa_77_1_push15_floydwarshall103_out_feedback_valid_out_15),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall32(LOGICAL,188)@8
    assign i_unnamed_floydwarshall32_q = redist14_i_unnamed_floydwarshall30_q_5_q & redist15_i_unnamed_floydwarshall22_q_6_q;

    // i_spec_select219_floydwarshall102(MUX,181)@8
    assign i_spec_select219_floydwarshall102_s = i_unnamed_floydwarshall32_q;
    always @(i_spec_select219_floydwarshall102_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select219_floydwarshall102_s)
            1'b0 : i_spec_select219_floydwarshall102_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_77_1_pop15_floydwarshall101_out_data_out;
            1'b1 : i_spec_select219_floydwarshall102_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select219_floydwarshall102_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall20_floydwarshall131(BLACKBOX,108)@8
    // out out_intel_reserved_ffwd_16_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall20_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall20_floydwarshall131 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_16_0(i_spec_select219_floydwarshall102_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall20_floydwarshall131_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,244)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall20_floydwarshall131_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg44(REG,327)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg11(REG,294)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg12(REG,295)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58(BLACKBOX,145)@8
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58 (
        .in_data_in(i_spec_select_floydwarshall57_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_feedback_stall_out_30),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56(BLACKBOX,116)@8
    // out out_feedback_stall_out_30@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop30_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_30(i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i32_a_sroa_0_1_push30_floydwarshall58_out_feedback_valid_out_30),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall53(LOGICAL,206)@2
    assign i_unnamed_floydwarshall53_q = i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out | i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out;

    // i_unnamed_floydwarshall54(LOGICAL,207)@2 + 1
    assign i_unnamed_floydwarshall54_qi = $unsigned(i_unnamed_floydwarshall53_q == c_i32_0205_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall54_delay ( .xin(i_unnamed_floydwarshall54_qi), .xout(i_unnamed_floydwarshall54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_i_unnamed_floydwarshall54_q_6(DELAY,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_unnamed_floydwarshall54_q_6_delay_0 <= '0;
            redist10_i_unnamed_floydwarshall54_q_6_delay_1 <= '0;
            redist10_i_unnamed_floydwarshall54_q_6_delay_2 <= '0;
            redist10_i_unnamed_floydwarshall54_q_6_delay_3 <= '0;
            redist10_i_unnamed_floydwarshall54_q_6_q <= '0;
        end
        else
        begin
            redist10_i_unnamed_floydwarshall54_q_6_delay_0 <= $unsigned(i_unnamed_floydwarshall54_q);
            redist10_i_unnamed_floydwarshall54_q_6_delay_1 <= redist10_i_unnamed_floydwarshall54_q_6_delay_0;
            redist10_i_unnamed_floydwarshall54_q_6_delay_2 <= redist10_i_unnamed_floydwarshall54_q_6_delay_1;
            redist10_i_unnamed_floydwarshall54_q_6_delay_3 <= redist10_i_unnamed_floydwarshall54_q_6_delay_2;
            redist10_i_unnamed_floydwarshall54_q_6_q <= redist10_i_unnamed_floydwarshall54_q_6_delay_3;
        end
    end

    // i_spec_select_floydwarshall57(MUX,182)@8
    assign i_spec_select_floydwarshall57_s = redist10_i_unnamed_floydwarshall54_q_6_q;
    always @(i_spec_select_floydwarshall57_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select_floydwarshall57_s)
            1'b0 : i_spec_select_floydwarshall57_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_0_1_pop30_floydwarshall56_out_data_out;
            1'b1 : i_spec_select_floydwarshall57_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select_floydwarshall57_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall5_floydwarshall116(BLACKBOX,109)@8
    // out out_intel_reserved_ffwd_1_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zhall5_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall5_floydwarshall116 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_1_0(i_spec_select_floydwarshall57_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall5_floydwarshall116_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,245)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall5_floydwarshall116_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg45(REG,328)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg13(REG,296)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg14(REG,297)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61(BLACKBOX,160)@8
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61 (
        .in_data_in(i_unnamed_floydwarshall60_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_feedback_stall_out_29),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59(BLACKBOX,131)@8
    // out out_feedback_stall_out_29@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop29_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_a_sroa_7_1_push29_floydwarshall61_out_feedback_valid_out_29),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall16(LOGICAL,183)@2 + 1
    assign i_unnamed_floydwarshall16_qi = $unsigned(i_llvm_fpga_pop_i32_i_030_pop13146_pop36_floydwarshall14_out_data_out == c_i32_0205_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall16_delay ( .xin(i_unnamed_floydwarshall16_qi), .xout(i_unnamed_floydwarshall16_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_unnamed_floydwarshall16_q_6(DELAY,425)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_unnamed_floydwarshall16_q_6_delay_0 <= '0;
            redist18_i_unnamed_floydwarshall16_q_6_delay_1 <= '0;
            redist18_i_unnamed_floydwarshall16_q_6_delay_2 <= '0;
            redist18_i_unnamed_floydwarshall16_q_6_delay_3 <= '0;
            redist18_i_unnamed_floydwarshall16_q_6_q <= '0;
        end
        else
        begin
            redist18_i_unnamed_floydwarshall16_q_6_delay_0 <= $unsigned(i_unnamed_floydwarshall16_q);
            redist18_i_unnamed_floydwarshall16_q_6_delay_1 <= redist18_i_unnamed_floydwarshall16_q_6_delay_0;
            redist18_i_unnamed_floydwarshall16_q_6_delay_2 <= redist18_i_unnamed_floydwarshall16_q_6_delay_1;
            redist18_i_unnamed_floydwarshall16_q_6_delay_3 <= redist18_i_unnamed_floydwarshall16_q_6_delay_2;
            redist18_i_unnamed_floydwarshall16_q_6_q <= redist18_i_unnamed_floydwarshall16_q_6_delay_3;
        end
    end

    // i_unnamed_floydwarshall52(LOGICAL,205)@8
    assign i_unnamed_floydwarshall52_q = redist12_i_unnamed_floydwarshall40_q_5_q & redist18_i_unnamed_floydwarshall16_q_6_q;

    // i_unnamed_floydwarshall60(MUX,208)@8
    assign i_unnamed_floydwarshall60_s = i_unnamed_floydwarshall52_q;
    always @(i_unnamed_floydwarshall60_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_unnamed_floydwarshall60_s)
            1'b0 : i_unnamed_floydwarshall60_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_7_1_pop29_floydwarshall59_out_data_out;
            1'b1 : i_unnamed_floydwarshall60_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_unnamed_floydwarshall60_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall6_floydwarshall117(BLACKBOX,110)@8
    // out out_intel_reserved_ffwd_2_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zhall6_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall6_floydwarshall117 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_2_0(i_unnamed_floydwarshall60_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall6_floydwarshall117_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,246)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall6_floydwarshall117_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg46(REG,329)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg15(REG,298)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg16(REG,299)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64(BLACKBOX,146)@8
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64 (
        .in_data_in(i_spec_select206_floydwarshall63_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_feedback_stall_out_28),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62(BLACKBOX,117)@8
    // out out_feedback_stall_out_28@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop28_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_a_sroa_12_1_push28_floydwarshall64_out_feedback_valid_out_28),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall51(LOGICAL,204)@8
    assign i_unnamed_floydwarshall51_q = redist13_i_unnamed_floydwarshall35_q_5_q & redist18_i_unnamed_floydwarshall16_q_6_q;

    // i_spec_select206_floydwarshall63(MUX,168)@8
    assign i_spec_select206_floydwarshall63_s = i_unnamed_floydwarshall51_q;
    always @(i_spec_select206_floydwarshall63_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select206_floydwarshall63_s)
            1'b0 : i_spec_select206_floydwarshall63_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_12_1_pop28_floydwarshall62_out_data_out;
            1'b1 : i_spec_select206_floydwarshall63_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select206_floydwarshall63_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall7_floydwarshall118(BLACKBOX,111)@8
    // out out_intel_reserved_ffwd_3_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zhall7_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall7_floydwarshall118 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_3_0(i_spec_select206_floydwarshall63_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall7_floydwarshall118_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,247)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall7_floydwarshall118_out_intel_reserved_ffwd_3_0;

    // valid_fanout_reg47(REG,330)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg17(REG,300)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg18(REG,301)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67(BLACKBOX,147)@8
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67 (
        .in_data_in(i_spec_select207_floydwarshall66_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_feedback_stall_out_27),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65(BLACKBOX,118)@8
    // out out_feedback_stall_out_27@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop27_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_a_sroa_17_1_push27_floydwarshall67_out_feedback_valid_out_27),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall50(LOGICAL,203)@8
    assign i_unnamed_floydwarshall50_q = redist14_i_unnamed_floydwarshall30_q_5_q & redist18_i_unnamed_floydwarshall16_q_6_q;

    // i_spec_select207_floydwarshall66(MUX,169)@8
    assign i_spec_select207_floydwarshall66_s = i_unnamed_floydwarshall50_q;
    always @(i_spec_select207_floydwarshall66_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select207_floydwarshall66_s)
            1'b0 : i_spec_select207_floydwarshall66_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_17_1_pop27_floydwarshall65_out_data_out;
            1'b1 : i_spec_select207_floydwarshall66_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select207_floydwarshall66_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall8_floydwarshall119(BLACKBOX,112)@8
    // out out_intel_reserved_ffwd_4_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zhall8_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall8_floydwarshall119 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_4_0(i_spec_select207_floydwarshall66_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall8_floydwarshall119_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,248)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall8_floydwarshall119_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg48(REG,331)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg19(REG,302)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg20(REG,303)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70(BLACKBOX,148)@8
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70 (
        .in_data_in(i_spec_select208_floydwarshall69_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_feedback_stall_out_26),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68(BLACKBOX,119)@8
    // out out_feedback_stall_out_26@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop26_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_a_sroa_22_1_push26_floydwarshall70_out_feedback_valid_out_26),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall45(LOGICAL,199)@3 + 1
    assign i_unnamed_floydwarshall45_qi = $unsigned(redist20_i_llvm_fpga_pop_i32_j_029_pop31_floydwarshall25_out_data_out_1_q == c_i32_0205_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_floydwarshall45_delay ( .xin(i_unnamed_floydwarshall45_qi), .xout(i_unnamed_floydwarshall45_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_i_unnamed_floydwarshall45_q_5(DELAY,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_unnamed_floydwarshall45_q_5_delay_0 <= '0;
            redist11_i_unnamed_floydwarshall45_q_5_delay_1 <= '0;
            redist11_i_unnamed_floydwarshall45_q_5_delay_2 <= '0;
            redist11_i_unnamed_floydwarshall45_q_5_q <= '0;
        end
        else
        begin
            redist11_i_unnamed_floydwarshall45_q_5_delay_0 <= $unsigned(i_unnamed_floydwarshall45_q);
            redist11_i_unnamed_floydwarshall45_q_5_delay_1 <= redist11_i_unnamed_floydwarshall45_q_5_delay_0;
            redist11_i_unnamed_floydwarshall45_q_5_delay_2 <= redist11_i_unnamed_floydwarshall45_q_5_delay_1;
            redist11_i_unnamed_floydwarshall45_q_5_q <= redist11_i_unnamed_floydwarshall45_q_5_delay_2;
        end
    end

    // i_unnamed_floydwarshall49(LOGICAL,202)@8
    assign i_unnamed_floydwarshall49_q = redist11_i_unnamed_floydwarshall45_q_5_q & redist17_i_unnamed_floydwarshall18_q_6_q;

    // i_spec_select208_floydwarshall69(MUX,170)@8
    assign i_spec_select208_floydwarshall69_s = i_unnamed_floydwarshall49_q;
    always @(i_spec_select208_floydwarshall69_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select208_floydwarshall69_s)
            1'b0 : i_spec_select208_floydwarshall69_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_22_1_pop26_floydwarshall68_out_data_out;
            1'b1 : i_spec_select208_floydwarshall69_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select208_floydwarshall69_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall9_floydwarshall120(BLACKBOX,113)@8
    // out out_intel_reserved_ffwd_5_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zhall9_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall9_floydwarshall120 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_5_0(i_spec_select208_floydwarshall69_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall9_floydwarshall120_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,249)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall9_floydwarshall120_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg49(REG,332)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg21(REG,304)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg22(REG,305)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73(BLACKBOX,152)@8
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73 (
        .in_data_in(i_spec_select209_floydwarshall72_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_feedback_stall_out_22),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71(BLACKBOX,123)@8
    // out out_feedback_stall_out_22@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop22_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_a_sroa_42_1_push22_floydwarshall73_out_feedback_valid_out_22),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall48(LOGICAL,201)@8
    assign i_unnamed_floydwarshall48_q = redist11_i_unnamed_floydwarshall45_q_5_q & redist16_i_unnamed_floydwarshall20_q_6_q;

    // i_spec_select209_floydwarshall72(MUX,171)@8
    assign i_spec_select209_floydwarshall72_s = i_unnamed_floydwarshall48_q;
    always @(i_spec_select209_floydwarshall72_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select209_floydwarshall72_s)
            1'b0 : i_spec_select209_floydwarshall72_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_42_1_pop22_floydwarshall71_out_data_out;
            1'b1 : i_spec_select209_floydwarshall72_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select209_floydwarshall72_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall10_floydwarshall121(BLACKBOX,98)@8
    // out out_intel_reserved_ffwd_6_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall10_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall10_floydwarshall121 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_6_0(i_spec_select209_floydwarshall72_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall10_floydwarshall121_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,250)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall10_floydwarshall121_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg50(REG,333)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg23(REG,306)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg24(REG,307)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76(BLACKBOX,156)@8
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76 (
        .in_data_in(i_spec_select210_floydwarshall75_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_feedback_stall_out_18),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74(BLACKBOX,127)@8
    // out out_feedback_stall_out_18@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop18_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_a_sroa_62_1_push18_floydwarshall76_out_feedback_valid_out_18),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall47(LOGICAL,200)@8
    assign i_unnamed_floydwarshall47_q = redist11_i_unnamed_floydwarshall45_q_5_q & redist15_i_unnamed_floydwarshall22_q_6_q;

    // i_spec_select210_floydwarshall75(MUX,172)@8
    assign i_spec_select210_floydwarshall75_s = i_unnamed_floydwarshall47_q;
    always @(i_spec_select210_floydwarshall75_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select210_floydwarshall75_s)
            1'b0 : i_spec_select210_floydwarshall75_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_62_1_pop18_floydwarshall74_out_data_out;
            1'b1 : i_spec_select210_floydwarshall75_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select210_floydwarshall75_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall11_floydwarshall122(BLACKBOX,99)@8
    // out out_intel_reserved_ffwd_7_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall11_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall11_floydwarshall122 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_7_0(i_spec_select210_floydwarshall75_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall11_floydwarshall122_out_intel_reserved_ffwd_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,251)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall11_floydwarshall122_out_intel_reserved_ffwd_7_0;

    // valid_fanout_reg51(REG,334)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg25(REG,308)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg26(REG,309)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79(BLACKBOX,149)@8
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79 (
        .in_data_in(i_spec_select211_floydwarshall78_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_feedback_stall_out_25),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77(BLACKBOX,120)@8
    // out out_feedback_stall_out_25@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop25_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_a_sroa_27_1_push25_floydwarshall79_out_feedback_valid_out_25),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall44(LOGICAL,198)@8
    assign i_unnamed_floydwarshall44_q = redist12_i_unnamed_floydwarshall40_q_5_q & redist17_i_unnamed_floydwarshall18_q_6_q;

    // i_spec_select211_floydwarshall78(MUX,173)@8
    assign i_spec_select211_floydwarshall78_s = i_unnamed_floydwarshall44_q;
    always @(i_spec_select211_floydwarshall78_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select211_floydwarshall78_s)
            1'b0 : i_spec_select211_floydwarshall78_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_27_1_pop25_floydwarshall77_out_data_out;
            1'b1 : i_spec_select211_floydwarshall78_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select211_floydwarshall78_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall12_floydwarshall123(BLACKBOX,100)@8
    // out out_intel_reserved_ffwd_8_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall12_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall12_floydwarshall123 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_8_0(i_spec_select211_floydwarshall78_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall12_floydwarshall123_out_intel_reserved_ffwd_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,252)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall12_floydwarshall123_out_intel_reserved_ffwd_8_0;

    // valid_fanout_reg52(REG,335)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg27(REG,310)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg28(REG,311)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82(BLACKBOX,153)@8
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    floydWarshall_i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall0 thei_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82 (
        .in_data_in(i_spec_select212_floydwarshall81_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_feedback_stall_out_21),
        .in_keep_going105_or(i_keep_going105_or_floydwarshall12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .in_xor111(redist9_i_xor111_floydwarshall6_q_6_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80(BLACKBOX,124)@8
    // out out_feedback_stall_out_21@20000000
    floydWarshall_i_llvm_fpga_pop_coalesce_iA000000Zpop21_floydwarshall0 thei_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80 (
        .in_data_in(c_i32_0205_q),
        .in_dir(redist28_i_forked102_and_floydwarshall3_q_6_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_a_sroa_47_1_push21_floydwarshall82_out_feedback_valid_out_21),
        .in_predicate(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_floydwarshall43(LOGICAL,197)@8
    assign i_unnamed_floydwarshall43_q = redist12_i_unnamed_floydwarshall40_q_5_q & redist16_i_unnamed_floydwarshall20_q_6_q;

    // i_spec_select212_floydwarshall81(MUX,174)@8
    assign i_spec_select212_floydwarshall81_s = i_unnamed_floydwarshall43_q;
    always @(i_spec_select212_floydwarshall81_s or i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_data_out or i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata)
    begin
        unique case (i_spec_select212_floydwarshall81_s)
            1'b0 : i_spec_select212_floydwarshall81_q = i_llvm_fpga_pop_coalesce_i32_a_sroa_47_1_pop21_floydwarshall80_out_data_out;
            1'b1 : i_spec_select212_floydwarshall81_q = i_llvm_fpga_mem_unnamed_floydwarshall4_floydwarshall29_out_o_readdata;
            default : i_spec_select212_floydwarshall81_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall13_floydwarshall124(BLACKBOX,101)@8
    // out out_intel_reserved_ffwd_9_0@20000000
    floydWarshall_i_llvm_fpga_ffwd_source_i3A000000Zall13_floydwarshall0 thei_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall13_floydwarshall124 (
        .in_predicate_in(redist9_i_xor111_floydwarshall6_q_6_q),
        .in_src_data_in_9_0(i_spec_select212_floydwarshall81_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall13_floydwarshall124_out_intel_reserved_ffwd_9_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,253)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_floydwarshall13_floydwarshall124_out_intel_reserved_ffwd_9_0;

    // valid_fanout_reg0(REG,283)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together266_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg60(REG,343)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg60_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg60_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg61(REG,344)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg61_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg61_q <= $unsigned(redist5_sync_together266_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134(BLACKBOX,142)@3
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    floydWarshall_i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall0 thei_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134 (
        .in_data_in(redist21_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_1_q),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_feedback_stall_out_35),
        .in_keep_going105(redist26_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg61_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together266_aunroll_x_in_c0_eni5_5_tpl_1(DELAY,411)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together266_aunroll_x_in_c0_eni5_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together266_aunroll_x_in_c0_eni5_5_tpl_1_q <= $unsigned(in_c0_eni5_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133(BLACKBOX,134)@2
    // out out_feedback_stall_out_35@20000000
    floydWarshall_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall0 thei_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133 (
        .in_data_in(redist4_sync_together266_aunroll_x_in_c0_eni5_5_tpl_1_q),
        .in_dir(redist1_sync_together266_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i1_notcmp133145_push35_floydwarshall134_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg60_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_1(DELAY,428)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out);
        end
    end

    // redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6(DELAY,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_0 <= '0;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_1 <= '0;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_2 <= '0;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_3 <= '0;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_0 <= $unsigned(redist21_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_1_q);
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_1 <= redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_0;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_2 <= redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_1;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_3 <= redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_2;
            redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_q <= redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_delay_3;
        end
    end

    // i_masked114_floydwarshall132(LOGICAL,164)@2 + 1
    assign i_masked114_floydwarshall132_qi = i_notcmp101_floydwarshall109_q & i_first_cleanup110_floydwarshall5_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked114_floydwarshall132_delay ( .xin(i_masked114_floydwarshall132_qi), .xout(i_masked114_floydwarshall132_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist19_i_masked114_floydwarshall132_q_6(DELAY,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_masked114_floydwarshall132_q_6_delay_0 <= '0;
            redist19_i_masked114_floydwarshall132_q_6_delay_1 <= '0;
            redist19_i_masked114_floydwarshall132_q_6_delay_2 <= '0;
            redist19_i_masked114_floydwarshall132_q_6_delay_3 <= '0;
            redist19_i_masked114_floydwarshall132_q_6_q <= '0;
        end
        else
        begin
            redist19_i_masked114_floydwarshall132_q_6_delay_0 <= $unsigned(i_masked114_floydwarshall132_q);
            redist19_i_masked114_floydwarshall132_q_6_delay_1 <= redist19_i_masked114_floydwarshall132_q_6_delay_0;
            redist19_i_masked114_floydwarshall132_q_6_delay_2 <= redist19_i_masked114_floydwarshall132_q_6_delay_1;
            redist19_i_masked114_floydwarshall132_q_6_delay_3 <= redist19_i_masked114_floydwarshall132_q_6_delay_2;
            redist19_i_masked114_floydwarshall132_q_6_q <= redist19_i_masked114_floydwarshall132_q_6_delay_3;
        end
    end

    // sync_out_aunroll_x(GPOUT,281)@8
    assign out_c0_exi3240_0_tpl = GND_q;
    assign out_c0_exi3240_1_tpl = redist27_i_llvm_fpga_pipeline_keep_going105_floydwarshall8_out_data_out_7_q;
    assign out_c0_exi3240_2_tpl = redist19_i_masked114_floydwarshall132_q_6_q;
    assign out_c0_exi3240_3_tpl = redist22_i_llvm_fpga_pop_i1_notcmp133145_pop35_floydwarshall133_out_data_out_6_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_floydWarshall1 = GND_q;

endmodule
