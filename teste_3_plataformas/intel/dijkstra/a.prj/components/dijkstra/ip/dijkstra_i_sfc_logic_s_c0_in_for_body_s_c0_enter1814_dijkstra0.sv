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

// SystemVerilog created from dijkstra_i_sfc_logic_s_c0_in_for_body_s_c0_enter1814_dijkstra0
// SystemVerilog created on Mon Apr  6 10:27:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module dijkstra_i_sfc_logic_s_c0_in_for_body_s_c0_enter1814_dijkstra0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_11_0,
    output wire [31:0] out_intel_reserved_ffwd_12_0,
    output wire [31:0] out_intel_reserved_ffwd_13_0,
    output wire [31:0] out_intel_reserved_ffwd_14_0,
    output wire [31:0] out_intel_reserved_ffwd_15_0,
    output wire [31:0] out_intel_reserved_ffwd_16_0,
    output wire [31:0] out_intel_reserved_ffwd_17_0,
    output wire [31:0] out_intel_reserved_ffwd_18_0,
    output wire [31:0] out_intel_reserved_ffwd_19_0,
    output wire [31:0] out_intel_reserved_ffwd_20_0,
    output wire [31:0] out_intel_reserved_ffwd_21_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [31:0] out_intel_reserved_ffwd_25_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    output wire [31:0] out_intel_reserved_ffwd_27_0,
    output wire [31:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_dijkstra1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_0185_q;
    wire [31:0] c_i32_1193_q;
    wire [31:0] c_i32_2147483647195_q;
    wire [3:0] c_i4_7182_q;
    wire [4:0] c_i5_1198_q;
    wire [4:0] c_i5_7196_q;
    wire [3:0] i_cleanups_shl146_dijkstra5_vt_join_q;
    wire [2:0] i_cleanups_shl146_dijkstra5_vt_select_3_b;
    wire [5:0] i_fpga_indvars_iv_next_dijkstra95_a;
    wire [5:0] i_fpga_indvars_iv_next_dijkstra95_b;
    logic [5:0] i_fpga_indvars_iv_next_dijkstra95_o;
    wire [5:0] i_fpga_indvars_iv_next_dijkstra95_q;
    wire [32:0] i_inc_dijkstra85_a;
    wire [32:0] i_inc_dijkstra85_b;
    logic [32:0] i_inc_dijkstra85_o;
    wire [32:0] i_inc_dijkstra85_q;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra16_dijkstra97_out_intel_reserved_ffwd_11_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra17_dijkstra98_out_intel_reserved_ffwd_12_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra18_dijkstra99_out_intel_reserved_ffwd_13_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra19_dijkstra100_out_intel_reserved_ffwd_14_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra20_dijkstra101_out_intel_reserved_ffwd_15_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra21_dijkstra102_out_intel_reserved_ffwd_16_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra22_dijkstra103_out_intel_reserved_ffwd_17_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra23_dijkstra104_out_intel_reserved_ffwd_18_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra24_dijkstra105_out_intel_reserved_ffwd_19_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra25_dijkstra106_out_intel_reserved_ffwd_20_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra26_dijkstra107_out_intel_reserved_ffwd_21_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra27_dijkstra108_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra109_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra29_dijkstra110_out_intel_reserved_ffwd_24_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra30_dijkstra111_out_intel_reserved_ffwd_25_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra31_dijkstra112_out_intel_reserved_ffwd_26_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra32_dijkstra113_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra33_dijkstra114_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_feedback_stall_out_14;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_feedback_stall_out_29;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_feedback_stall_out_25;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_feedback_stall_out_23;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_feedback_stall_out_22;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_feedback_stall_out_21;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_feedback_stall_out_20;
    wire [31:0] i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_feedback_stall_out_27;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_feedback_stall_out_31;
    wire [3:0] i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_feedback_stall_out_30;
    wire [4:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration144_dijkstra11_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration144_dijkstra11_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond152_dijkstra91_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond152_dijkstra91_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42_out_feedback_valid_out_16;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36_out_feedback_valid_out_18;
    wire [31:0] i_llvm_fpga_push_i32_i_035_push29_dijkstra86_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i32_i_035_push29_dijkstra86_out_feedback_valid_out_29;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69_out_feedback_valid_out_25;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75_out_feedback_valid_out_23;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78_out_feedback_valid_out_22;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81_out_feedback_valid_out_21;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84_out_feedback_valid_out_20;
    wire [31:0] i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63_out_feedback_valid_out_27;
    wire [7:0] i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94_out_feedback_valid_out_31;
    wire [7:0] i_llvm_fpga_push_i4_initerations140_push30_dijkstra9_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i4_initerations140_push30_dijkstra9_out_feedback_valid_out_30;
    wire [7:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96_out_feedback_valid_out_10;
    wire [0:0] i_masked151_dijkstra115_q;
    wire [0:0] i_next_cleanups150_dijkstra93_s;
    reg [3:0] i_next_cleanups150_dijkstra93_q;
    wire [3:0] i_next_initerations141_dijkstra8_vt_join_q;
    wire [2:0] i_next_initerations141_dijkstra8_vt_select_2_b;
    wire [0:0] i_notcmp138_dijkstra90_q;
    wire [0:0] i_or149_dijkstra92_q;
    wire [0:0] i_spec_select231_dijkstra32_s;
    reg [31:0] i_spec_select231_dijkstra32_q;
    wire [0:0] i_spec_select232_dijkstra38_s;
    reg [31:0] i_spec_select232_dijkstra38_q;
    wire [0:0] i_spec_select233_dijkstra41_s;
    reg [31:0] i_spec_select233_dijkstra41_q;
    wire [0:0] i_spec_select234_dijkstra44_s;
    reg [31:0] i_spec_select234_dijkstra44_q;
    wire [0:0] i_spec_select235_dijkstra47_s;
    reg [31:0] i_spec_select235_dijkstra47_q;
    wire [0:0] i_spec_select236_dijkstra50_s;
    reg [31:0] i_spec_select236_dijkstra50_q;
    wire [0:0] i_spec_select237_dijkstra53_s;
    reg [31:0] i_spec_select237_dijkstra53_q;
    wire [0:0] i_spec_select238_dijkstra56_s;
    reg [31:0] i_spec_select238_dijkstra56_q;
    wire [0:0] i_spec_select239_dijkstra59_s;
    reg [31:0] i_spec_select239_dijkstra59_q;
    wire [0:0] i_spec_select240_dijkstra65_s;
    reg [31:0] i_spec_select240_dijkstra65_q;
    wire [0:0] i_spec_select241_dijkstra68_s;
    reg [31:0] i_spec_select241_dijkstra68_q;
    wire [0:0] i_spec_select242_dijkstra71_s;
    reg [31:0] i_spec_select242_dijkstra71_q;
    wire [0:0] i_spec_select243_dijkstra74_s;
    reg [31:0] i_spec_select243_dijkstra74_q;
    wire [0:0] i_spec_select244_dijkstra77_s;
    reg [31:0] i_spec_select244_dijkstra77_q;
    wire [0:0] i_spec_select245_dijkstra80_s;
    reg [31:0] i_spec_select245_dijkstra80_q;
    wire [0:0] i_spec_select246_dijkstra83_s;
    reg [31:0] i_spec_select246_dijkstra83_q;
    wire [0:0] i_unnamed_dijkstra13_q;
    wire [0:0] i_unnamed_dijkstra15_q;
    wire [0:0] i_unnamed_dijkstra17_q;
    wire [0:0] i_unnamed_dijkstra19_q;
    wire [0:0] i_unnamed_dijkstra21_q;
    wire [0:0] i_unnamed_dijkstra23_q;
    wire [0:0] i_unnamed_dijkstra25_q;
    wire [0:0] i_unnamed_dijkstra27_q;
    wire [0:0] i_unnamed_dijkstra29_q;
    wire [0:0] i_unnamed_dijkstra35_s;
    reg [31:0] i_unnamed_dijkstra35_q;
    wire [0:0] i_unnamed_dijkstra62_s;
    reg [31:0] i_unnamed_dijkstra62_q;
    wire [0:0] i_xor148_dijkstra4_q;
    wire [4:0] bgTrunc_i_fpga_indvars_iv_next_dijkstra95_sel_x_b;
    wire [31:0] bgTrunc_i_inc_dijkstra85_sel_x_b;
    wire [31:0] c_i32_2192_recast_x_q;
    wire [31:0] c_i32_3191_recast_x_q;
    wire [31:0] c_i32_4190_recast_x_q;
    wire [31:0] c_i32_5189_recast_x_q;
    wire [31:0] c_i32_6188_recast_x_q;
    wire [31:0] c_i32_7187_recast_x_q;
    wire [31:0] c_i32_8186_recast_x_q;
    wire [0:0] i_first_cleanup147_dijkstra3_sel_x_b;
    wire [0:0] i_last_initeration143_dijkstra10_sel_x_b;
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
    wire [0:0] i_exitcond_dijkstra88_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid315_i_cleanups_shl146_dijkstra0_shift_x_q;
    wire [0:0] leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_s;
    reg [3:0] leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid321_i_next_initerations141_dijkstra0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid323_i_next_initerations141_dijkstra0_shift_x_q;
    wire [0:0] rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_s;
    reg [3:0] rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_q;
    reg [0:0] redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together248_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together248_aunroll_x_in_i_valid_1(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together248_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together248_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1(DELAY,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x(BITSELECT,313)@2
    assign leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x_in = i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x_b = leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid315_i_cleanups_shl146_dijkstra0_shift_x(BITJOIN,314)@2
    assign leftShiftStage0Idx1_uid315_i_cleanups_shl146_dijkstra0_shift_x_q = {leftShiftStage0Idx1Rng1_uid314_i_cleanups_shl146_dijkstra0_shift_x_b, GND_q};

    // leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x(MUX,316)@2
    assign leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_s or i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out or leftShiftStage0Idx1_uid315_i_cleanups_shl146_dijkstra0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_s)
            1'b0 : leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_q = i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out;
            1'b1 : leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_q = leftShiftStage0Idx1_uid315_i_cleanups_shl146_dijkstra0_shift_x_q;
            default : leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl146_dijkstra5_vt_select_3(BITSELECT,81)@2
    assign i_cleanups_shl146_dijkstra5_vt_select_3_b = leftShiftStage0_uid317_i_cleanups_shl146_dijkstra0_shift_x_q[3:1];

    // i_cleanups_shl146_dijkstra5_vt_join(BITJOIN,80)@2
    assign i_cleanups_shl146_dijkstra5_vt_join_q = {i_cleanups_shl146_dijkstra5_vt_select_3_b, GND_q};

    // i_xor148_dijkstra4(LOGICAL,186)@2
    assign i_xor148_dijkstra4_q = i_first_cleanup147_dijkstra3_sel_x_b ^ VCC_q;

    // i_notcmp138_dijkstra90(LOGICAL,157)@2
    assign i_notcmp138_dijkstra90_q = i_exitcond_dijkstra88_cmp_nsign_q ^ VCC_q;

    // i_or149_dijkstra92(LOGICAL,158)@2
    assign i_or149_dijkstra92_q = i_notcmp138_dijkstra90_q | i_xor148_dijkstra4_q;

    // i_next_cleanups150_dijkstra93(MUX,153)@2
    assign i_next_cleanups150_dijkstra93_s = i_or149_dijkstra92_q;
    always @(i_next_cleanups150_dijkstra93_s or i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out or i_cleanups_shl146_dijkstra5_vt_join_q)
    begin
        unique case (i_next_cleanups150_dijkstra93_s)
            1'b0 : i_next_cleanups150_dijkstra93_q = i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out;
            1'b1 : i_next_cleanups150_dijkstra93_q = i_cleanups_shl146_dijkstra5_vt_join_q;
            default : i_next_cleanups150_dijkstra93_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94(BLACKBOX,149)@2
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    dijkstra_i_llvm_fpga_push_i4_cleanups145_push31_0 thei_llvm_fpga_push_i4_cleanups145_push31_dijkstra94 (
        .in_data_in(i_next_cleanups150_dijkstra93_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_feedback_stall_out_31),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together248_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_7182(CONSTANT,75)
    assign c_i4_7182_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2(BLACKBOX,125)@2
    // out out_feedback_stall_out_31@20000000
    dijkstra_i_llvm_fpga_pop_i4_cleanups145_pop31_0 thei_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2 (
        .in_data_in(c_i4_7182_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i4_cleanups145_push31_dijkstra94_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together248_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup147_dijkstra3_sel_x(BITSELECT,234)@2
    assign i_first_cleanup147_dijkstra3_sel_x_b = i_llvm_fpga_pop_i4_cleanups145_pop31_dijkstra2_out_data_out[0:0];

    // c_i5_1198(CONSTANT,76)
    assign c_i5_1198_q = $unsigned(5'b11111);

    // i_fpga_indvars_iv_next_dijkstra95(ADD,84)@2
    assign i_fpga_indvars_iv_next_dijkstra95_a = {1'b0, i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_data_out};
    assign i_fpga_indvars_iv_next_dijkstra95_b = {1'b0, c_i5_1198_q};
    assign i_fpga_indvars_iv_next_dijkstra95_o = $unsigned(i_fpga_indvars_iv_next_dijkstra95_a) + $unsigned(i_fpga_indvars_iv_next_dijkstra95_b);
    assign i_fpga_indvars_iv_next_dijkstra95_q = i_fpga_indvars_iv_next_dijkstra95_o[5:0];

    // bgTrunc_i_fpga_indvars_iv_next_dijkstra95_sel_x(BITSELECT,201)@2
    assign bgTrunc_i_fpga_indvars_iv_next_dijkstra95_sel_x_b = i_fpga_indvars_iv_next_dijkstra95_q[4:0];

    // i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96(BLACKBOX,151)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    dijkstra_i_llvm_fpga_push_i5_fpga_indvars_iv_push10_0 thei_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_dijkstra95_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_feedback_stall_out_10),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together248_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i5_7196(CONSTANT,77)
    assign c_i5_7196_q = $unsigned(5'b00111);

    // i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87(BLACKBOX,127)@2
    // out out_feedback_stall_out_10@20000000
    dijkstra_i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_0 thei_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87 (
        .in_data_in(c_i5_7196_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i5_fpga_indvars_iv_push10_dijkstra96_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together248_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_dijkstra88_cmp_nsign(LOGICAL,309)@2
    assign i_exitcond_dijkstra88_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i5_fpga_indvars_iv_pop10_dijkstra87_out_data_out[4:4]));

    // i_llvm_fpga_push_i1_notexitcond152_dijkstra91(BLACKBOX,129)@2
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    dijkstra_i_llvm_fpga_push_i1_notexitcond152_0 thei_llvm_fpga_push_i1_notexitcond152_dijkstra91 (
        .in_data_in(i_exitcond_dijkstra88_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_not_exitcond_stall_out),
        .in_first_cleanup147(i_first_cleanup147_dijkstra3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist1_sync_together248_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond152_dijkstra91_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond152_dijkstra91_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,245)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid321_i_next_initerations141_dijkstra0_shift_x(BITSELECT,320)@2
    assign rightShiftStage0Idx1Rng1_uid321_i_next_initerations141_dijkstra0_shift_x_b = i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid323_i_next_initerations141_dijkstra0_shift_x(BITJOIN,322)@2
    assign rightShiftStage0Idx1_uid323_i_next_initerations141_dijkstra0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid321_i_next_initerations141_dijkstra0_shift_x_b};

    // valid_fanout_reg1(REG,243)@1 + 1
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

    // valid_fanout_reg2(REG,244)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations140_push30_dijkstra9(BLACKBOX,150)@2
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    dijkstra_i_llvm_fpga_push_i4_initerations140_push30_0 thei_llvm_fpga_push_i4_initerations140_push30_dijkstra9 (
        .in_data_in(i_next_initerations141_dijkstra8_vt_join_q),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_feedback_stall_out_30),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i4_initerations140_push30_dijkstra9_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i4_initerations140_push30_dijkstra9_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7(BLACKBOX,126)@2
    // out out_feedback_stall_out_30@20000000
    dijkstra_i_llvm_fpga_pop_i4_initerations140_pop30_0 thei_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7 (
        .in_data_in(c_i4_7182_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_30(i_llvm_fpga_push_i4_initerations140_push30_dijkstra9_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i4_initerations140_push30_dijkstra9_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x(MUX,324)@2
    assign rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_s or i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_data_out or rightShiftStage0Idx1_uid323_i_next_initerations141_dijkstra0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_s)
            1'b0 : rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_q = i_llvm_fpga_pop_i4_initerations140_pop30_dijkstra7_out_data_out;
            1'b1 : rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_q = rightShiftStage0Idx1_uid323_i_next_initerations141_dijkstra0_shift_x_q;
            default : rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations141_dijkstra8_vt_select_2(BITSELECT,156)@2
    assign i_next_initerations141_dijkstra8_vt_select_2_b = rightShiftStage0_uid325_i_next_initerations141_dijkstra0_shift_x_q[2:0];

    // i_next_initerations141_dijkstra8_vt_join(BITJOIN,155)@2
    assign i_next_initerations141_dijkstra8_vt_join_q = {GND_q, i_next_initerations141_dijkstra8_vt_select_2_b};

    // i_last_initeration143_dijkstra10_sel_x(BITSELECT,235)@2
    assign i_last_initeration143_dijkstra10_sel_x_b = i_next_initerations141_dijkstra8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration144_dijkstra11(BLACKBOX,128)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    dijkstra_i_llvm_fpga_push_i1_lastiniteration144_0 thei_llvm_fpga_push_i1_lastiniteration144_dijkstra11 (
        .in_data_in(i_last_initeration143_dijkstra10_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_initeration_stall_out),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i1_lastiniteration144_dijkstra11_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i1_lastiniteration144_dijkstra11_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going142_dijkstra6(BLACKBOX,105)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    dijkstra_i_llvm_fpga_pipeline_keep_going142_0 thei_llvm_fpga_pipeline_keep_going142_dijkstra6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration144_dijkstra11_out_feedback_out_6),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration144_dijkstra11_out_feedback_valid_out_6),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond152_dijkstra91_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond152_dijkstra91_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,78)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going142_dijkstra6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,198)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_pipeline_valid_out;

    // valid_fanout_reg42(REG,284)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg42_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg42_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_2147483647195(CONSTANT,72)
    assign c_i32_2147483647195_q = $unsigned(32'b01111111111111111111111111111111);

    // valid_fanout_reg5(REG,247)@1 + 1
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

    // valid_fanout_reg6(REG,248)@1 + 1
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

    // i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33(BLACKBOX,130)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_0_1_push19_0 thei_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33 (
        .in_data_in(i_spec_select231_dijkstra32_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_feedback_stall_out_19),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_0185(CONSTANT,70)
    assign c_i32_0185_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31(BLACKBOX,106)@2
    // out out_feedback_stall_out_19@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_0 thei_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_dist_sroa_0_1_push19_dijkstra33_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,246)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg41(REG,283)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg41_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg41_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1193(CONSTANT,71)
    assign c_i32_1193_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_dijkstra85(ADD,85)@2
    assign i_inc_dijkstra85_a = {1'b0, i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out};
    assign i_inc_dijkstra85_b = {1'b0, c_i32_1193_q};
    assign i_inc_dijkstra85_o = $unsigned(i_inc_dijkstra85_a) + $unsigned(i_inc_dijkstra85_b);
    assign i_inc_dijkstra85_q = i_inc_dijkstra85_o[32:0];

    // bgTrunc_i_inc_dijkstra85_sel_x(BITSELECT,202)@2
    assign bgTrunc_i_inc_dijkstra85_sel_x_b = i_inc_dijkstra85_q[31:0];

    // i_llvm_fpga_push_i32_i_035_push29_dijkstra86(BLACKBOX,139)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    dijkstra_i_llvm_fpga_push_i32_i_035_push29_0 thei_llvm_fpga_push_i32_i_035_push29_dijkstra86 (
        .in_data_in(bgTrunc_i_inc_dijkstra85_sel_x_b),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_feedback_stall_out_29),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg41_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i32_i_035_push29_dijkstra86_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i32_i_035_push29_dijkstra86_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12(BLACKBOX,115)@2
    // out out_feedback_stall_out_29@20000000
    dijkstra_i_llvm_fpga_pop_i32_i_035_pop29_0 thei_llvm_fpga_pop_i32_i_035_pop29_dijkstra12 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i32_i_035_push29_dijkstra86_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i32_i_035_push29_dijkstra86_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_dijkstra29(LOGICAL,183)@2
    assign i_unnamed_dijkstra29_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_0185_q ? 1'b1 : 1'b0);

    // i_spec_select231_dijkstra32(MUX,159)@2
    assign i_spec_select231_dijkstra32_s = i_unnamed_dijkstra29_q;
    always @(i_spec_select231_dijkstra32_s or i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select231_dijkstra32_s)
            1'b0 : i_spec_select231_dijkstra32_q = i_llvm_fpga_pop_i32_dist_sroa_0_1_pop19_dijkstra31_out_data_out;
            1'b1 : i_spec_select231_dijkstra32_q = c_i32_2147483647195_q;
            default : i_spec_select231_dijkstra32_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra16_dijkstra97(BLACKBOX,87)@2
    // out out_intel_reserved_ffwd_11_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_16_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra16_dijkstra97 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_11_0(i_spec_select231_dijkstra32_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg42_q),
        .out_intel_reserved_ffwd_11_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra16_dijkstra97_out_intel_reserved_ffwd_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,199)
    assign out_intel_reserved_ffwd_11_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra16_dijkstra97_out_intel_reserved_ffwd_11_0;

    // valid_fanout_reg43(REG,285)@1 + 1
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

    // valid_fanout_reg7(REG,249)@1 + 1
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

    // valid_fanout_reg8(REG,250)@1 + 1
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

    // i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36(BLACKBOX,138)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_8_1_push18_0 thei_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36 (
        .in_data_in(i_unnamed_dijkstra35_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_feedback_stall_out_18),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34(BLACKBOX,114)@2
    // out out_feedback_stall_out_18@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_0 thei_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_dist_sroa_8_1_push18_dijkstra36_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_dijkstra27(LOGICAL,182)@2
    assign i_unnamed_dijkstra27_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_1193_q ? 1'b1 : 1'b0);

    // i_unnamed_dijkstra35(MUX,184)@2
    assign i_unnamed_dijkstra35_s = i_unnamed_dijkstra27_q;
    always @(i_unnamed_dijkstra35_s or i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_unnamed_dijkstra35_s)
            1'b0 : i_unnamed_dijkstra35_q = i_llvm_fpga_pop_i32_dist_sroa_8_1_pop18_dijkstra34_out_data_out;
            1'b1 : i_unnamed_dijkstra35_q = c_i32_2147483647195_q;
            default : i_unnamed_dijkstra35_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra17_dijkstra98(BLACKBOX,88)@2
    // out out_intel_reserved_ffwd_12_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_17_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra17_dijkstra98 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_12_0(i_unnamed_dijkstra35_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg43_q),
        .out_intel_reserved_ffwd_12_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra17_dijkstra98_out_intel_reserved_ffwd_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,213)
    assign out_intel_reserved_ffwd_12_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra17_dijkstra98_out_intel_reserved_ffwd_12_0;

    // valid_fanout_reg44(REG,286)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg44_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg44_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg9(REG,251)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,252)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39(BLACKBOX,131)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_14_1_push17_0 thei_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39 (
        .in_data_in(i_spec_select232_dijkstra38_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_feedback_stall_out_17),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37(BLACKBOX,107)@2
    // out out_feedback_stall_out_17@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_0 thei_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_dist_sroa_14_1_push17_dijkstra39_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_2192_recast_x(CONSTANT,205)
    assign c_i32_2192_recast_x_q = $unsigned(32'b00000000000000000000000000000010);

    // i_unnamed_dijkstra25(LOGICAL,181)@2
    assign i_unnamed_dijkstra25_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_2192_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select232_dijkstra38(MUX,160)@2
    assign i_spec_select232_dijkstra38_s = i_unnamed_dijkstra25_q;
    always @(i_spec_select232_dijkstra38_s or i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select232_dijkstra38_s)
            1'b0 : i_spec_select232_dijkstra38_q = i_llvm_fpga_pop_i32_dist_sroa_14_1_pop17_dijkstra37_out_data_out;
            1'b1 : i_spec_select232_dijkstra38_q = c_i32_2147483647195_q;
            default : i_spec_select232_dijkstra38_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra18_dijkstra99(BLACKBOX,89)@2
    // out out_intel_reserved_ffwd_13_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_18_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra18_dijkstra99 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_13_0(i_spec_select232_dijkstra38_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg44_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra18_dijkstra99_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,214)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra18_dijkstra99_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg45(REG,287)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg45_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg45_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,253)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,254)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42(BLACKBOX,132)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_20_1_push16_0 thei_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42 (
        .in_data_in(i_spec_select233_dijkstra41_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_feedback_stall_out_16),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40(BLACKBOX,108)@2
    // out out_feedback_stall_out_16@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_0 thei_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_dist_sroa_20_1_push16_dijkstra42_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_3191_recast_x(CONSTANT,206)
    assign c_i32_3191_recast_x_q = $unsigned(32'b00000000000000000000000000000011);

    // i_unnamed_dijkstra23(LOGICAL,180)@2
    assign i_unnamed_dijkstra23_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_3191_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select233_dijkstra41(MUX,161)@2
    assign i_spec_select233_dijkstra41_s = i_unnamed_dijkstra23_q;
    always @(i_spec_select233_dijkstra41_s or i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select233_dijkstra41_s)
            1'b0 : i_spec_select233_dijkstra41_q = i_llvm_fpga_pop_i32_dist_sroa_20_1_pop16_dijkstra40_out_data_out;
            1'b1 : i_spec_select233_dijkstra41_q = c_i32_2147483647195_q;
            default : i_spec_select233_dijkstra41_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra19_dijkstra100(BLACKBOX,90)@2
    // out out_intel_reserved_ffwd_14_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_19_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra19_dijkstra100 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_14_0(i_spec_select233_dijkstra41_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg45_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra19_dijkstra100_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,215)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra19_dijkstra100_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg46(REG,288)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg46_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg46_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,255)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg14(REG,256)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45(BLACKBOX,133)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_26_1_push15_0 thei_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45 (
        .in_data_in(i_spec_select234_dijkstra44_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_feedback_stall_out_15),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43(BLACKBOX,109)@2
    // out out_feedback_stall_out_15@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_0 thei_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_dist_sroa_26_1_push15_dijkstra45_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_4190_recast_x(CONSTANT,207)
    assign c_i32_4190_recast_x_q = $unsigned(32'b00000000000000000000000000000100);

    // i_unnamed_dijkstra21(LOGICAL,179)@2
    assign i_unnamed_dijkstra21_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_4190_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select234_dijkstra44(MUX,162)@2
    assign i_spec_select234_dijkstra44_s = i_unnamed_dijkstra21_q;
    always @(i_spec_select234_dijkstra44_s or i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select234_dijkstra44_s)
            1'b0 : i_spec_select234_dijkstra44_q = i_llvm_fpga_pop_i32_dist_sroa_26_1_pop15_dijkstra43_out_data_out;
            1'b1 : i_spec_select234_dijkstra44_q = c_i32_2147483647195_q;
            default : i_spec_select234_dijkstra44_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra20_dijkstra101(BLACKBOX,91)@2
    // out out_intel_reserved_ffwd_15_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_20_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra20_dijkstra101 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_15_0(i_spec_select234_dijkstra44_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg46_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra20_dijkstra101_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,216)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra20_dijkstra101_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg47(REG,289)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg47_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg47_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,257)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg16(REG,258)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48(BLACKBOX,134)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_32_1_push14_0 thei_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48 (
        .in_data_in(i_spec_select235_dijkstra47_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_feedback_stall_out_14),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46(BLACKBOX,110)@2
    // out out_feedback_stall_out_14@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_0 thei_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_dist_sroa_32_1_push14_dijkstra48_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_5189_recast_x(CONSTANT,208)
    assign c_i32_5189_recast_x_q = $unsigned(32'b00000000000000000000000000000101);

    // i_unnamed_dijkstra19(LOGICAL,178)@2
    assign i_unnamed_dijkstra19_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_5189_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select235_dijkstra47(MUX,163)@2
    assign i_spec_select235_dijkstra47_s = i_unnamed_dijkstra19_q;
    always @(i_spec_select235_dijkstra47_s or i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select235_dijkstra47_s)
            1'b0 : i_spec_select235_dijkstra47_q = i_llvm_fpga_pop_i32_dist_sroa_32_1_pop14_dijkstra46_out_data_out;
            1'b1 : i_spec_select235_dijkstra47_q = c_i32_2147483647195_q;
            default : i_spec_select235_dijkstra47_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra21_dijkstra102(BLACKBOX,92)@2
    // out out_intel_reserved_ffwd_16_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_21_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra21_dijkstra102 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_16_0(i_spec_select235_dijkstra47_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg47_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra21_dijkstra102_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,217)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra21_dijkstra102_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg48(REG,290)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg48_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg48_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,259)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg18(REG,260)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51(BLACKBOX,135)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_38_1_push13_0 thei_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51 (
        .in_data_in(i_spec_select236_dijkstra50_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_feedback_stall_out_13),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49(BLACKBOX,111)@2
    // out out_feedback_stall_out_13@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_0 thei_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_dist_sroa_38_1_push13_dijkstra51_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_6188_recast_x(CONSTANT,209)
    assign c_i32_6188_recast_x_q = $unsigned(32'b00000000000000000000000000000110);

    // i_unnamed_dijkstra17(LOGICAL,177)@2
    assign i_unnamed_dijkstra17_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_6188_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select236_dijkstra50(MUX,164)@2
    assign i_spec_select236_dijkstra50_s = i_unnamed_dijkstra17_q;
    always @(i_spec_select236_dijkstra50_s or i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select236_dijkstra50_s)
            1'b0 : i_spec_select236_dijkstra50_q = i_llvm_fpga_pop_i32_dist_sroa_38_1_pop13_dijkstra49_out_data_out;
            1'b1 : i_spec_select236_dijkstra50_q = c_i32_2147483647195_q;
            default : i_spec_select236_dijkstra50_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra22_dijkstra103(BLACKBOX,93)@2
    // out out_intel_reserved_ffwd_17_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_22_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra22_dijkstra103 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_17_0(i_spec_select236_dijkstra50_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg48_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra22_dijkstra103_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,218)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra22_dijkstra103_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg49(REG,291)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg49_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg49_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,261)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg20(REG,262)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54(BLACKBOX,136)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_44_1_push12_0 thei_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54 (
        .in_data_in(i_spec_select237_dijkstra53_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_feedback_stall_out_12),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52(BLACKBOX,112)@2
    // out out_feedback_stall_out_12@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_0 thei_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_dist_sroa_44_1_push12_dijkstra54_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_7187_recast_x(CONSTANT,210)
    assign c_i32_7187_recast_x_q = $unsigned(32'b00000000000000000000000000000111);

    // i_unnamed_dijkstra15(LOGICAL,176)@2
    assign i_unnamed_dijkstra15_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_7187_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select237_dijkstra53(MUX,165)@2
    assign i_spec_select237_dijkstra53_s = i_unnamed_dijkstra15_q;
    always @(i_spec_select237_dijkstra53_s or i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select237_dijkstra53_s)
            1'b0 : i_spec_select237_dijkstra53_q = i_llvm_fpga_pop_i32_dist_sroa_44_1_pop12_dijkstra52_out_data_out;
            1'b1 : i_spec_select237_dijkstra53_q = c_i32_2147483647195_q;
            default : i_spec_select237_dijkstra53_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra23_dijkstra104(BLACKBOX,94)@2
    // out out_intel_reserved_ffwd_18_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_23_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra23_dijkstra104 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_18_0(i_spec_select237_dijkstra53_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg49_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra23_dijkstra104_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,219)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra23_dijkstra104_out_intel_reserved_ffwd_18_0;

    // valid_fanout_reg50(REG,292)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg50_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg50_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,263)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg22(REG,264)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57(BLACKBOX,137)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    dijkstra_i_llvm_fpga_push_i32_dist_sroa_50_1_push11_0 thei_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57 (
        .in_data_in(i_spec_select238_dijkstra56_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_feedback_stall_out_11),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55(BLACKBOX,113)@2
    // out out_feedback_stall_out_11@20000000
    dijkstra_i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_0 thei_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_dist_sroa_50_1_push11_dijkstra57_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_8186_recast_x(CONSTANT,211)
    assign c_i32_8186_recast_x_q = $unsigned(32'b00000000000000000000000000001000);

    // i_unnamed_dijkstra13(LOGICAL,175)@2
    assign i_unnamed_dijkstra13_q = $unsigned(i_llvm_fpga_pop_i32_i_035_pop29_dijkstra12_out_data_out == c_i32_8186_recast_x_q ? 1'b1 : 1'b0);

    // i_spec_select238_dijkstra56(MUX,166)@2
    assign i_spec_select238_dijkstra56_s = i_unnamed_dijkstra13_q;
    always @(i_spec_select238_dijkstra56_s or i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_data_out or c_i32_2147483647195_q)
    begin
        unique case (i_spec_select238_dijkstra56_s)
            1'b0 : i_spec_select238_dijkstra56_q = i_llvm_fpga_pop_i32_dist_sroa_50_1_pop11_dijkstra55_out_data_out;
            1'b1 : i_spec_select238_dijkstra56_q = c_i32_2147483647195_q;
            default : i_spec_select238_dijkstra56_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra24_dijkstra105(BLACKBOX,95)@2
    // out out_intel_reserved_ffwd_19_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_24_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra24_dijkstra105 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_19_0(i_spec_select238_dijkstra56_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg50_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra24_dijkstra105_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,220)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra24_dijkstra105_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg51(REG,293)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg51_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg51_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,265)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg24(REG,266)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60(BLACKBOX,140)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_0 thei_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60 (
        .in_data_in(i_spec_select239_dijkstra59_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_feedback_stall_out_28),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58(BLACKBOX,116)@2
    // out out_feedback_stall_out_28@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_0 thei_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i32_sptset_sroa_0_0_push28_dijkstra60_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select239_dijkstra59(MUX,167)@2
    assign i_spec_select239_dijkstra59_s = i_unnamed_dijkstra29_q;
    always @(i_spec_select239_dijkstra59_s or i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select239_dijkstra59_s)
            1'b0 : i_spec_select239_dijkstra59_q = i_llvm_fpga_pop_i32_sptset_sroa_0_0_pop28_dijkstra58_out_data_out;
            1'b1 : i_spec_select239_dijkstra59_q = c_i32_0185_q;
            default : i_spec_select239_dijkstra59_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra25_dijkstra106(BLACKBOX,96)@2
    // out out_intel_reserved_ffwd_20_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_25_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra25_dijkstra106 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_20_0(i_spec_select239_dijkstra59_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg51_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra25_dijkstra106_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,221)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra25_dijkstra106_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg52(REG,294)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg52_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg52_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,267)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg26(REG,268)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63(BLACKBOX,148)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_0 thei_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63 (
        .in_data_in(i_unnamed_dijkstra62_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_feedback_stall_out_27),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61(BLACKBOX,124)@2
    // out out_feedback_stall_out_27@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_0 thei_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_sptset_sroa_6_0_push27_dijkstra63_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_dijkstra62(MUX,185)@2
    assign i_unnamed_dijkstra62_s = i_unnamed_dijkstra27_q;
    always @(i_unnamed_dijkstra62_s or i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_data_out or c_i32_0185_q)
    begin
        unique case (i_unnamed_dijkstra62_s)
            1'b0 : i_unnamed_dijkstra62_q = i_llvm_fpga_pop_i32_sptset_sroa_6_0_pop27_dijkstra61_out_data_out;
            1'b1 : i_unnamed_dijkstra62_q = c_i32_0185_q;
            default : i_unnamed_dijkstra62_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra26_dijkstra107(BLACKBOX,97)@2
    // out out_intel_reserved_ffwd_21_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_26_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra26_dijkstra107 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_21_0(i_unnamed_dijkstra62_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg52_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra26_dijkstra107_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,222)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra26_dijkstra107_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg53(REG,295)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg53_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg53_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,269)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg28(REG,270)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66(BLACKBOX,141)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_0 thei_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66 (
        .in_data_in(i_spec_select240_dijkstra65_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_feedback_stall_out_26),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64(BLACKBOX,117)@2
    // out out_feedback_stall_out_26@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_0 thei_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_sptset_sroa_10_0_push26_dijkstra66_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select240_dijkstra65(MUX,168)@2
    assign i_spec_select240_dijkstra65_s = i_unnamed_dijkstra25_q;
    always @(i_spec_select240_dijkstra65_s or i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select240_dijkstra65_s)
            1'b0 : i_spec_select240_dijkstra65_q = i_llvm_fpga_pop_i32_sptset_sroa_10_0_pop26_dijkstra64_out_data_out;
            1'b1 : i_spec_select240_dijkstra65_q = c_i32_0185_q;
            default : i_spec_select240_dijkstra65_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra27_dijkstra108(BLACKBOX,98)@2
    // out out_intel_reserved_ffwd_22_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_27_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra27_dijkstra108 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_22_0(i_spec_select240_dijkstra65_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg53_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra27_dijkstra108_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,223)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra27_dijkstra108_out_intel_reserved_ffwd_22_0;

    // valid_fanout_reg54(REG,296)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg54_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg54_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,271)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg30(REG,272)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69(BLACKBOX,142)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_0 thei_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69 (
        .in_data_in(i_spec_select241_dijkstra68_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_feedback_stall_out_25),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67(BLACKBOX,118)@2
    // out out_feedback_stall_out_25@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_0 thei_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_sptset_sroa_14_0_push25_dijkstra69_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select241_dijkstra68(MUX,169)@2
    assign i_spec_select241_dijkstra68_s = i_unnamed_dijkstra23_q;
    always @(i_spec_select241_dijkstra68_s or i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select241_dijkstra68_s)
            1'b0 : i_spec_select241_dijkstra68_q = i_llvm_fpga_pop_i32_sptset_sroa_14_0_pop25_dijkstra67_out_data_out;
            1'b1 : i_spec_select241_dijkstra68_q = c_i32_0185_q;
            default : i_spec_select241_dijkstra68_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra109(BLACKBOX,99)@2
    // out out_intel_reserved_ffwd_23_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_28_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra109 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_23_0(i_spec_select241_dijkstra68_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg54_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra109_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_11_regfree_osync_x(GPOUT,224)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra28_dijkstra109_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg55(REG,297)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg55_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg55_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,273)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg32(REG,274)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72(BLACKBOX,143)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_0 thei_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72 (
        .in_data_in(i_spec_select242_dijkstra71_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_feedback_stall_out_24),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70(BLACKBOX,119)@2
    // out out_feedback_stall_out_24@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_0 thei_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_sptset_sroa_18_0_push24_dijkstra72_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select242_dijkstra71(MUX,170)@2
    assign i_spec_select242_dijkstra71_s = i_unnamed_dijkstra21_q;
    always @(i_spec_select242_dijkstra71_s or i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select242_dijkstra71_s)
            1'b0 : i_spec_select242_dijkstra71_q = i_llvm_fpga_pop_i32_sptset_sroa_18_0_pop24_dijkstra70_out_data_out;
            1'b1 : i_spec_select242_dijkstra71_q = c_i32_0185_q;
            default : i_spec_select242_dijkstra71_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra29_dijkstra110(BLACKBOX,100)@2
    // out out_intel_reserved_ffwd_24_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_29_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra29_dijkstra110 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_24_0(i_spec_select242_dijkstra71_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg55_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra29_dijkstra110_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_12_regfree_osync_x(GPOUT,225)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra29_dijkstra110_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg56(REG,298)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg56_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg56_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,275)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg34(REG,276)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75(BLACKBOX,144)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_0 thei_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75 (
        .in_data_in(i_spec_select243_dijkstra74_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_feedback_stall_out_23),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73(BLACKBOX,120)@2
    // out out_feedback_stall_out_23@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_0 thei_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_sptset_sroa_22_0_push23_dijkstra75_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select243_dijkstra74(MUX,171)@2
    assign i_spec_select243_dijkstra74_s = i_unnamed_dijkstra19_q;
    always @(i_spec_select243_dijkstra74_s or i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select243_dijkstra74_s)
            1'b0 : i_spec_select243_dijkstra74_q = i_llvm_fpga_pop_i32_sptset_sroa_22_0_pop23_dijkstra73_out_data_out;
            1'b1 : i_spec_select243_dijkstra74_q = c_i32_0185_q;
            default : i_spec_select243_dijkstra74_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra30_dijkstra111(BLACKBOX,101)@2
    // out out_intel_reserved_ffwd_25_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_30_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra30_dijkstra111 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_25_0(i_spec_select243_dijkstra74_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg56_q),
        .out_intel_reserved_ffwd_25_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra30_dijkstra111_out_intel_reserved_ffwd_25_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_13_regfree_osync_x(GPOUT,226)
    assign out_intel_reserved_ffwd_25_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra30_dijkstra111_out_intel_reserved_ffwd_25_0;

    // valid_fanout_reg57(REG,299)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg57_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg57_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,277)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg36(REG,278)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg36_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg36_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78(BLACKBOX,145)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_0 thei_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78 (
        .in_data_in(i_spec_select244_dijkstra77_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_feedback_stall_out_22),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg36_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76(BLACKBOX,121)@2
    // out out_feedback_stall_out_22@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_0 thei_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i32_sptset_sroa_26_0_push22_dijkstra78_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select244_dijkstra77(MUX,172)@2
    assign i_spec_select244_dijkstra77_s = i_unnamed_dijkstra17_q;
    always @(i_spec_select244_dijkstra77_s or i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select244_dijkstra77_s)
            1'b0 : i_spec_select244_dijkstra77_q = i_llvm_fpga_pop_i32_sptset_sroa_26_0_pop22_dijkstra76_out_data_out;
            1'b1 : i_spec_select244_dijkstra77_q = c_i32_0185_q;
            default : i_spec_select244_dijkstra77_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra31_dijkstra112(BLACKBOX,102)@2
    // out out_intel_reserved_ffwd_26_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_31_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra31_dijkstra112 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_26_0(i_spec_select244_dijkstra77_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg57_q),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra31_dijkstra112_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_14_regfree_osync_x(GPOUT,227)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra31_dijkstra112_out_intel_reserved_ffwd_26_0;

    // valid_fanout_reg58(REG,300)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg58_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg58_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg37(REG,279)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg37_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg37_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg38(REG,280)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg38_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg38_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81(BLACKBOX,146)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_0 thei_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81 (
        .in_data_in(i_spec_select245_dijkstra80_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_feedback_stall_out_21),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg38_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79(BLACKBOX,122)@2
    // out out_feedback_stall_out_21@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_0 thei_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_sptset_sroa_30_0_push21_dijkstra81_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg37_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select245_dijkstra80(MUX,173)@2
    assign i_spec_select245_dijkstra80_s = i_unnamed_dijkstra15_q;
    always @(i_spec_select245_dijkstra80_s or i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select245_dijkstra80_s)
            1'b0 : i_spec_select245_dijkstra80_q = i_llvm_fpga_pop_i32_sptset_sroa_30_0_pop21_dijkstra79_out_data_out;
            1'b1 : i_spec_select245_dijkstra80_q = c_i32_0185_q;
            default : i_spec_select245_dijkstra80_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra32_dijkstra113(BLACKBOX,103)@2
    // out out_intel_reserved_ffwd_27_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_32_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra32_dijkstra113 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_27_0(i_spec_select245_dijkstra80_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg58_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra32_dijkstra113_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_15_regfree_osync_x(GPOUT,228)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra32_dijkstra113_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg59(REG,301)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg59_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg59_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg39(REG,281)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg39_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg39_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg40(REG,282)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg40_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg40_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84(BLACKBOX,147)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    dijkstra_i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_0 thei_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84 (
        .in_data_in(i_spec_select246_dijkstra83_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_feedback_stall_out_20),
        .in_keep_going142(redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg40_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82(BLACKBOX,123)@2
    // out out_feedback_stall_out_20@20000000
    dijkstra_i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_0 thei_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82 (
        .in_data_in(c_i32_0185_q),
        .in_dir(redist0_sync_together248_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i32_sptset_sroa_34_0_push20_dijkstra84_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg39_q),
        .out_data_out(i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_spec_select246_dijkstra83(MUX,174)@2
    assign i_spec_select246_dijkstra83_s = i_unnamed_dijkstra13_q;
    always @(i_spec_select246_dijkstra83_s or i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_data_out or c_i32_0185_q)
    begin
        unique case (i_spec_select246_dijkstra83_s)
            1'b0 : i_spec_select246_dijkstra83_q = i_llvm_fpga_pop_i32_sptset_sroa_34_0_pop20_dijkstra82_out_data_out;
            1'b1 : i_spec_select246_dijkstra83_q = c_i32_0185_q;
            default : i_spec_select246_dijkstra83_q = 32'b0;
        endcase
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra33_dijkstra114(BLACKBOX,104)@2
    // out out_intel_reserved_ffwd_28_0@20000000
    dijkstra_i_llvm_fpga_ffwd_source_i32_unnamed_33_dijkstra0 thei_llvm_fpga_ffwd_source_i32_unnamed_dijkstra33_dijkstra114 (
        .in_predicate_in(i_xor148_dijkstra4_q),
        .in_src_data_in_28_0(i_spec_select246_dijkstra83_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg59_q),
        .out_intel_reserved_ffwd_28_0(i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra33_dijkstra114_out_intel_reserved_ffwd_28_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_16_regfree_osync_x(GPOUT,229)
    assign out_intel_reserved_ffwd_28_0 = i_llvm_fpga_ffwd_source_i32_unnamed_dijkstra33_dijkstra114_out_intel_reserved_ffwd_28_0;

    // valid_fanout_reg0(REG,242)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked151_dijkstra115(LOGICAL,152)@2
    assign i_masked151_dijkstra115_q = i_notcmp138_dijkstra90_q & i_first_cleanup147_dijkstra3_sel_x_b;

    // sync_out_aunroll_x(GPOUT,240)@2
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist2_i_llvm_fpga_pipeline_keep_going142_dijkstra6_out_data_out_1_q;
    assign out_c0_exi2_2_tpl = i_masked151_dijkstra115_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_dijkstra1 = GND_q;

endmodule
