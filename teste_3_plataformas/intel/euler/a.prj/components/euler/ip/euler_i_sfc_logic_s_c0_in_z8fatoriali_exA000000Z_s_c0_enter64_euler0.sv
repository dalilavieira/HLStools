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

// SystemVerilog created from euler_i_sfc_logic_s_c0_in_z8fatoriali_exA000000Z_s_c0_enter64_euler0
// SystemVerilog created on Mon Apr  6 12:54:32 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_i_sfc_logic_s_c0_in_z8fatoriali_exA000000Z_s_c0_enter64_euler0 (
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_euler1,
    output wire [0:0] out_unnamed_euler13_0_tpl,
    input wire [0:0] in_c0_eni463_0_tpl,
    input wire [63:0] in_c0_eni463_1_tpl,
    input wire [0:0] in_c0_eni463_2_tpl,
    input wire [0:0] in_c0_eni463_3_tpl,
    input wire [0:0] in_c0_eni463_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_double_0_000000e_00125_q;
    wire [63:0] c_double_1_000000e_00124_q;
    wire [15:0] c_i16_1117_q;
    wire [15:0] c_i16_2047116_q;
    wire [31:0] c_i32_0106_q;
    wire [31:0] c_i32_10110_q;
    wire [31:0] c_i32_1086109_q;
    wire [31:0] c_i32_1104_q;
    wire [31:0] c_i32_1105_q;
    wire [31:0] c_i32_11114_q;
    wire [31:0] c_i32_12113_q;
    wire [31:0] c_i32_15115_q;
    wire [31:0] c_i32_32107_q;
    wire [31:0] c_i32_53111_q;
    wire [31:0] c_i32_65535118_q;
    wire [63:0] c_i64_1119_q;
    wire [7:0] c_i8_283_q;
    wire [62:0] i_acl_49_i_euler81_vt_const_63_q;
    wire [63:0] i_acl_49_i_euler81_vt_join_q;
    wire [0:0] i_acl_49_i_euler81_vt_select_0_b;
    wire [63:0] i_add_euler90_out_primWireOut;
    wire [32:0] i_add_i42_i_euler35_a;
    wire [32:0] i_add_i42_i_euler35_b;
    logic [32:0] i_add_i42_i_euler35_o;
    wire [32:0] i_add_i42_i_euler35_q;
    wire [24:0] i_add_i42_i_euler35_vt_const_31_q;
    wire [31:0] i_add_i42_i_euler35_vt_join_q;
    wire [6:0] i_add_i42_i_euler35_vt_select_6_b;
    wire [64:0] i_add_i_euler85_a;
    wire [64:0] i_add_i_euler85_b;
    logic [64:0] i_add_i_euler85_o;
    wire [64:0] i_add_i_euler85_q;
    wire [64:0] i_add_i_i_euler5_a;
    wire [64:0] i_add_i_i_euler5_b;
    logic [64:0] i_add_i_i_euler5_o;
    wire [64:0] i_add_i_i_euler5_q;
    wire [31:0] i_and15_i_euler53_q;
    wire [27:0] i_and15_i_euler53_vt_const_31_q;
    wire [31:0] i_and15_i_euler53_vt_join_q;
    wire [3:0] i_and15_i_euler53_vt_select_3_b;
    wire [15:0] i_and2647_i_euler61_q;
    wire [4:0] i_and2647_i_euler61_vt_const_15_q;
    wire [15:0] i_and2647_i_euler61_vt_join_q;
    wire [10:0] i_and2647_i_euler61_vt_select_10_b;
    wire [31:0] i_and28_i_euler62_q;
    wire [1:0] i_and28_i_euler62_vt_const_1_q;
    wire [31:0] i_and28_i_euler62_vt_join_q;
    wire [1:0] i_and28_i_euler62_vt_select_3_b;
    wire [63:0] i_and36_i_euler72_q;
    wire [63:0] i_and36_i_euler72_vt_join_q;
    wire [0:0] i_and36_i_euler72_vt_select_0_b;
    wire [3:0] i_and7_i_euler43_vt_const_3_q;
    wire [25:0] i_and7_i_euler43_vt_const_31_q;
    wire [31:0] i_and7_i_euler43_vt_join_q;
    wire [1:0] i_and7_i_euler43_vt_select_5_b;
    wire [31:0] i_and8_i_euler46_vt_join_q;
    wire [1:0] i_and8_i_euler46_vt_select_3_b;
    wire [0:0] i_cmp35_i_euler70_qi;
    reg [0:0] i_cmp35_i_euler70_q;
    wire [0:0] i_cmp37_i_euler73_qi;
    reg [0:0] i_cmp37_i_euler73_q;
    wire [33:0] i_cmp40_i_euler76_a;
    wire [33:0] i_cmp40_i_euler76_b;
    logic [33:0] i_cmp40_i_euler76_o;
    wire [0:0] i_cmp40_i_euler76_c;
    wire [33:0] i_cmp4_i_euler41_a;
    wire [33:0] i_cmp4_i_euler41_b;
    logic [33:0] i_cmp4_i_euler41_o;
    wire [0:0] i_cmp4_i_euler41_c;
    wire [0:0] i_cmp_i_euler37_q;
    wire [0:0] i_cmp_i_i_euler33_qi;
    reg [0:0] i_cmp_i_i_euler33_q;
    wire [15:0] i_conv17_i_euler55_q;
    wire [15:0] i_conv17_i_euler55_vt_join_q;
    wire [10:0] i_conv17_i_euler55_vt_select_10_b;
    wire [15:0] i_conv23_i_euler60_q;
    wire [15:0] i_conv23_i_euler60_vt_join_q;
    wire [14:0] i_conv23_i_euler60_vt_select_14_b;
    wire [20:0] i_conv33_i_euler68_vt_const_31_q;
    wire [31:0] i_conv33_i_euler68_vt_join_q;
    wire [10:0] i_conv33_i_euler68_vt_select_10_b;
    wire [31:0] i_conv34_i_euler69_q;
    wire [15:0] i_conv34_i_euler69_vt_const_31_q;
    wire [31:0] i_conv34_i_euler69_vt_join_q;
    wire [15:0] i_conv34_i_euler69_vt_select_15_b;
    wire [0:0] i_div_euler88_s;
    reg [63:0] i_div_euler88_q;
    wire [0:0] i_i_euler78_s;
    reg [63:0] i_i_euler78_q;
    wire [31:0] i_llvm_ctpop_i32_unnamed_euler10_euler20_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_euler10_euler20_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b;
    wire [31:0] i_llvm_ctpop_i32_unnamed_euler11_euler32_data;
    wire [31:0] i_llvm_ctpop_i32_unnamed_euler11_euler32_sum;
    wire [31:0] i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_join_q;
    wire [5:0] i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_select_5_b;
    wire [63:0] i_llvm_fpga_ffwd_source_f64_unnamed_euler12_euler92_out_intel_reserved_ffwd_2_0;
    wire [63:0] i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out;
    wire [0:0] i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_feedback_stall_out_10;
    wire [63:0] i_llvm_fpga_push_f64_soma_012_push10_euler91_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_f64_soma_012_push10_euler91_out_feedback_valid_out_10;
    wire [0:0] i_narrow_i_euler80_q;
    wire [31:0] i_neg22_i_i_euler31_q;
    wire [31:0] i_neg_i_i_euler19_q;
    wire [0:0] i_not_cmp4_i_euler79_q;
    wire [16:0] i_notmask_i_euler58_vt_const_31_q;
    wire [31:0] i_notmask_i_euler58_vt_join_q;
    wire [14:0] i_notmask_i_euler58_vt_select_14_b;
    wire [63:0] i_op_euler87_out_primWireOut;
    wire [31:0] i_or10_i_i_euler18_q;
    wire [31:0] i_or13_i_i_euler22_q;
    wire [31:0] i_or15_i_i_euler24_qi;
    reg [31:0] i_or15_i_i_euler24_q;
    wire [31:0] i_or17_i_i_euler26_q;
    wire [31:0] i_or19_i_i_euler28_q;
    wire [31:0] i_or21_i_i_euler30_q;
    wire [31:0] i_or4_i_i_euler12_q;
    wire [31:0] i_or6_i_i_euler14_q;
    wire [31:0] i_or8_i_i_euler16_q;
    wire [0:0] i_or_cond48_i_euler77_q;
    wire [0:0] i_or_cond_not_i_euler75_q;
    wire [63:0] i_or_i46_i_euler9_q;
    wire [63:0] i_or_i46_i_euler9_vt_join_q;
    wire [31:0] i_or_i46_i_euler9_vt_select_31_b;
    wire [61:0] i_sh_prom1250_i_euler50_vt_const_63_q;
    wire [63:0] i_sh_prom1250_i_euler50_vt_join_q;
    wire [1:0] i_sh_prom1250_i_euler50_vt_select_1_b;
    wire [59:0] i_sh_prom29_i_euler63_vt_const_63_q;
    wire [63:0] i_sh_prom29_i_euler63_vt_join_q;
    wire [1:0] i_sh_prom29_i_euler63_vt_select_3_b;
    wire [63:0] i_sh_prom3151_i_euler66_vt_join_q;
    wire [1:0] i_sh_prom3151_i_euler66_vt_select_1_b;
    wire [63:0] i_sh_prom9_i_euler47_vt_join_q;
    wire [1:0] i_sh_prom9_i_euler47_vt_select_3_b;
    wire [57:0] i_sh_prom_i_euler44_vt_const_63_q;
    wire [63:0] i_sh_prom_i_euler44_vt_join_q;
    wire [1:0] i_sh_prom_i_euler44_vt_select_5_b;
    wire [31:0] i_shr12_i_i_euler21_vt_join_q;
    wire [30:0] i_shr12_i_i_euler21_vt_select_30_b;
    wire [31:0] i_shr14_i_i_euler23_vt_join_q;
    wire [29:0] i_shr14_i_i_euler23_vt_select_29_b;
    wire [31:0] i_shr16_i_i_euler25_vt_join_q;
    wire [27:0] i_shr16_i_i_euler25_vt_select_27_b;
    wire [7:0] i_shr18_i_i_euler27_vt_const_31_q;
    wire [31:0] i_shr18_i_i_euler27_vt_join_q;
    wire [23:0] i_shr18_i_i_euler27_vt_select_23_b;
    wire [31:0] i_shr20_i_i_euler29_vt_join_q;
    wire [15:0] i_shr20_i_i_euler29_vt_select_15_b;
    wire [32:0] i_shr2_i44_i_euler8_vt_const_63_q;
    wire [63:0] i_shr2_i44_i_euler8_vt_join_q;
    wire [30:0] i_shr2_i44_i_euler8_vt_select_30_b;
    wire [31:0] i_shr3_i_i_euler11_vt_join_q;
    wire [29:0] i_shr3_i_i_euler11_vt_select_29_b;
    wire [31:0] i_shr5_i_i_euler13_vt_join_q;
    wire [27:0] i_shr5_i_i_euler13_vt_select_27_b;
    wire [31:0] i_shr7_i_i_euler15_vt_join_q;
    wire [23:0] i_shr7_i_i_euler15_vt_select_23_b;
    wire [31:0] i_shr9_i_i_euler17_vt_join_q;
    wire [15:0] i_shr9_i_i_euler17_vt_select_15_b;
    wire [63:0] i_shr_i_i_euler6_vt_join_q;
    wire [31:0] i_shr_i_i_euler6_vt_select_31_b;
    wire [32:0] i_sub14_i_euler52_a;
    wire [32:0] i_sub14_i_euler52_b;
    logic [32:0] i_sub14_i_euler52_o;
    wire [32:0] i_sub14_i_euler52_q;
    wire [32:0] i_sub18_i_euler56_a;
    wire [32:0] i_sub18_i_euler56_b;
    logic [32:0] i_sub18_i_euler56_o;
    wire [32:0] i_sub18_i_euler56_q;
    wire [32:0] i_sub5_i_euler42_a;
    wire [32:0] i_sub5_i_euler42_b;
    logic [32:0] i_sub5_i_euler42_o;
    wire [32:0] i_sub5_i_euler42_q;
    wire [23:0] i_sub5_i_euler42_vt_const_31_q;
    wire [31:0] i_sub5_i_euler42_vt_join_q;
    wire [7:0] i_sub5_i_euler42_vt_select_7_b;
    wire [32:0] i_sub_i_euler39_a;
    wire [32:0] i_sub_i_euler39_b;
    logic [32:0] i_sub_i_euler39_o;
    wire [32:0] i_sub_i_euler39_q;
    wire [31:0] i_sub_i_euler39_vt_join_q;
    wire [10:0] i_sub_i_euler39_vt_select_10_b;
    wire [0:0] i_unnamed_euler36_s;
    reg [31:0] i_unnamed_euler36_q;
    wire [31:0] i_unnamed_euler36_vt_join_q;
    wire [6:0] i_unnamed_euler36_vt_select_6_b;
    wire [0:0] i_unnamed_euler40_s;
    reg [31:0] i_unnamed_euler40_q;
    wire [31:0] i_unnamed_euler40_vt_join_q;
    wire [10:0] i_unnamed_euler40_vt_select_10_b;
    wire [15:0] i_unnamed_euler59_vt_join_q;
    wire [14:0] i_unnamed_euler59_vt_select_14_b;
    wire [63:0] i_x_lobit_i_euler2_vt_join_q;
    wire [0:0] i_x_lobit_i_euler2_vt_select_0_b;
    wire [63:0] i_xor_i_i_euler4_q;
    wire [31:0] bgTrunc_i_add_i42_i_euler35_sel_x_b;
    wire [63:0] bgTrunc_i_add_i_euler85_sel_x_b;
    wire [63:0] bgTrunc_i_add_i_i_euler5_sel_x_b;
    wire [31:0] bgTrunc_i_sub14_i_euler52_sel_x_b;
    wire [31:0] bgTrunc_i_sub18_i_euler56_sel_x_b;
    wire [31:0] bgTrunc_i_sub5_i_euler42_sel_x_b;
    wire [31:0] bgTrunc_i_sub_i_euler39_sel_x_b;
    wire [31:0] c_i32_64108_recast_x_q;
    wire [63:0] c_i64_0120_recast_x_q;
    wire [63:0] i_acl_49_i_euler81_sel_x_b;
    wire [1:0] i_and30_trunc_i_euler65_sel_x_b;
    wire [31:0] i_conv1_i_i_euler7_sel_x_b;
    wire [31:0] i_conv33_i_euler68_sel_x_b;
    wire [167:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a;
    wire [63:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q;
    wire [167:0] i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_dsdk_ip_adapt_bitjoin1_x_q;
    wire [4:0] i_notmask_i_euler0_shift_narrow_x_b;
    wire [31:0] i_or_i_i_euler10_sel_x_b;
    wire [63:0] i_sh_prom1250_i_euler50_sel_x_b;
    wire [63:0] i_sh_prom29_i_euler63_sel_x_b;
    wire [63:0] i_sh_prom3151_i_euler66_sel_x_b;
    wire [63:0] i_sh_prom9_i_euler47_sel_x_b;
    wire [63:0] i_sh_prom_i_euler44_sel_x_b;
    wire [5:0] i_shl10_i_euler0_shift_narrow_x_b;
    wire [5:0] i_shl13_i_euler0_shift_narrow_x_b;
    wire [4:0] i_shl19_i_euler0_shift_narrow_x_b;
    wire [5:0] i_shl_i_euler0_shift_narrow_x_b;
    wire [5:0] i_shr32_i_euler0_shift_narrow_x_b;
    wire [5:0] i_shr_i_euler0_shift_narrow_x_b;
    wire [15:0] i_unnamed_euler54_sel_x_b;
    wire [15:0] i_unnamed_euler59_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    wire [31:0] i_and7_i_euler43_join_q;
    wire [31:0] i_and8_i_euler46_join_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid392_i_notmask_i_euler0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid395_i_notmask_i_euler0_shift_x_q;
    wire [2:0] leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid398_i_notmask_i_euler0_shift_x_q;
    wire [1:0] leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_s;
    reg [31:0] leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid403_i_notmask_i_euler0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid406_i_notmask_i_euler0_shift_x_q;
    wire [11:0] leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid409_i_notmask_i_euler0_shift_x_q;
    wire [1:0] leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_s;
    reg [31:0] leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q;
    wire [59:0] leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x_in;
    wire [59:0] leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid417_i_shl10_i_euler0_shift_x_q;
    wire [55:0] leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x_in;
    wire [55:0] leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid420_i_shl10_i_euler0_shift_x_q;
    wire [51:0] leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x_in;
    wire [51:0] leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid423_i_shl10_i_euler0_shift_x_q;
    wire [3:0] leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_in;
    wire [1:0] leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b;
    wire [1:0] leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_s;
    reg [63:0] leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q;
    wire [62:0] leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x_in;
    wire [62:0] leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid431_i_shl13_i_euler0_shift_x_q;
    wire [61:0] leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x_in;
    wire [61:0] leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid434_i_shl13_i_euler0_shift_x_q;
    wire [60:0] leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x_in;
    wire [60:0] leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid437_i_shl13_i_euler0_shift_x_q;
    wire [1:0] leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_in;
    wire [1:0] leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b;
    wire [1:0] leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_s;
    reg [63:0] leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid445_i_shl19_i_euler0_shift_x_q;
    wire [29:0] leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x_in;
    wire [29:0] leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage0Idx2_uid448_i_shl19_i_euler0_shift_x_q;
    wire [28:0] leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x_in;
    wire [28:0] leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage0Idx3_uid451_i_shl19_i_euler0_shift_x_q;
    wire [1:0] leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_s;
    reg [31:0] leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid456_i_shl19_i_euler0_shift_x_q;
    wire [23:0] leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x_in;
    wire [23:0] leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage1Idx2_uid459_i_shl19_i_euler0_shift_x_q;
    wire [19:0] leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x_in;
    wire [19:0] leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage1Idx3_uid462_i_shl19_i_euler0_shift_x_q;
    wire [1:0] leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_s;
    reg [31:0] leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q;
    wire [15:0] leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x_in;
    wire [15:0] leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x_b;
    wire [31:0] leftShiftStage2Idx1_uid467_i_shl19_i_euler0_shift_x_q;
    wire [0:0] leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_s;
    reg [31:0] leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_q;
    wire [47:0] leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x_in;
    wire [47:0] leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx1_uid475_i_shl_i_euler0_shift_x_q;
    wire [31:0] leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x_in;
    wire [31:0] leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx2_uid478_i_shl_i_euler0_shift_x_q;
    wire [47:0] leftShiftStage0Idx3Pad48_uid479_i_shl_i_euler0_shift_x_q;
    wire [15:0] leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x_in;
    wire [15:0] leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x_b;
    wire [63:0] leftShiftStage0Idx3_uid481_i_shl_i_euler0_shift_x_q;
    wire [1:0] leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b;
    wire [1:0] leftShiftStage0_uid483_i_shl_i_euler0_shift_x_s;
    reg [63:0] leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q;
    wire [30:0] rightShiftStage0Idx1Rng1_uid487_i_shr12_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid489_i_shr12_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid495_i_shr14_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid497_i_shr14_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid503_i_shr16_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid505_i_shr16_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid511_i_shr18_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid513_i_shr18_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid519_i_shr20_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid521_i_shr20_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid527_i_shr2_i44_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid529_i_shr2_i44_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q;
    wire [31:0] rightShiftStage1Idx1Rng32_uid532_i_shr2_i44_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid534_i_shr2_i44_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid540_i_shr32_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid542_i_shr32_i_euler0_shift_x_q;
    wire [61:0] rightShiftStage0Idx2Rng2_uid543_i_shr32_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx2_uid545_i_shr32_i_euler0_shift_x_q;
    wire [60:0] rightShiftStage0Idx3Rng3_uid546_i_shr32_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx3_uid548_i_shr32_i_euler0_shift_x_q;
    wire [1:0] rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_in;
    wire [1:0] rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b;
    wire [1:0] rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q;
    wire [29:0] rightShiftStage0Idx1Rng2_uid554_i_shr3_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid556_i_shr3_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_q;
    wire [27:0] rightShiftStage0Idx1Rng4_uid562_i_shr5_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid564_i_shr5_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_q;
    wire [23:0] rightShiftStage0Idx1Rng8_uid570_i_shr7_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid572_i_shr7_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_q;
    wire [15:0] rightShiftStage0Idx1Rng16_uid578_i_shr9_i_i_euler0_shift_x_b;
    wire [31:0] rightShiftStage0Idx1_uid580_i_shr9_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_s;
    reg [31:0] rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_q;
    wire [59:0] rightShiftStage0Idx1Rng4_uid586_i_shr_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid588_i_shr_i_euler0_shift_x_q;
    wire [55:0] rightShiftStage0Idx2Rng8_uid589_i_shr_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx2_uid591_i_shr_i_euler0_shift_x_q;
    wire [51:0] rightShiftStage0Idx3Rng12_uid592_i_shr_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx3_uid594_i_shr_i_euler0_shift_x_q;
    wire [3:0] rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x_in;
    wire [1:0] rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x_b;
    wire [1:0] rightShiftStage0_uid596_i_shr_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q;
    wire [31:0] rightShiftStage0Idx1Rng32_uid600_i_shr_i_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid602_i_shr_i_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_q;
    wire [0:0] xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b;
    wire [62:0] rightShiftStage0Idx1Rng1_uid608_i_x_lobit43_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid609_i_x_lobit43_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q;
    wire [1:0] seMsb_to2_uid612_in;
    wire [1:0] seMsb_to2_uid612_b;
    wire [61:0] rightShiftStage1Idx1Rng2_uid613_i_x_lobit43_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid614_i_x_lobit43_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q;
    wire [3:0] seMsb_to4_uid617_in;
    wire [3:0] seMsb_to4_uid617_b;
    wire [59:0] rightShiftStage2Idx1Rng4_uid618_i_x_lobit43_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid619_i_x_lobit43_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q;
    wire [7:0] seMsb_to8_uid622_in;
    wire [7:0] seMsb_to8_uid622_b;
    wire [55:0] rightShiftStage3Idx1Rng8_uid623_i_x_lobit43_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage3Idx1_uid624_i_x_lobit43_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q;
    wire [15:0] seMsb_to16_uid627_in;
    wire [15:0] seMsb_to16_uid627_b;
    wire [47:0] rightShiftStage4Idx1Rng16_uid628_i_x_lobit43_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage4Idx1_uid629_i_x_lobit43_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q;
    wire [31:0] seMsb_to32_uid632_in;
    wire [31:0] seMsb_to32_uid632_b;
    wire [31:0] rightShiftStage5Idx1Rng32_uid633_i_x_lobit43_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage5Idx1_uid634_i_x_lobit43_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_q;
    wire [62:0] rightShiftStage0Idx1Rng1_uid640_i_x_lobit_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage0Idx1_uid642_i_x_lobit_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q;
    wire [61:0] rightShiftStage1Idx1Rng2_uid645_i_x_lobit_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage1Idx1_uid647_i_x_lobit_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q;
    wire [59:0] rightShiftStage2Idx1Rng4_uid650_i_x_lobit_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage2Idx1_uid652_i_x_lobit_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q;
    wire [55:0] rightShiftStage3Idx1Rng8_uid655_i_x_lobit_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage3Idx1_uid657_i_x_lobit_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q;
    wire [47:0] rightShiftStage4Idx1Rng16_uid660_i_x_lobit_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage4Idx1_uid662_i_x_lobit_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q;
    wire [31:0] rightShiftStage5Idx1Rng32_uid665_i_x_lobit_i_euler0_shift_x_b;
    wire [63:0] rightShiftStage5Idx1_uid667_i_x_lobit_i_euler0_shift_x_q;
    wire [0:0] rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_s;
    reg [63:0] rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_q;
    wire [5:0] i_and11_trunc_i_euler49_sel_x_merged_bit_select_in;
    wire [1:0] i_and11_trunc_i_euler49_sel_x_merged_bit_select_b;
    wire [1:0] i_and11_trunc_i_euler49_sel_x_merged_bit_select_c;
    wire [1:0] i_and11_trunc_i_euler49_sel_x_merged_bit_select_d;
    wire [3:0] leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_in;
    wire [1:0] leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_c;
    wire [1:0] leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_b;
    wire [1:0] leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_c;
    wire [0:0] leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d;
    reg [0:0] redist0_leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d_1_q;
    reg [1:0] redist1_rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b_1_q;
    reg [1:0] redist2_leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b_1_q;
    reg [1:0] redist3_leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b_1_q;
    reg [1:0] redist4_leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b_1_q;
    reg [0:0] redist6_sync_together128_aunroll_x_in_c0_eni463_2_tpl_43_q;
    reg [0:0] redist7_sync_together128_aunroll_x_in_c0_eni463_3_tpl_43_q;
    reg [0:0] redist8_sync_together128_aunroll_x_in_c0_eni463_4_tpl_54_q;
    reg [0:0] redist9_sync_together128_aunroll_x_in_i_valid_42_q;
    reg [0:0] redist10_sync_together128_aunroll_x_in_i_valid_53_q;
    reg [63:0] redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_q;
    reg [63:0] redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_delay_0;
    reg [63:0] redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q;
    reg [63:0] redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q;
    reg [63:0] redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_delay_0;
    reg [63:0] redist14_bgTrunc_i_add_i_euler85_sel_x_b_1_q;
    reg [10:0] redist15_i_unnamed_euler40_vt_select_10_b_1_q;
    reg [63:0] redist16_i_op_euler87_out_primWireOut_1_q;
    reg [63:0] redist17_i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out_1_q;
    reg [5:0] redist18_i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b_1_q;
    reg [0:0] redist19_i_cmp4_i_euler41_c_3_q;
    reg [0:0] redist19_i_cmp4_i_euler41_c_3_delay_0;
    reg [0:0] redist20_i_and36_i_euler72_vt_select_0_b_1_q;
    reg [1:0] redist21_i_and28_i_euler62_vt_select_3_b_1_q;
    reg [10:0] redist22_i_and2647_i_euler61_vt_select_10_b_1_q;
    reg [3:0] redist23_i_and15_i_euler53_vt_select_3_b_1_q;
    reg [6:0] redist24_i_add_i42_i_euler35_vt_select_6_b_1_q;
    wire redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_reset0;
    wire [63:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_ia;
    wire [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_aa;
    wire [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_ab;
    wire [63:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_iq;
    wire [63:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_q;
    wire [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_q;
    (* preserve *) reg [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_i;
    reg [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_wraddr_q;
    (* dont_merge *) reg [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_cmpReg_q;
    wire [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_notEnable_q;
    wire [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_nor_q;
    (* dont_merge *) reg [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_sticky_ena_q;
    wire [0:0] redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist9_sync_together128_aunroll_x_in_i_valid_42(DELAY,682)
    dspba_delay_ver #( .width(1), .depth(42), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together128_aunroll_x_in_i_valid_42 ( .xin(in_i_valid), .xout(redist9_sync_together128_aunroll_x_in_i_valid_42_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together128_aunroll_x_in_i_valid_53(DELAY,683)
    dspba_delay_ver #( .width(1), .depth(11), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together128_aunroll_x_in_i_valid_53 ( .xin(redist9_sync_together128_aunroll_x_in_i_valid_42_q), .xout(redist10_sync_together128_aunroll_x_in_i_valid_53_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg3(REG,342)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist10_sync_together128_aunroll_x_in_i_valid_53_q);
        end
    end

    // c_double_1_000000e_00124(FLOATCONSTANT,10)
    assign c_double_1_000000e_00124_q = $unsigned(64'b0011111111110000000000000000000000000000000000000000000000000000);

    // i_acl_49_i_euler81_vt_const_63(CONSTANT,39)
    assign i_acl_49_i_euler81_vt_const_63_q = $unsigned(63'b000000000000000000000000000000000000000000000000000000000000000);

    // i_add_i42_i_euler35_vt_const_31(CONSTANT,44)
    assign i_add_i42_i_euler35_vt_const_31_q = $unsigned(25'b0000000000000000000000000);

    // c_i32_32107(CONSTANT,27)
    assign c_i32_32107_q = $unsigned(32'b00000000000000000000000000100000);

    // i_and7_i_euler43_vt_const_31(CONSTANT,70)
    assign i_and7_i_euler43_vt_const_31_q = $unsigned(26'b00000000000000000000000000);

    // c_i32_1104(CONSTANT,20)
    assign c_i32_1104_q = $unsigned(32'b11111111111111111111111111111111);

    // c_i32_0106(CONSTANT,17)
    assign c_i32_0106_q = $unsigned(32'b00000000000000000000000000000000);

    // rightShiftStage5Idx1Rng32_uid665_i_x_lobit_i_euler0_shift_x(BITSELECT,664)@0
    assign rightShiftStage5Idx1Rng32_uid665_i_x_lobit_i_euler0_shift_x_b = rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q[63:32];

    // rightShiftStage5Idx1_uid667_i_x_lobit_i_euler0_shift_x(BITJOIN,666)@0
    assign rightShiftStage5Idx1_uid667_i_x_lobit_i_euler0_shift_x_q = {c_i32_0106_q, rightShiftStage5Idx1Rng32_uid665_i_x_lobit_i_euler0_shift_x_b};

    // i_conv34_i_euler69_vt_const_31(CONSTANT,98)
    assign i_conv34_i_euler69_vt_const_31_q = $unsigned(16'b0000000000000000);

    // rightShiftStage4Idx1Rng16_uid660_i_x_lobit_i_euler0_shift_x(BITSELECT,659)@0
    assign rightShiftStage4Idx1Rng16_uid660_i_x_lobit_i_euler0_shift_x_b = rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q[63:16];

    // rightShiftStage4Idx1_uid662_i_x_lobit_i_euler0_shift_x(BITJOIN,661)@0
    assign rightShiftStage4Idx1_uid662_i_x_lobit_i_euler0_shift_x_q = {i_conv34_i_euler69_vt_const_31_q, rightShiftStage4Idx1Rng16_uid660_i_x_lobit_i_euler0_shift_x_b};

    // i_shr18_i_i_euler27_vt_const_31(CONSTANT,170)
    assign i_shr18_i_i_euler27_vt_const_31_q = $unsigned(8'b00000000);

    // rightShiftStage3Idx1Rng8_uid655_i_x_lobit_i_euler0_shift_x(BITSELECT,654)@0
    assign rightShiftStage3Idx1Rng8_uid655_i_x_lobit_i_euler0_shift_x_b = rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q[63:8];

    // rightShiftStage3Idx1_uid657_i_x_lobit_i_euler0_shift_x(BITJOIN,656)@0
    assign rightShiftStage3Idx1_uid657_i_x_lobit_i_euler0_shift_x_q = {i_shr18_i_i_euler27_vt_const_31_q, rightShiftStage3Idx1Rng8_uid655_i_x_lobit_i_euler0_shift_x_b};

    // i_and7_i_euler43_vt_const_3(CONSTANT,69)
    assign i_and7_i_euler43_vt_const_3_q = $unsigned(4'b0000);

    // rightShiftStage2Idx1Rng4_uid650_i_x_lobit_i_euler0_shift_x(BITSELECT,649)@0
    assign rightShiftStage2Idx1Rng4_uid650_i_x_lobit_i_euler0_shift_x_b = rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q[63:4];

    // rightShiftStage2Idx1_uid652_i_x_lobit_i_euler0_shift_x(BITJOIN,651)@0
    assign rightShiftStage2Idx1_uid652_i_x_lobit_i_euler0_shift_x_q = {i_and7_i_euler43_vt_const_3_q, rightShiftStage2Idx1Rng4_uid650_i_x_lobit_i_euler0_shift_x_b};

    // i_and28_i_euler62_vt_const_1(CONSTANT,59)
    assign i_and28_i_euler62_vt_const_1_q = $unsigned(2'b00);

    // rightShiftStage1Idx1Rng2_uid645_i_x_lobit_i_euler0_shift_x(BITSELECT,644)@0
    assign rightShiftStage1Idx1Rng2_uid645_i_x_lobit_i_euler0_shift_x_b = rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q[63:2];

    // rightShiftStage1Idx1_uid647_i_x_lobit_i_euler0_shift_x(BITJOIN,646)@0
    assign rightShiftStage1Idx1_uid647_i_x_lobit_i_euler0_shift_x_q = {i_and28_i_euler62_vt_const_1_q, rightShiftStage1Idx1Rng2_uid645_i_x_lobit_i_euler0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid640_i_x_lobit_i_euler0_shift_x(BITSELECT,639)@0
    assign rightShiftStage0Idx1Rng1_uid640_i_x_lobit_i_euler0_shift_x_b = in_c0_eni463_1_tpl[63:1];

    // rightShiftStage0Idx1_uid642_i_x_lobit_i_euler0_shift_x(BITJOIN,641)@0
    assign rightShiftStage0Idx1_uid642_i_x_lobit_i_euler0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid640_i_x_lobit_i_euler0_shift_x_b};

    // rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x(MUX,643)@0
    assign rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_s or in_c0_eni463_1_tpl or rightShiftStage0Idx1_uid642_i_x_lobit_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q = in_c0_eni463_1_tpl;
            1'b1 : rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q = rightShiftStage0Idx1_uid642_i_x_lobit_i_euler0_shift_x_q;
            default : rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x(MUX,648)@0
    assign rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_s or rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q or rightShiftStage1Idx1_uid647_i_x_lobit_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_s)
            1'b0 : rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q = rightShiftStage0_uid644_i_x_lobit_i_euler0_shift_x_q;
            1'b1 : rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q = rightShiftStage1Idx1_uid647_i_x_lobit_i_euler0_shift_x_q;
            default : rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x(MUX,653)@0
    assign rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_s or rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q or rightShiftStage2Idx1_uid652_i_x_lobit_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_s)
            1'b0 : rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q = rightShiftStage1_uid649_i_x_lobit_i_euler0_shift_x_q;
            1'b1 : rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q = rightShiftStage2Idx1_uid652_i_x_lobit_i_euler0_shift_x_q;
            default : rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x(MUX,658)@0
    assign rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_s or rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q or rightShiftStage3Idx1_uid657_i_x_lobit_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_s)
            1'b0 : rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q = rightShiftStage2_uid654_i_x_lobit_i_euler0_shift_x_q;
            1'b1 : rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q = rightShiftStage3Idx1_uid657_i_x_lobit_i_euler0_shift_x_q;
            default : rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x(MUX,663)@0
    assign rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_s or rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q or rightShiftStage4Idx1_uid662_i_x_lobit_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_s)
            1'b0 : rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q = rightShiftStage3_uid659_i_x_lobit_i_euler0_shift_x_q;
            1'b1 : rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q = rightShiftStage4Idx1_uid662_i_x_lobit_i_euler0_shift_x_q;
            default : rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x(MUX,668)@0
    assign rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_s or rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q or rightShiftStage5Idx1_uid667_i_x_lobit_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_s)
            1'b0 : rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_q = rightShiftStage4_uid664_i_x_lobit_i_euler0_shift_x_q;
            1'b1 : rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_q = rightShiftStage5Idx1_uid667_i_x_lobit_i_euler0_shift_x_q;
            default : rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_x_lobit_i_euler2_vt_select_0(BITSELECT,220)@0
    assign i_x_lobit_i_euler2_vt_select_0_b = rightShiftStage5_uid669_i_x_lobit_i_euler0_shift_x_q[0:0];

    // i_x_lobit_i_euler2_vt_join(BITJOIN,219)@0
    assign i_x_lobit_i_euler2_vt_join_q = {i_acl_49_i_euler81_vt_const_63_q, i_x_lobit_i_euler2_vt_select_0_b};

    // xMSB_uid606_i_x_lobit43_i_euler0_shift_x(BITSELECT,605)@0
    assign xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b = $unsigned(in_c0_eni463_1_tpl[63:63]);

    // seMsb_to32_uid632(BITSELECT,631)@0
    assign seMsb_to32_uid632_in = $unsigned({{31{xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b[0]}}, xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b});
    assign seMsb_to32_uid632_b = $unsigned(seMsb_to32_uid632_in[31:0]);

    // rightShiftStage5Idx1Rng32_uid633_i_x_lobit43_i_euler0_shift_x(BITSELECT,632)@0
    assign rightShiftStage5Idx1Rng32_uid633_i_x_lobit43_i_euler0_shift_x_b = $unsigned(rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q[63:32]);

    // rightShiftStage5Idx1_uid634_i_x_lobit43_i_euler0_shift_x(BITJOIN,633)@0
    assign rightShiftStage5Idx1_uid634_i_x_lobit43_i_euler0_shift_x_q = {seMsb_to32_uid632_b, rightShiftStage5Idx1Rng32_uid633_i_x_lobit43_i_euler0_shift_x_b};

    // seMsb_to16_uid627(BITSELECT,626)@0
    assign seMsb_to16_uid627_in = $unsigned({{15{xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b[0]}}, xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b});
    assign seMsb_to16_uid627_b = $unsigned(seMsb_to16_uid627_in[15:0]);

    // rightShiftStage4Idx1Rng16_uid628_i_x_lobit43_i_euler0_shift_x(BITSELECT,627)@0
    assign rightShiftStage4Idx1Rng16_uid628_i_x_lobit43_i_euler0_shift_x_b = $unsigned(rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q[63:16]);

    // rightShiftStage4Idx1_uid629_i_x_lobit43_i_euler0_shift_x(BITJOIN,628)@0
    assign rightShiftStage4Idx1_uid629_i_x_lobit43_i_euler0_shift_x_q = {seMsb_to16_uid627_b, rightShiftStage4Idx1Rng16_uid628_i_x_lobit43_i_euler0_shift_x_b};

    // seMsb_to8_uid622(BITSELECT,621)@0
    assign seMsb_to8_uid622_in = $unsigned({{7{xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b[0]}}, xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b});
    assign seMsb_to8_uid622_b = $unsigned(seMsb_to8_uid622_in[7:0]);

    // rightShiftStage3Idx1Rng8_uid623_i_x_lobit43_i_euler0_shift_x(BITSELECT,622)@0
    assign rightShiftStage3Idx1Rng8_uid623_i_x_lobit43_i_euler0_shift_x_b = $unsigned(rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q[63:8]);

    // rightShiftStage3Idx1_uid624_i_x_lobit43_i_euler0_shift_x(BITJOIN,623)@0
    assign rightShiftStage3Idx1_uid624_i_x_lobit43_i_euler0_shift_x_q = {seMsb_to8_uid622_b, rightShiftStage3Idx1Rng8_uid623_i_x_lobit43_i_euler0_shift_x_b};

    // seMsb_to4_uid617(BITSELECT,616)@0
    assign seMsb_to4_uid617_in = $unsigned({{3{xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b[0]}}, xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b});
    assign seMsb_to4_uid617_b = $unsigned(seMsb_to4_uid617_in[3:0]);

    // rightShiftStage2Idx1Rng4_uid618_i_x_lobit43_i_euler0_shift_x(BITSELECT,617)@0
    assign rightShiftStage2Idx1Rng4_uid618_i_x_lobit43_i_euler0_shift_x_b = $unsigned(rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q[63:4]);

    // rightShiftStage2Idx1_uid619_i_x_lobit43_i_euler0_shift_x(BITJOIN,618)@0
    assign rightShiftStage2Idx1_uid619_i_x_lobit43_i_euler0_shift_x_q = {seMsb_to4_uid617_b, rightShiftStage2Idx1Rng4_uid618_i_x_lobit43_i_euler0_shift_x_b};

    // seMsb_to2_uid612(BITSELECT,611)@0
    assign seMsb_to2_uid612_in = $unsigned({{1{xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b[0]}}, xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b});
    assign seMsb_to2_uid612_b = $unsigned(seMsb_to2_uid612_in[1:0]);

    // rightShiftStage1Idx1Rng2_uid613_i_x_lobit43_i_euler0_shift_x(BITSELECT,612)@0
    assign rightShiftStage1Idx1Rng2_uid613_i_x_lobit43_i_euler0_shift_x_b = $unsigned(rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q[63:2]);

    // rightShiftStage1Idx1_uid614_i_x_lobit43_i_euler0_shift_x(BITJOIN,613)@0
    assign rightShiftStage1Idx1_uid614_i_x_lobit43_i_euler0_shift_x_q = {seMsb_to2_uid612_b, rightShiftStage1Idx1Rng2_uid613_i_x_lobit43_i_euler0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid608_i_x_lobit43_i_euler0_shift_x(BITSELECT,607)@0
    assign rightShiftStage0Idx1Rng1_uid608_i_x_lobit43_i_euler0_shift_x_b = $unsigned(in_c0_eni463_1_tpl[63:1]);

    // rightShiftStage0Idx1_uid609_i_x_lobit43_i_euler0_shift_x(BITJOIN,608)@0
    assign rightShiftStage0Idx1_uid609_i_x_lobit43_i_euler0_shift_x_q = {xMSB_uid606_i_x_lobit43_i_euler0_shift_x_b, rightShiftStage0Idx1Rng1_uid608_i_x_lobit43_i_euler0_shift_x_b};

    // rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x(MUX,610)@0
    assign rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_s or in_c0_eni463_1_tpl or rightShiftStage0Idx1_uid609_i_x_lobit43_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q = in_c0_eni463_1_tpl;
            1'b1 : rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage0Idx1_uid609_i_x_lobit43_i_euler0_shift_x_q;
            default : rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x(MUX,615)@0
    assign rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_s or rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q or rightShiftStage1Idx1_uid614_i_x_lobit43_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_s)
            1'b0 : rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage0_uid611_i_x_lobit43_i_euler0_shift_x_q;
            1'b1 : rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage1Idx1_uid614_i_x_lobit43_i_euler0_shift_x_q;
            default : rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x(MUX,620)@0
    assign rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_s or rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q or rightShiftStage2Idx1_uid619_i_x_lobit43_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_s)
            1'b0 : rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage1_uid616_i_x_lobit43_i_euler0_shift_x_q;
            1'b1 : rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage2Idx1_uid619_i_x_lobit43_i_euler0_shift_x_q;
            default : rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x(MUX,625)@0
    assign rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_s or rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q or rightShiftStage3Idx1_uid624_i_x_lobit43_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_s)
            1'b0 : rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage2_uid621_i_x_lobit43_i_euler0_shift_x_q;
            1'b1 : rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage3Idx1_uid624_i_x_lobit43_i_euler0_shift_x_q;
            default : rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x(MUX,630)@0
    assign rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_s or rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q or rightShiftStage4Idx1_uid629_i_x_lobit43_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_s)
            1'b0 : rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage3_uid626_i_x_lobit43_i_euler0_shift_x_q;
            1'b1 : rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage4Idx1_uid629_i_x_lobit43_i_euler0_shift_x_q;
            default : rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x(MUX,635)@0
    assign rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_s or rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q or rightShiftStage5Idx1_uid634_i_x_lobit43_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_s)
            1'b0 : rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage4_uid631_i_x_lobit43_i_euler0_shift_x_q;
            1'b1 : rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_q = rightShiftStage5Idx1_uid634_i_x_lobit43_i_euler0_shift_x_q;
            default : rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_xor_i_i_euler4(LOGICAL,221)@0
    assign i_xor_i_i_euler4_q = rightShiftStage5_uid636_i_x_lobit43_i_euler0_shift_x_q ^ in_c0_eni463_1_tpl;

    // i_add_i_i_euler5(ADD,48)@0
    assign i_add_i_i_euler5_a = {1'b0, i_xor_i_i_euler4_q};
    assign i_add_i_i_euler5_b = {1'b0, i_x_lobit_i_euler2_vt_join_q};
    assign i_add_i_i_euler5_o = $unsigned(i_add_i_i_euler5_a) + $unsigned(i_add_i_i_euler5_b);
    assign i_add_i_i_euler5_q = i_add_i_i_euler5_o[64:0];

    // bgTrunc_i_add_i_i_euler5_sel_x(BITSELECT,231)@0
    assign bgTrunc_i_add_i_i_euler5_sel_x_b = i_add_i_i_euler5_q[63:0];

    // i_conv1_i_i_euler7_sel_x(BITSELECT,242)@0
    assign i_conv1_i_i_euler7_sel_x_b = bgTrunc_i_add_i_i_euler5_sel_x_b[31:0];

    // rightShiftStage0Idx1Rng1_uid487_i_shr12_i_i_euler0_shift_x(BITSELECT,486)@0
    assign rightShiftStage0Idx1Rng1_uid487_i_shr12_i_i_euler0_shift_x_b = i_conv1_i_i_euler7_sel_x_b[31:1];

    // rightShiftStage0Idx1_uid489_i_shr12_i_i_euler0_shift_x(BITJOIN,488)@0
    assign rightShiftStage0Idx1_uid489_i_shr12_i_i_euler0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid487_i_shr12_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x(MUX,490)@0
    assign rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_s or i_conv1_i_i_euler7_sel_x_b or rightShiftStage0Idx1_uid489_i_shr12_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_q = i_conv1_i_i_euler7_sel_x_b;
            1'b1 : rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid489_i_shr12_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr12_i_i_euler21_vt_select_30(BITSELECT,163)@0
    assign i_shr12_i_i_euler21_vt_select_30_b = rightShiftStage0_uid491_i_shr12_i_i_euler0_shift_x_q[30:0];

    // i_shr12_i_i_euler21_vt_join(BITJOIN,162)@0
    assign i_shr12_i_i_euler21_vt_join_q = {GND_q, i_shr12_i_i_euler21_vt_select_30_b};

    // i_or13_i_i_euler22(LOGICAL,123)@0
    assign i_or13_i_i_euler22_q = i_shr12_i_i_euler21_vt_join_q | i_conv1_i_i_euler7_sel_x_b;

    // rightShiftStage0Idx1Rng2_uid495_i_shr14_i_i_euler0_shift_x(BITSELECT,494)@0
    assign rightShiftStage0Idx1Rng2_uid495_i_shr14_i_i_euler0_shift_x_b = i_or13_i_i_euler22_q[31:2];

    // rightShiftStage0Idx1_uid497_i_shr14_i_i_euler0_shift_x(BITJOIN,496)@0
    assign rightShiftStage0Idx1_uid497_i_shr14_i_i_euler0_shift_x_q = {i_and28_i_euler62_vt_const_1_q, rightShiftStage0Idx1Rng2_uid495_i_shr14_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x(MUX,498)@0
    assign rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_s or i_or13_i_i_euler22_q or rightShiftStage0Idx1_uid497_i_shr14_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_q = i_or13_i_i_euler22_q;
            1'b1 : rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid497_i_shr14_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr14_i_i_euler23_vt_select_29(BITSELECT,166)@0
    assign i_shr14_i_i_euler23_vt_select_29_b = rightShiftStage0_uid499_i_shr14_i_i_euler0_shift_x_q[29:0];

    // i_shr14_i_i_euler23_vt_join(BITJOIN,165)@0
    assign i_shr14_i_i_euler23_vt_join_q = {i_and28_i_euler62_vt_const_1_q, i_shr14_i_i_euler23_vt_select_29_b};

    // i_or15_i_i_euler24(LOGICAL,124)@0 + 1
    assign i_or15_i_i_euler24_qi = i_shr14_i_i_euler23_vt_join_q | i_or13_i_i_euler22_q;
    dspba_delay_ver #( .width(32), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_or15_i_i_euler24_delay ( .xin(i_or15_i_i_euler24_qi), .xout(i_or15_i_i_euler24_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // rightShiftStage0Idx1Rng4_uid503_i_shr16_i_i_euler0_shift_x(BITSELECT,502)@1
    assign rightShiftStage0Idx1Rng4_uid503_i_shr16_i_i_euler0_shift_x_b = i_or15_i_i_euler24_q[31:4];

    // rightShiftStage0Idx1_uid505_i_shr16_i_i_euler0_shift_x(BITJOIN,504)@1
    assign rightShiftStage0Idx1_uid505_i_shr16_i_i_euler0_shift_x_q = {i_and7_i_euler43_vt_const_3_q, rightShiftStage0Idx1Rng4_uid503_i_shr16_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x(MUX,506)@1
    assign rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_s or i_or15_i_i_euler24_q or rightShiftStage0Idx1_uid505_i_shr16_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_q = i_or15_i_i_euler24_q;
            1'b1 : rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid505_i_shr16_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr16_i_i_euler25_vt_select_27(BITSELECT,169)@1
    assign i_shr16_i_i_euler25_vt_select_27_b = rightShiftStage0_uid507_i_shr16_i_i_euler0_shift_x_q[27:0];

    // i_shr16_i_i_euler25_vt_join(BITJOIN,168)@1
    assign i_shr16_i_i_euler25_vt_join_q = {i_and7_i_euler43_vt_const_3_q, i_shr16_i_i_euler25_vt_select_27_b};

    // i_or17_i_i_euler26(LOGICAL,125)@1
    assign i_or17_i_i_euler26_q = i_shr16_i_i_euler25_vt_join_q | i_or15_i_i_euler24_q;

    // rightShiftStage0Idx1Rng8_uid511_i_shr18_i_i_euler0_shift_x(BITSELECT,510)@1
    assign rightShiftStage0Idx1Rng8_uid511_i_shr18_i_i_euler0_shift_x_b = i_or17_i_i_euler26_q[31:8];

    // rightShiftStage0Idx1_uid513_i_shr18_i_i_euler0_shift_x(BITJOIN,512)@1
    assign rightShiftStage0Idx1_uid513_i_shr18_i_i_euler0_shift_x_q = {i_shr18_i_i_euler27_vt_const_31_q, rightShiftStage0Idx1Rng8_uid511_i_shr18_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x(MUX,514)@1
    assign rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_s or i_or17_i_i_euler26_q or rightShiftStage0Idx1_uid513_i_shr18_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_q = i_or17_i_i_euler26_q;
            1'b1 : rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid513_i_shr18_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr18_i_i_euler27_vt_select_23(BITSELECT,172)@1
    assign i_shr18_i_i_euler27_vt_select_23_b = rightShiftStage0_uid515_i_shr18_i_i_euler0_shift_x_q[23:0];

    // i_shr18_i_i_euler27_vt_join(BITJOIN,171)@1
    assign i_shr18_i_i_euler27_vt_join_q = {i_shr18_i_i_euler27_vt_const_31_q, i_shr18_i_i_euler27_vt_select_23_b};

    // i_or19_i_i_euler28(LOGICAL,126)@1
    assign i_or19_i_i_euler28_q = i_shr18_i_i_euler27_vt_join_q | i_or17_i_i_euler26_q;

    // rightShiftStage0Idx1Rng16_uid519_i_shr20_i_i_euler0_shift_x(BITSELECT,518)@1
    assign rightShiftStage0Idx1Rng16_uid519_i_shr20_i_i_euler0_shift_x_b = i_or19_i_i_euler28_q[31:16];

    // rightShiftStage0Idx1_uid521_i_shr20_i_i_euler0_shift_x(BITJOIN,520)@1
    assign rightShiftStage0Idx1_uid521_i_shr20_i_i_euler0_shift_x_q = {i_conv34_i_euler69_vt_const_31_q, rightShiftStage0Idx1Rng16_uid519_i_shr20_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x(MUX,522)@1
    assign rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_s or i_or19_i_i_euler28_q or rightShiftStage0Idx1_uid521_i_shr20_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_q = i_or19_i_i_euler28_q;
            1'b1 : rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid521_i_shr20_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr20_i_i_euler29_vt_select_15(BITSELECT,175)@1
    assign i_shr20_i_i_euler29_vt_select_15_b = rightShiftStage0_uid523_i_shr20_i_i_euler0_shift_x_q[15:0];

    // i_shr20_i_i_euler29_vt_join(BITJOIN,174)@1
    assign i_shr20_i_i_euler29_vt_join_q = {i_conv34_i_euler69_vt_const_31_q, i_shr20_i_i_euler29_vt_select_15_b};

    // i_or21_i_i_euler30(LOGICAL,127)@1
    assign i_or21_i_i_euler30_q = i_shr20_i_i_euler29_vt_join_q | i_or19_i_i_euler28_q;

    // i_neg22_i_i_euler31(LOGICAL,115)@1
    assign i_neg22_i_i_euler31_q = i_or21_i_i_euler30_q ^ c_i32_1104_q;

    // i_llvm_ctpop_i32_unnamed_euler11_euler32(EXTIFACE,107)@1
    assign i_llvm_ctpop_i32_unnamed_euler11_euler32_data = i_neg22_i_i_euler31_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_euler11_euler32 (
        .data(i_neg22_i_i_euler31_q),
        .sum(i_llvm_ctpop_i32_unnamed_euler11_euler32_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_select_5(BITSELECT,110)@1
    assign i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_select_5_b = i_llvm_ctpop_i32_unnamed_euler11_euler32_sum[5:0];

    // i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_join(BITJOIN,109)@1
    assign i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_join_q = {i_and7_i_euler43_vt_const_31_q, i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_select_5_b};

    // i_add_i42_i_euler35(ADD,43)@1
    assign i_add_i42_i_euler35_a = {1'b0, i_llvm_ctpop_i32_unnamed_euler11_euler32_vt_join_q};
    assign i_add_i42_i_euler35_b = {1'b0, c_i32_32107_q};
    assign i_add_i42_i_euler35_o = $unsigned(i_add_i42_i_euler35_a) + $unsigned(i_add_i42_i_euler35_b);
    assign i_add_i42_i_euler35_q = i_add_i42_i_euler35_o[32:0];

    // bgTrunc_i_add_i42_i_euler35_sel_x(BITSELECT,229)@1
    assign bgTrunc_i_add_i42_i_euler35_sel_x_b = i_add_i42_i_euler35_q[31:0];

    // i_add_i42_i_euler35_vt_select_6(BITSELECT,46)@1
    assign i_add_i42_i_euler35_vt_select_6_b = bgTrunc_i_add_i42_i_euler35_sel_x_b[6:0];

    // redist24_i_add_i42_i_euler35_vt_select_6_b_1(DELAY,697)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add_i42_i_euler35_vt_select_6_b_1_q <= '0;
        end
        else
        begin
            redist24_i_add_i42_i_euler35_vt_select_6_b_1_q <= $unsigned(i_add_i42_i_euler35_vt_select_6_b);
        end
    end

    // i_add_i42_i_euler35_vt_join(BITJOIN,45)@2
    assign i_add_i42_i_euler35_vt_join_q = {i_add_i42_i_euler35_vt_const_31_q, redist24_i_add_i42_i_euler35_vt_select_6_b_1_q};

    // i_shr2_i44_i_euler8_vt_const_63(CONSTANT,176)
    assign i_shr2_i44_i_euler8_vt_const_63_q = $unsigned(33'b000000000000000000000000000000000);

    // rightShiftStage1Idx1Rng32_uid532_i_shr2_i44_i_euler0_shift_x(BITSELECT,531)@1
    assign rightShiftStage1Idx1Rng32_uid532_i_shr2_i44_i_euler0_shift_x_b = rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q[63:32];

    // rightShiftStage1Idx1_uid534_i_shr2_i44_i_euler0_shift_x(BITJOIN,533)@1
    assign rightShiftStage1Idx1_uid534_i_shr2_i44_i_euler0_shift_x_q = {c_i32_0106_q, rightShiftStage1Idx1Rng32_uid532_i_shr2_i44_i_euler0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid527_i_shr2_i44_i_euler0_shift_x(BITSELECT,526)@1
    assign rightShiftStage0Idx1Rng1_uid527_i_shr2_i44_i_euler0_shift_x_b = redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q[63:1];

    // rightShiftStage0Idx1_uid529_i_shr2_i44_i_euler0_shift_x(BITJOIN,528)@1
    assign rightShiftStage0Idx1_uid529_i_shr2_i44_i_euler0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid527_i_shr2_i44_i_euler0_shift_x_b};

    // redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1(DELAY,685)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_i_euler5_sel_x_b);
        end
    end

    // rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x(MUX,530)@1
    assign rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_s or redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q or rightShiftStage0Idx1_uid529_i_shr2_i44_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q = redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q = rightShiftStage0Idx1_uid529_i_shr2_i44_i_euler0_shift_x_q;
            default : rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x(MUX,535)@1
    assign rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_s or rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q or rightShiftStage1Idx1_uid534_i_shr2_i44_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_s)
            1'b0 : rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_q = rightShiftStage0_uid531_i_shr2_i44_i_euler0_shift_x_q;
            1'b1 : rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_q = rightShiftStage1Idx1_uid534_i_shr2_i44_i_euler0_shift_x_q;
            default : rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_shr2_i44_i_euler8_vt_select_30(BITSELECT,178)@1
    assign i_shr2_i44_i_euler8_vt_select_30_b = rightShiftStage1_uid536_i_shr2_i44_i_euler0_shift_x_q[30:0];

    // i_shr2_i44_i_euler8_vt_join(BITJOIN,177)@1
    assign i_shr2_i44_i_euler8_vt_join_q = {i_shr2_i44_i_euler8_vt_const_63_q, i_shr2_i44_i_euler8_vt_select_30_b};

    // rightShiftStage0Idx1Rng32_uid600_i_shr_i_i_euler0_shift_x(BITSELECT,599)@1
    assign rightShiftStage0Idx1Rng32_uid600_i_shr_i_i_euler0_shift_x_b = redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q[63:32];

    // rightShiftStage0Idx1_uid602_i_shr_i_i_euler0_shift_x(BITJOIN,601)@1
    assign rightShiftStage0Idx1_uid602_i_shr_i_i_euler0_shift_x_q = {c_i32_0106_q, rightShiftStage0Idx1Rng32_uid600_i_shr_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x(MUX,603)@1
    assign rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_s or redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q or rightShiftStage0Idx1_uid602_i_shr_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_q = redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q;
            1'b1 : rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid602_i_shr_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_shr_i_i_euler6_vt_select_31(BITSELECT,193)@1
    assign i_shr_i_i_euler6_vt_select_31_b = rightShiftStage0_uid604_i_shr_i_i_euler0_shift_x_q[31:0];

    // i_shr_i_i_euler6_vt_join(BITJOIN,192)@1
    assign i_shr_i_i_euler6_vt_join_q = {c_i32_0106_q, i_shr_i_i_euler6_vt_select_31_b};

    // i_or_i46_i_euler9(LOGICAL,133)@1
    assign i_or_i46_i_euler9_q = i_shr_i_i_euler6_vt_join_q | i_shr2_i44_i_euler8_vt_join_q;

    // i_or_i46_i_euler9_vt_select_31(BITSELECT,136)@1
    assign i_or_i46_i_euler9_vt_select_31_b = i_or_i46_i_euler9_q[31:0];

    // i_or_i46_i_euler9_vt_join(BITJOIN,135)@1
    assign i_or_i46_i_euler9_vt_join_q = {c_i32_0106_q, i_or_i46_i_euler9_vt_select_31_b};

    // i_or_i_i_euler10_sel_x(BITSELECT,251)@1
    assign i_or_i_i_euler10_sel_x_b = i_or_i46_i_euler9_vt_join_q[31:0];

    // rightShiftStage0Idx1Rng2_uid554_i_shr3_i_i_euler0_shift_x(BITSELECT,553)@1
    assign rightShiftStage0Idx1Rng2_uid554_i_shr3_i_i_euler0_shift_x_b = i_or_i_i_euler10_sel_x_b[31:2];

    // rightShiftStage0Idx1_uid556_i_shr3_i_i_euler0_shift_x(BITJOIN,555)@1
    assign rightShiftStage0Idx1_uid556_i_shr3_i_i_euler0_shift_x_q = {i_and28_i_euler62_vt_const_1_q, rightShiftStage0Idx1Rng2_uid554_i_shr3_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x(MUX,557)@1
    assign rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_s or i_or_i_i_euler10_sel_x_b or rightShiftStage0Idx1_uid556_i_shr3_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_q = i_or_i_i_euler10_sel_x_b;
            1'b1 : rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid556_i_shr3_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr3_i_i_euler11_vt_select_29(BITSELECT,181)@1
    assign i_shr3_i_i_euler11_vt_select_29_b = rightShiftStage0_uid558_i_shr3_i_i_euler0_shift_x_q[29:0];

    // i_shr3_i_i_euler11_vt_join(BITJOIN,180)@1
    assign i_shr3_i_i_euler11_vt_join_q = {i_and28_i_euler62_vt_const_1_q, i_shr3_i_i_euler11_vt_select_29_b};

    // i_or4_i_i_euler12(LOGICAL,128)@1
    assign i_or4_i_i_euler12_q = i_shr3_i_i_euler11_vt_join_q | i_or_i_i_euler10_sel_x_b;

    // rightShiftStage0Idx1Rng4_uid562_i_shr5_i_i_euler0_shift_x(BITSELECT,561)@1
    assign rightShiftStage0Idx1Rng4_uid562_i_shr5_i_i_euler0_shift_x_b = i_or4_i_i_euler12_q[31:4];

    // rightShiftStage0Idx1_uid564_i_shr5_i_i_euler0_shift_x(BITJOIN,563)@1
    assign rightShiftStage0Idx1_uid564_i_shr5_i_i_euler0_shift_x_q = {i_and7_i_euler43_vt_const_3_q, rightShiftStage0Idx1Rng4_uid562_i_shr5_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x(MUX,565)@1
    assign rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_s or i_or4_i_i_euler12_q or rightShiftStage0Idx1_uid564_i_shr5_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_q = i_or4_i_i_euler12_q;
            1'b1 : rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid564_i_shr5_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr5_i_i_euler13_vt_select_27(BITSELECT,184)@1
    assign i_shr5_i_i_euler13_vt_select_27_b = rightShiftStage0_uid566_i_shr5_i_i_euler0_shift_x_q[27:0];

    // i_shr5_i_i_euler13_vt_join(BITJOIN,183)@1
    assign i_shr5_i_i_euler13_vt_join_q = {i_and7_i_euler43_vt_const_3_q, i_shr5_i_i_euler13_vt_select_27_b};

    // i_or6_i_i_euler14(LOGICAL,129)@1
    assign i_or6_i_i_euler14_q = i_shr5_i_i_euler13_vt_join_q | i_or4_i_i_euler12_q;

    // rightShiftStage0Idx1Rng8_uid570_i_shr7_i_i_euler0_shift_x(BITSELECT,569)@1
    assign rightShiftStage0Idx1Rng8_uid570_i_shr7_i_i_euler0_shift_x_b = i_or6_i_i_euler14_q[31:8];

    // rightShiftStage0Idx1_uid572_i_shr7_i_i_euler0_shift_x(BITJOIN,571)@1
    assign rightShiftStage0Idx1_uid572_i_shr7_i_i_euler0_shift_x_q = {i_shr18_i_i_euler27_vt_const_31_q, rightShiftStage0Idx1Rng8_uid570_i_shr7_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x(MUX,573)@1
    assign rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_s or i_or6_i_i_euler14_q or rightShiftStage0Idx1_uid572_i_shr7_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_q = i_or6_i_i_euler14_q;
            1'b1 : rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid572_i_shr7_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr7_i_i_euler15_vt_select_23(BITSELECT,187)@1
    assign i_shr7_i_i_euler15_vt_select_23_b = rightShiftStage0_uid574_i_shr7_i_i_euler0_shift_x_q[23:0];

    // i_shr7_i_i_euler15_vt_join(BITJOIN,186)@1
    assign i_shr7_i_i_euler15_vt_join_q = {i_shr18_i_i_euler27_vt_const_31_q, i_shr7_i_i_euler15_vt_select_23_b};

    // i_or8_i_i_euler16(LOGICAL,130)@1
    assign i_or8_i_i_euler16_q = i_shr7_i_i_euler15_vt_join_q | i_or6_i_i_euler14_q;

    // rightShiftStage0Idx1Rng16_uid578_i_shr9_i_i_euler0_shift_x(BITSELECT,577)@1
    assign rightShiftStage0Idx1Rng16_uid578_i_shr9_i_i_euler0_shift_x_b = i_or8_i_i_euler16_q[31:16];

    // rightShiftStage0Idx1_uid580_i_shr9_i_i_euler0_shift_x(BITJOIN,579)@1
    assign rightShiftStage0Idx1_uid580_i_shr9_i_i_euler0_shift_x_q = {i_conv34_i_euler69_vt_const_31_q, rightShiftStage0Idx1Rng16_uid578_i_shr9_i_i_euler0_shift_x_b};

    // rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x(MUX,581)@1
    assign rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_s or i_or8_i_i_euler16_q or rightShiftStage0Idx1_uid580_i_shr9_i_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_s)
            1'b0 : rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_q = i_or8_i_i_euler16_q;
            1'b1 : rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_q = rightShiftStage0Idx1_uid580_i_shr9_i_i_euler0_shift_x_q;
            default : rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_shr9_i_i_euler17_vt_select_15(BITSELECT,190)@1
    assign i_shr9_i_i_euler17_vt_select_15_b = rightShiftStage0_uid582_i_shr9_i_i_euler0_shift_x_q[15:0];

    // i_shr9_i_i_euler17_vt_join(BITJOIN,189)@1
    assign i_shr9_i_i_euler17_vt_join_q = {i_conv34_i_euler69_vt_const_31_q, i_shr9_i_i_euler17_vt_select_15_b};

    // i_or10_i_i_euler18(LOGICAL,122)@1
    assign i_or10_i_i_euler18_q = i_shr9_i_i_euler17_vt_join_q | i_or8_i_i_euler16_q;

    // i_neg_i_i_euler19(LOGICAL,116)@1
    assign i_neg_i_i_euler19_q = i_or10_i_i_euler18_q ^ c_i32_1104_q;

    // i_llvm_ctpop_i32_unnamed_euler10_euler20(EXTIFACE,103)@1
    assign i_llvm_ctpop_i32_unnamed_euler10_euler20_data = i_neg_i_i_euler19_q;
    acl_popcount #(
        .DATA_WIDTH(32),
        .PIPELINE_DEPTH(0)
    ) thei_llvm_ctpop_i32_unnamed_euler10_euler20 (
        .data(i_neg_i_i_euler19_q),
        .sum(i_llvm_ctpop_i32_unnamed_euler10_euler20_sum),
        .clock(clock)
    );

    // i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5(BITSELECT,106)@1
    assign i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b = i_llvm_ctpop_i32_unnamed_euler10_euler20_sum[5:0];

    // redist18_i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b_1(DELAY,691)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b_1_q <= '0;
        end
        else
        begin
            redist18_i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b_1_q <= $unsigned(i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b);
        end
    end

    // i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_join(BITJOIN,105)@2
    assign i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_join_q = {i_and7_i_euler43_vt_const_31_q, redist18_i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_select_5_b_1_q};

    // i_cmp_i_i_euler33(LOGICAL,83)@1 + 1
    assign i_cmp_i_i_euler33_qi = $unsigned(i_or10_i_i_euler18_q == c_i32_0106_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp_i_i_euler33_delay ( .xin(i_cmp_i_i_euler33_qi), .xout(i_cmp_i_i_euler33_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_euler36(MUX,204)@2
    assign i_unnamed_euler36_s = i_cmp_i_i_euler33_q;
    always @(i_unnamed_euler36_s or i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_join_q or i_add_i42_i_euler35_vt_join_q)
    begin
        unique case (i_unnamed_euler36_s)
            1'b0 : i_unnamed_euler36_q = i_llvm_ctpop_i32_unnamed_euler10_euler20_vt_join_q;
            1'b1 : i_unnamed_euler36_q = i_add_i42_i_euler35_vt_join_q;
            default : i_unnamed_euler36_q = 32'b0;
        endcase
    end

    // i_unnamed_euler36_vt_select_6(BITSELECT,207)@2
    assign i_unnamed_euler36_vt_select_6_b = i_unnamed_euler36_q[6:0];

    // i_unnamed_euler36_vt_join(BITJOIN,206)@2
    assign i_unnamed_euler36_vt_join_q = {i_add_i42_i_euler35_vt_const_31_q, i_unnamed_euler36_vt_select_6_b};

    // c_i32_10110(CONSTANT,18)
    assign c_i32_10110_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp4_i_euler41(COMPARE,81)@2 + 1
    assign i_cmp4_i_euler41_a = {2'b00, c_i32_10110_q};
    assign i_cmp4_i_euler41_b = {2'b00, i_unnamed_euler36_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp4_i_euler41_o <= 34'b0;
        end
        else
        begin
            i_cmp4_i_euler41_o <= $unsigned(i_cmp4_i_euler41_a) - $unsigned(i_cmp4_i_euler41_b);
        end
    end
    assign i_cmp4_i_euler41_c[0] = i_cmp4_i_euler41_o[33];

    // redist19_i_cmp4_i_euler41_c_3(DELAY,692)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_cmp4_i_euler41_c_3_delay_0 <= '0;
            redist19_i_cmp4_i_euler41_c_3_q <= '0;
        end
        else
        begin
            redist19_i_cmp4_i_euler41_c_3_delay_0 <= $unsigned(i_cmp4_i_euler41_c);
            redist19_i_cmp4_i_euler41_c_3_q <= redist19_i_cmp4_i_euler41_c_3_delay_0;
        end
    end

    // i_not_cmp4_i_euler79(LOGICAL,117)@5
    assign i_not_cmp4_i_euler79_q = redist19_i_cmp4_i_euler41_c_3_q ^ VCC_q;

    // i_conv33_i_euler68_vt_const_31(CONSTANT,94)
    assign i_conv33_i_euler68_vt_const_31_q = $unsigned(21'b000000000000000000000);

    // i_and2647_i_euler61_vt_const_15(CONSTANT,55)
    assign i_and2647_i_euler61_vt_const_15_q = $unsigned(5'b00000);

    // c_i16_1117(CONSTANT,11)
    assign c_i16_1117_q = $unsigned(16'b1111111111111111);

    // i_notmask_i_euler58_vt_const_31(CONSTANT,118)
    assign i_notmask_i_euler58_vt_const_31_q = $unsigned(17'b11111111111111111);

    // leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x(BITSELECT,407)@3
    assign leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x_in = leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x_b = leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x_in[19:0];

    // leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x(CONSTANT,406)
    assign leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x_q = $unsigned(12'b000000000000);

    // leftShiftStage1Idx3_uid409_i_notmask_i_euler0_shift_x(BITJOIN,408)@3
    assign leftShiftStage1Idx3_uid409_i_notmask_i_euler0_shift_x_q = {leftShiftStage1Idx3Rng12_uid408_i_notmask_i_euler0_shift_x_b, leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x(BITSELECT,404)@3
    assign leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x_in = leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x_b = leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid406_i_notmask_i_euler0_shift_x(BITJOIN,405)@3
    assign leftShiftStage1Idx2_uid406_i_notmask_i_euler0_shift_x_q = {leftShiftStage1Idx2Rng8_uid405_i_notmask_i_euler0_shift_x_b, i_shr18_i_i_euler27_vt_const_31_q};

    // leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x(BITSELECT,401)@3
    assign leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x_in = leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x_b = leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid403_i_notmask_i_euler0_shift_x(BITJOIN,402)@3
    assign leftShiftStage1Idx1_uid403_i_notmask_i_euler0_shift_x_q = {leftShiftStage1Idx1Rng4_uid402_i_notmask_i_euler0_shift_x_b, i_and7_i_euler43_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x(BITSELECT,396)
    assign leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x_in = c_i32_1104_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x_b = leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x_in[28:0];

    // leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x(CONSTANT,395)
    assign leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x_q = $unsigned(3'b000);

    // leftShiftStage0Idx3_uid398_i_notmask_i_euler0_shift_x(BITJOIN,397)
    assign leftShiftStage0Idx3_uid398_i_notmask_i_euler0_shift_x_q = {leftShiftStage0Idx3Rng3_uid397_i_notmask_i_euler0_shift_x_b, leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x(BITSELECT,393)
    assign leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x_in = c_i32_1104_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x_b = leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid395_i_notmask_i_euler0_shift_x(BITJOIN,394)
    assign leftShiftStage0Idx2_uid395_i_notmask_i_euler0_shift_x_q = {leftShiftStage0Idx2Rng2_uid394_i_notmask_i_euler0_shift_x_b, i_and28_i_euler62_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x(BITSELECT,390)
    assign leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x_in = c_i32_1104_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x_b = leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid392_i_notmask_i_euler0_shift_x(BITJOIN,391)
    assign leftShiftStage0Idx1_uid392_i_notmask_i_euler0_shift_x_q = {leftShiftStage0Idx1Rng1_uid391_i_notmask_i_euler0_shift_x_b, GND_q};

    // leftShiftStage0_uid400_i_notmask_i_euler0_shift_x(MUX,399)@3
    assign leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_s = leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_s or c_i32_1104_q or leftShiftStage0Idx1_uid392_i_notmask_i_euler0_shift_x_q or leftShiftStage0Idx2_uid395_i_notmask_i_euler0_shift_x_q or leftShiftStage0Idx3_uid398_i_notmask_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_s)
            2'b00 : leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q = c_i32_1104_q;
            2'b01 : leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q = leftShiftStage0Idx1_uid392_i_notmask_i_euler0_shift_x_q;
            2'b10 : leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q = leftShiftStage0Idx2_uid395_i_notmask_i_euler0_shift_x_q;
            2'b11 : leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q = leftShiftStage0Idx3_uid398_i_notmask_i_euler0_shift_x_q;
            default : leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_and15_i_euler53_vt_const_31(CONSTANT,51)
    assign i_and15_i_euler53_vt_const_31_q = $unsigned(28'b0000000000000000000000000000);

    // c_i32_15115(CONSTANT,24)
    assign c_i32_15115_q = $unsigned(32'b00000000000000000000000000001111);

    // c_i32_11114(CONSTANT,22)
    assign c_i32_11114_q = $unsigned(32'b00000000000000000000000000001011);

    // i_sub14_i_euler52(SUB,194)@2
    assign i_sub14_i_euler52_a = {1'b0, c_i32_11114_q};
    assign i_sub14_i_euler52_b = {1'b0, i_unnamed_euler36_vt_join_q};
    assign i_sub14_i_euler52_o = $unsigned(i_sub14_i_euler52_a) - $unsigned(i_sub14_i_euler52_b);
    assign i_sub14_i_euler52_q = i_sub14_i_euler52_o[32:0];

    // bgTrunc_i_sub14_i_euler52_sel_x(BITSELECT,232)@2
    assign bgTrunc_i_sub14_i_euler52_sel_x_b = $unsigned(i_sub14_i_euler52_q[31:0]);

    // i_and15_i_euler53(LOGICAL,50)@2
    assign i_and15_i_euler53_q = bgTrunc_i_sub14_i_euler52_sel_x_b & c_i32_15115_q;

    // i_and15_i_euler53_vt_select_3(BITSELECT,53)@2
    assign i_and15_i_euler53_vt_select_3_b = i_and15_i_euler53_q[3:0];

    // redist23_i_and15_i_euler53_vt_select_3_b_1(DELAY,696)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_and15_i_euler53_vt_select_3_b_1_q <= '0;
        end
        else
        begin
            redist23_i_and15_i_euler53_vt_select_3_b_1_q <= $unsigned(i_and15_i_euler53_vt_select_3_b);
        end
    end

    // i_and15_i_euler53_vt_join(BITJOIN,52)@3
    assign i_and15_i_euler53_vt_join_q = {i_and15_i_euler53_vt_const_31_q, redist23_i_and15_i_euler53_vt_select_3_b_1_q};

    // i_notmask_i_euler0_shift_narrow_x(BITSELECT,249)@3
    assign i_notmask_i_euler0_shift_narrow_x_b = i_and15_i_euler53_vt_join_q[4:0];

    // leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select(BITSELECT,671)@3
    assign leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_in = i_notmask_i_euler0_shift_narrow_x_b[3:0];
    assign leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_b = leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_in[1:0];
    assign leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_c = leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_in[3:2];

    // leftShiftStage1_uid411_i_notmask_i_euler0_shift_x(MUX,410)@3
    assign leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_s = leftShiftStageSel0Dto0_uid399_i_notmask_i_euler0_shift_x_merged_bit_select_c;
    always @(leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_s or leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q or leftShiftStage1Idx1_uid403_i_notmask_i_euler0_shift_x_q or leftShiftStage1Idx2_uid406_i_notmask_i_euler0_shift_x_q or leftShiftStage1Idx3_uid409_i_notmask_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_s)
            2'b00 : leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q = leftShiftStage0_uid400_i_notmask_i_euler0_shift_x_q;
            2'b01 : leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q = leftShiftStage1Idx1_uid403_i_notmask_i_euler0_shift_x_q;
            2'b10 : leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q = leftShiftStage1Idx2_uid406_i_notmask_i_euler0_shift_x_q;
            2'b11 : leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q = leftShiftStage1Idx3_uid409_i_notmask_i_euler0_shift_x_q;
            default : leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_notmask_i_euler58_vt_select_14(BITSELECT,120)@3
    assign i_notmask_i_euler58_vt_select_14_b = leftShiftStage1_uid411_i_notmask_i_euler0_shift_x_q[14:0];

    // i_notmask_i_euler58_vt_join(BITJOIN,119)@3
    assign i_notmask_i_euler58_vt_join_q = {i_notmask_i_euler58_vt_const_31_q, i_notmask_i_euler58_vt_select_14_b};

    // i_unnamed_euler59_sel_x(BITSELECT,326)@3
    assign i_unnamed_euler59_sel_x_b = i_notmask_i_euler58_vt_join_q[15:0];

    // i_unnamed_euler59_vt_select_14(BITSELECT,216)@3
    assign i_unnamed_euler59_vt_select_14_b = i_unnamed_euler59_sel_x_b[14:0];

    // i_unnamed_euler59_vt_join(BITJOIN,215)@3
    assign i_unnamed_euler59_vt_join_q = {VCC_q, i_unnamed_euler59_vt_select_14_b};

    // i_conv23_i_euler60(LOGICAL,89)@3
    assign i_conv23_i_euler60_q = i_unnamed_euler59_vt_join_q ^ c_i16_1117_q;

    // i_conv23_i_euler60_vt_select_14(BITSELECT,92)@3
    assign i_conv23_i_euler60_vt_select_14_b = i_conv23_i_euler60_q[14:0];

    // i_conv23_i_euler60_vt_join(BITJOIN,91)@3
    assign i_conv23_i_euler60_vt_join_q = {GND_q, i_conv23_i_euler60_vt_select_14_b};

    // c_i16_2047116(CONSTANT,12)
    assign c_i16_2047116_q = $unsigned(16'b0000011111111111);

    // redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3(DELAY,686)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_delay_0 <= '0;
            redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q <= '0;
        end
        else
        begin
            redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_delay_0 <= $unsigned(redist12_bgTrunc_i_add_i_i_euler5_sel_x_b_1_q);
            redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q <= redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_delay_0;
        end
    end

    // i_unnamed_euler54_sel_x(BITSELECT,325)@3
    assign i_unnamed_euler54_sel_x_b = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[15:0];

    // i_conv17_i_euler55(LOGICAL,84)@3
    assign i_conv17_i_euler55_q = i_unnamed_euler54_sel_x_b & c_i16_2047116_q;

    // i_conv17_i_euler55_vt_select_10(BITSELECT,87)@3
    assign i_conv17_i_euler55_vt_select_10_b = i_conv17_i_euler55_q[10:0];

    // i_conv17_i_euler55_vt_join(BITJOIN,86)@3
    assign i_conv17_i_euler55_vt_join_q = {i_and2647_i_euler61_vt_const_15_q, i_conv17_i_euler55_vt_select_10_b};

    // i_and2647_i_euler61(LOGICAL,54)@3
    assign i_and2647_i_euler61_q = i_conv17_i_euler55_vt_join_q & i_conv23_i_euler60_vt_join_q;

    // i_and2647_i_euler61_vt_select_10(BITSELECT,57)@3
    assign i_and2647_i_euler61_vt_select_10_b = i_and2647_i_euler61_q[10:0];

    // redist22_i_and2647_i_euler61_vt_select_10_b_1(DELAY,695)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_and2647_i_euler61_vt_select_10_b_1_q <= '0;
        end
        else
        begin
            redist22_i_and2647_i_euler61_vt_select_10_b_1_q <= $unsigned(i_and2647_i_euler61_vt_select_10_b);
        end
    end

    // i_and2647_i_euler61_vt_join(BITJOIN,56)@4
    assign i_and2647_i_euler61_vt_join_q = {i_and2647_i_euler61_vt_const_15_q, redist22_i_and2647_i_euler61_vt_select_10_b_1_q};

    // i_conv33_i_euler68_sel_x(BITSELECT,243)@4
    assign i_conv33_i_euler68_sel_x_b = {16'b0000000000000000, i_and2647_i_euler61_vt_join_q[15:0]};

    // i_conv33_i_euler68_vt_select_10(BITSELECT,96)@4
    assign i_conv33_i_euler68_vt_select_10_b = i_conv33_i_euler68_sel_x_b[10:0];

    // i_conv33_i_euler68_vt_join(BITJOIN,95)@4
    assign i_conv33_i_euler68_vt_join_q = {i_conv33_i_euler68_vt_const_31_q, i_conv33_i_euler68_vt_select_10_b};

    // c_i32_65535118(CONSTANT,31)
    assign c_i32_65535118_q = $unsigned(32'b00000000000000001111111111111111);

    // leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x(BITSELECT,465)@4
    assign leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x_in = leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q[15:0];
    assign leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x_b = leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x_in[15:0];

    // leftShiftStage2Idx1_uid467_i_shl19_i_euler0_shift_x(BITJOIN,466)@4
    assign leftShiftStage2Idx1_uid467_i_shl19_i_euler0_shift_x_q = {leftShiftStage2Idx1Rng16_uid466_i_shl19_i_euler0_shift_x_b, i_conv34_i_euler69_vt_const_31_q};

    // leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x(BITSELECT,460)@3
    assign leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x_in = leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q[19:0];
    assign leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x_b = leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x_in[19:0];

    // leftShiftStage1Idx3_uid462_i_shl19_i_euler0_shift_x(BITJOIN,461)@3
    assign leftShiftStage1Idx3_uid462_i_shl19_i_euler0_shift_x_q = {leftShiftStage1Idx3Rng12_uid461_i_shl19_i_euler0_shift_x_b, leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x_q};

    // leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x(BITSELECT,457)@3
    assign leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x_in = leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q[23:0];
    assign leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x_b = leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x_in[23:0];

    // leftShiftStage1Idx2_uid459_i_shl19_i_euler0_shift_x(BITJOIN,458)@3
    assign leftShiftStage1Idx2_uid459_i_shl19_i_euler0_shift_x_q = {leftShiftStage1Idx2Rng8_uid458_i_shl19_i_euler0_shift_x_b, i_shr18_i_i_euler27_vt_const_31_q};

    // leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x(BITSELECT,454)@3
    assign leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x_in = leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x_b = leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x_in[27:0];

    // leftShiftStage1Idx1_uid456_i_shl19_i_euler0_shift_x(BITJOIN,455)@3
    assign leftShiftStage1Idx1_uid456_i_shl19_i_euler0_shift_x_q = {leftShiftStage1Idx1Rng4_uid455_i_shl19_i_euler0_shift_x_b, i_and7_i_euler43_vt_const_3_q};

    // leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x(BITSELECT,449)
    assign leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x_in = c_i32_1105_q[28:0];
    assign leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x_b = leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x_in[28:0];

    // leftShiftStage0Idx3_uid451_i_shl19_i_euler0_shift_x(BITJOIN,450)
    assign leftShiftStage0Idx3_uid451_i_shl19_i_euler0_shift_x_q = {leftShiftStage0Idx3Rng3_uid450_i_shl19_i_euler0_shift_x_b, leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x(BITSELECT,446)
    assign leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x_in = c_i32_1105_q[29:0];
    assign leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x_b = leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x_in[29:0];

    // leftShiftStage0Idx2_uid448_i_shl19_i_euler0_shift_x(BITJOIN,447)
    assign leftShiftStage0Idx2_uid448_i_shl19_i_euler0_shift_x_q = {leftShiftStage0Idx2Rng2_uid447_i_shl19_i_euler0_shift_x_b, i_and28_i_euler62_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x(BITSELECT,443)
    assign leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x_in = c_i32_1105_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x_b = leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid445_i_shl19_i_euler0_shift_x(BITJOIN,444)
    assign leftShiftStage0Idx1_uid445_i_shl19_i_euler0_shift_x_q = {leftShiftStage0Idx1Rng1_uid444_i_shl19_i_euler0_shift_x_b, GND_q};

    // c_i32_1105(CONSTANT,21)
    assign c_i32_1105_q = $unsigned(32'b00000000000000000000000000000001);

    // leftShiftStage0_uid453_i_shl19_i_euler0_shift_x(MUX,452)@3
    assign leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_s = leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_b;
    always @(leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_s or c_i32_1105_q or leftShiftStage0Idx1_uid445_i_shl19_i_euler0_shift_x_q or leftShiftStage0Idx2_uid448_i_shl19_i_euler0_shift_x_q or leftShiftStage0Idx3_uid451_i_shl19_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_s)
            2'b00 : leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q = c_i32_1105_q;
            2'b01 : leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q = leftShiftStage0Idx1_uid445_i_shl19_i_euler0_shift_x_q;
            2'b10 : leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q = leftShiftStage0Idx2_uid448_i_shl19_i_euler0_shift_x_q;
            2'b11 : leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q = leftShiftStage0Idx3_uid451_i_shl19_i_euler0_shift_x_q;
            default : leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_sub18_i_euler56(ADD,195)@3
    assign i_sub18_i_euler56_a = {1'b0, i_and15_i_euler53_vt_join_q};
    assign i_sub18_i_euler56_b = {1'b0, c_i32_1104_q};
    assign i_sub18_i_euler56_o = $unsigned(i_sub18_i_euler56_a) + $unsigned(i_sub18_i_euler56_b);
    assign i_sub18_i_euler56_q = i_sub18_i_euler56_o[32:0];

    // bgTrunc_i_sub18_i_euler56_sel_x(BITSELECT,233)@3
    assign bgTrunc_i_sub18_i_euler56_sel_x_b = i_sub18_i_euler56_q[31:0];

    // i_shl19_i_euler0_shift_narrow_x(BITSELECT,267)@3
    assign i_shl19_i_euler0_shift_narrow_x_b = bgTrunc_i_sub18_i_euler56_sel_x_b[4:0];

    // leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select(BITSELECT,672)@3
    assign leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_b = i_shl19_i_euler0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_c = i_shl19_i_euler0_shift_narrow_x_b[3:2];
    assign leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d = i_shl19_i_euler0_shift_narrow_x_b[4:4];

    // leftShiftStage1_uid464_i_shl19_i_euler0_shift_x(MUX,463)@3 + 1
    assign leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_s = leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q <= 32'b0;
        end
        else
        begin
            unique case (leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_s)
                2'b00 : leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q <= leftShiftStage0_uid453_i_shl19_i_euler0_shift_x_q;
                2'b01 : leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q <= leftShiftStage1Idx1_uid456_i_shl19_i_euler0_shift_x_q;
                2'b10 : leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q <= leftShiftStage1Idx2_uid459_i_shl19_i_euler0_shift_x_q;
                2'b11 : leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q <= leftShiftStage1Idx3_uid462_i_shl19_i_euler0_shift_x_q;
                default : leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q <= 32'b0;
            endcase
        end
    end

    // redist0_leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d_1(DELAY,673)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d_1_q <= '0;
        end
        else
        begin
            redist0_leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d_1_q <= $unsigned(leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d);
        end
    end

    // leftShiftStage2_uid469_i_shl19_i_euler0_shift_x(MUX,468)@4
    assign leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_s = redist0_leftShiftStageSel0Dto0_uid452_i_shl19_i_euler0_shift_x_merged_bit_select_d_1_q;
    always @(leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_s or leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q or leftShiftStage2Idx1_uid467_i_shl19_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_s)
            1'b0 : leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_q = leftShiftStage1_uid464_i_shl19_i_euler0_shift_x_q;
            1'b1 : leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_q = leftShiftStage2Idx1_uid467_i_shl19_i_euler0_shift_x_q;
            default : leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_q = 32'b0;
        endcase
    end

    // i_conv34_i_euler69(LOGICAL,97)@4
    assign i_conv34_i_euler69_q = leftShiftStage2_uid469_i_shl19_i_euler0_shift_x_q & c_i32_65535118_q;

    // i_conv34_i_euler69_vt_select_15(BITSELECT,100)@4
    assign i_conv34_i_euler69_vt_select_15_b = i_conv34_i_euler69_q[15:0];

    // i_conv34_i_euler69_vt_join(BITJOIN,99)@4
    assign i_conv34_i_euler69_vt_join_q = {i_conv34_i_euler69_vt_const_31_q, i_conv34_i_euler69_vt_select_15_b};

    // i_cmp35_i_euler70(LOGICAL,78)@4 + 1
    assign i_cmp35_i_euler70_qi = $unsigned(i_conv34_i_euler69_vt_join_q == i_conv33_i_euler68_vt_join_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp35_i_euler70_delay ( .xin(i_cmp35_i_euler70_qi), .xout(i_cmp35_i_euler70_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i64_0120_recast_x(CONSTANT,238)
    assign c_i64_0120_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c_i64_1119(CONSTANT,33)
    assign c_i64_1119_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000001);

    // rightShiftStage0Idx3Rng3_uid546_i_shr32_i_euler0_shift_x(BITSELECT,545)@3
    assign rightShiftStage0Idx3Rng3_uid546_i_shr32_i_euler0_shift_x_b = rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q[63:3];

    // rightShiftStage0Idx3_uid548_i_shr32_i_euler0_shift_x(BITJOIN,547)@3
    assign rightShiftStage0Idx3_uid548_i_shr32_i_euler0_shift_x_q = {leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x_q, rightShiftStage0Idx3Rng3_uid546_i_shr32_i_euler0_shift_x_b};

    // rightShiftStage0Idx2Rng2_uid543_i_shr32_i_euler0_shift_x(BITSELECT,542)@3
    assign rightShiftStage0Idx2Rng2_uid543_i_shr32_i_euler0_shift_x_b = rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q[63:2];

    // rightShiftStage0Idx2_uid545_i_shr32_i_euler0_shift_x(BITJOIN,544)@3
    assign rightShiftStage0Idx2_uid545_i_shr32_i_euler0_shift_x_q = {i_and28_i_euler62_vt_const_1_q, rightShiftStage0Idx2Rng2_uid543_i_shr32_i_euler0_shift_x_b};

    // rightShiftStage0Idx1Rng1_uid540_i_shr32_i_euler0_shift_x(BITSELECT,539)@3
    assign rightShiftStage0Idx1Rng1_uid540_i_shr32_i_euler0_shift_x_b = rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q[63:1];

    // rightShiftStage0Idx1_uid542_i_shr32_i_euler0_shift_x(BITJOIN,541)@3
    assign rightShiftStage0Idx1_uid542_i_shr32_i_euler0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid540_i_shr32_i_euler0_shift_x_b};

    // rightShiftStage0Idx3Rng12_uid592_i_shr_i_euler0_shift_x(BITSELECT,591)@3
    assign rightShiftStage0Idx3Rng12_uid592_i_shr_i_euler0_shift_x_b = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[63:12];

    // rightShiftStage0Idx3_uid594_i_shr_i_euler0_shift_x(BITJOIN,593)@3
    assign rightShiftStage0Idx3_uid594_i_shr_i_euler0_shift_x_q = {leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x_q, rightShiftStage0Idx3Rng12_uid592_i_shr_i_euler0_shift_x_b};

    // rightShiftStage0Idx2Rng8_uid589_i_shr_i_euler0_shift_x(BITSELECT,588)@3
    assign rightShiftStage0Idx2Rng8_uid589_i_shr_i_euler0_shift_x_b = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[63:8];

    // rightShiftStage0Idx2_uid591_i_shr_i_euler0_shift_x(BITJOIN,590)@3
    assign rightShiftStage0Idx2_uid591_i_shr_i_euler0_shift_x_q = {i_shr18_i_i_euler27_vt_const_31_q, rightShiftStage0Idx2Rng8_uid589_i_shr_i_euler0_shift_x_b};

    // rightShiftStage0Idx1Rng4_uid586_i_shr_i_euler0_shift_x(BITSELECT,585)@3
    assign rightShiftStage0Idx1Rng4_uid586_i_shr_i_euler0_shift_x_b = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[63:4];

    // rightShiftStage0Idx1_uid588_i_shr_i_euler0_shift_x(BITJOIN,587)@3
    assign rightShiftStage0Idx1_uid588_i_shr_i_euler0_shift_x_q = {i_and7_i_euler43_vt_const_3_q, rightShiftStage0Idx1Rng4_uid586_i_shr_i_euler0_shift_x_b};

    // i_sh_prom29_i_euler63_vt_const_63(CONSTANT,144)
    assign i_sh_prom29_i_euler63_vt_const_63_q = $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);

    // c_i32_12113(CONSTANT,23)
    assign c_i32_12113_q = $unsigned(32'b00000000000000000000000000001100);

    // i_and28_i_euler62(LOGICAL,58)@2
    assign i_and28_i_euler62_q = bgTrunc_i_sub14_i_euler52_sel_x_b & c_i32_12113_q;

    // i_and28_i_euler62_vt_select_3(BITSELECT,62)@2
    assign i_and28_i_euler62_vt_select_3_b = i_and28_i_euler62_q[3:2];

    // redist21_i_and28_i_euler62_vt_select_3_b_1(DELAY,694)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_and28_i_euler62_vt_select_3_b_1_q <= '0;
        end
        else
        begin
            redist21_i_and28_i_euler62_vt_select_3_b_1_q <= $unsigned(i_and28_i_euler62_vt_select_3_b);
        end
    end

    // i_and28_i_euler62_vt_join(BITJOIN,61)@3
    assign i_and28_i_euler62_vt_join_q = {i_and15_i_euler53_vt_const_31_q, redist21_i_and28_i_euler62_vt_select_3_b_1_q, i_and28_i_euler62_vt_const_1_q};

    // i_sh_prom29_i_euler63_sel_x(BITSELECT,253)@3
    assign i_sh_prom29_i_euler63_sel_x_b = {32'b00000000000000000000000000000000, i_and28_i_euler62_vt_join_q[31:0]};

    // i_sh_prom29_i_euler63_vt_select_3(BITSELECT,146)@3
    assign i_sh_prom29_i_euler63_vt_select_3_b = i_sh_prom29_i_euler63_sel_x_b[3:2];

    // i_sh_prom29_i_euler63_vt_join(BITJOIN,145)@3
    assign i_sh_prom29_i_euler63_vt_join_q = {i_sh_prom29_i_euler63_vt_const_63_q, i_sh_prom29_i_euler63_vt_select_3_b, i_and28_i_euler62_vt_const_1_q};

    // i_shr_i_euler0_shift_narrow_x(BITSELECT,319)@3
    assign i_shr_i_euler0_shift_narrow_x_b = i_sh_prom29_i_euler63_vt_join_q[5:0];

    // rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x(BITSELECT,594)@3
    assign rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x_in = i_shr_i_euler0_shift_narrow_x_b[3:0];
    assign rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x_b = rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x_in[3:2];

    // rightShiftStage0_uid596_i_shr_i_euler0_shift_x(MUX,595)@3
    assign rightShiftStage0_uid596_i_shr_i_euler0_shift_x_s = rightShiftStageSel2Dto2_uid595_i_shr_i_euler0_shift_x_b;
    always @(rightShiftStage0_uid596_i_shr_i_euler0_shift_x_s or redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q or rightShiftStage0Idx1_uid588_i_shr_i_euler0_shift_x_q or rightShiftStage0Idx2_uid591_i_shr_i_euler0_shift_x_q or rightShiftStage0Idx3_uid594_i_shr_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid596_i_shr_i_euler0_shift_x_s)
            2'b00 : rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q;
            2'b01 : rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q = rightShiftStage0Idx1_uid588_i_shr_i_euler0_shift_x_q;
            2'b10 : rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q = rightShiftStage0Idx2_uid591_i_shr_i_euler0_shift_x_q;
            2'b11 : rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q = rightShiftStage0Idx3_uid594_i_shr_i_euler0_shift_x_q;
            default : rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom1250_i_euler50_vt_const_63(CONSTANT,139)
    assign i_sh_prom1250_i_euler50_vt_const_63_q = $unsigned(62'b00000000000000000000000000000000000000000000000000000000000000);

    // i_and30_trunc_i_euler65_sel_x(BITSELECT,241)@2
    assign i_and30_trunc_i_euler65_sel_x_b = bgTrunc_i_sub14_i_euler52_sel_x_b[1:0];

    // i_sh_prom3151_i_euler66_sel_x(BITSELECT,254)@2
    assign i_sh_prom3151_i_euler66_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and30_trunc_i_euler65_sel_x_b[1:0]};

    // i_sh_prom3151_i_euler66_vt_select_1(BITSELECT,150)@2
    assign i_sh_prom3151_i_euler66_vt_select_1_b = i_sh_prom3151_i_euler66_sel_x_b[1:0];

    // i_sh_prom3151_i_euler66_vt_join(BITJOIN,149)@2
    assign i_sh_prom3151_i_euler66_vt_join_q = {i_sh_prom1250_i_euler50_vt_const_63_q, i_sh_prom3151_i_euler66_vt_select_1_b};

    // i_shr32_i_euler0_shift_narrow_x(BITSELECT,299)@2
    assign i_shr32_i_euler0_shift_narrow_x_b = i_sh_prom3151_i_euler66_vt_join_q[5:0];

    // rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x(BITSELECT,548)@2
    assign rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_in = i_shr32_i_euler0_shift_narrow_x_b[1:0];
    assign rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b = rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_in[1:0];

    // redist1_rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b_1(DELAY,674)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist1_rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b_1_q <= $unsigned(rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b);
        end
    end

    // rightShiftStage0_uid550_i_shr32_i_euler0_shift_x(MUX,549)@3
    assign rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_s = redist1_rightShiftStageSel0Dto0_uid549_i_shr32_i_euler0_shift_x_b_1_q;
    always @(rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_s or rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q or rightShiftStage0Idx1_uid542_i_shr32_i_euler0_shift_x_q or rightShiftStage0Idx2_uid545_i_shr32_i_euler0_shift_x_q or rightShiftStage0Idx3_uid548_i_shr32_i_euler0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_s)
            2'b00 : rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q = rightShiftStage0_uid596_i_shr_i_euler0_shift_x_q;
            2'b01 : rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q = rightShiftStage0Idx1_uid542_i_shr32_i_euler0_shift_x_q;
            2'b10 : rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q = rightShiftStage0Idx2_uid545_i_shr32_i_euler0_shift_x_q;
            2'b11 : rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q = rightShiftStage0Idx3_uid548_i_shr32_i_euler0_shift_x_q;
            default : rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_and36_i_euler72(LOGICAL,64)@3
    assign i_and36_i_euler72_q = rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q & c_i64_1119_q;

    // i_and36_i_euler72_vt_select_0(BITSELECT,67)@3
    assign i_and36_i_euler72_vt_select_0_b = i_and36_i_euler72_q[0:0];

    // redist20_i_and36_i_euler72_vt_select_0_b_1(DELAY,693)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_and36_i_euler72_vt_select_0_b_1_q <= '0;
        end
        else
        begin
            redist20_i_and36_i_euler72_vt_select_0_b_1_q <= $unsigned(i_and36_i_euler72_vt_select_0_b);
        end
    end

    // i_and36_i_euler72_vt_join(BITJOIN,66)@4
    assign i_and36_i_euler72_vt_join_q = {i_acl_49_i_euler81_vt_const_63_q, redist20_i_and36_i_euler72_vt_select_0_b_1_q};

    // i_cmp37_i_euler73(LOGICAL,79)@4 + 1
    assign i_cmp37_i_euler73_qi = $unsigned(i_and36_i_euler72_vt_join_q != c_i64_0120_recast_x_q ? 1'b1 : 1'b0);
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_cmp37_i_euler73_delay ( .xin(i_cmp37_i_euler73_qi), .xout(i_cmp37_i_euler73_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_or_cond_not_i_euler75(LOGICAL,132)@5
    assign i_or_cond_not_i_euler75_q = i_cmp37_i_euler73_q & i_cmp35_i_euler70_q;

    // i_cmp40_i_euler76(COMPARE,80)@4 + 1
    assign i_cmp40_i_euler76_a = {2'b00, i_conv34_i_euler69_vt_join_q};
    assign i_cmp40_i_euler76_b = {2'b00, i_conv33_i_euler68_vt_join_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp40_i_euler76_o <= 34'b0;
        end
        else
        begin
            i_cmp40_i_euler76_o <= $unsigned(i_cmp40_i_euler76_a) - $unsigned(i_cmp40_i_euler76_b);
        end
    end
    assign i_cmp40_i_euler76_c[0] = i_cmp40_i_euler76_o[33];

    // i_or_cond48_i_euler77(LOGICAL,131)@5
    assign i_or_cond48_i_euler77_q = i_cmp40_i_euler76_c | i_or_cond_not_i_euler75_q;

    // i_narrow_i_euler80(LOGICAL,114)@5
    assign i_narrow_i_euler80_q = i_or_cond48_i_euler77_q & i_not_cmp4_i_euler79_q;

    // i_acl_49_i_euler81_sel_x(BITSELECT,239)@5
    assign i_acl_49_i_euler81_sel_x_b = {63'b000000000000000000000000000000000000000000000000000000000000000, i_narrow_i_euler80_q[0:0]};

    // i_acl_49_i_euler81_vt_select_0(BITSELECT,41)@5
    assign i_acl_49_i_euler81_vt_select_0_b = i_acl_49_i_euler81_sel_x_b[0:0];

    // i_acl_49_i_euler81_vt_join(BITJOIN,40)@5
    assign i_acl_49_i_euler81_vt_join_q = {i_acl_49_i_euler81_vt_const_63_q, i_acl_49_i_euler81_vt_select_0_b};

    // c_i8_283(CONSTANT,37)
    assign c_i8_283_q = $unsigned(8'b00000010);

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_notEnable(LOGICAL,702)
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_notEnable_q = $unsigned(~ (VCC_q));

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_nor(LOGICAL,703)
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_nor_q = ~ (redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_notEnable_q | redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_sticky_ena_q);

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_cmpReg(REG,701)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_sticky_ena(REG,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_nor_q == 1'b1)
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_sticky_ena_q <= $unsigned(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_cmpReg_q);
        end
    end

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_enaAnd(LOGICAL,705)
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_enaAnd_q = redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_sticky_ena_q & VCC_q;

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt(COUNTER,699)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_i <= $unsigned(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_q = redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_i[0:0];

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_wraddr(REG,700)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_wraddr_q <= $unsigned(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_q);
        end
    end

    // redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem(DUALMEM,698)
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_ia = $unsigned(in_c0_eni463_1_tpl);
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_aa = redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_wraddr_q;
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_ab = redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_rdcnt_q;
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Arria 10")
    ) redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_dmem (
        .clocken1(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_reset0),
        .clock1(clock),
        .address_a(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_aa),
        .data_a(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_ab),
        .q_b(redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_q = redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_iq[63:0];

    // c_i32_1086109(CONSTANT,19)
    assign c_i32_1086109_q = $unsigned(32'b00000000000000000000010000111110);

    // i_sub_i_euler39(SUB,200)@2
    assign i_sub_i_euler39_a = {1'b0, c_i32_1086109_q};
    assign i_sub_i_euler39_b = {1'b0, i_unnamed_euler36_vt_join_q};
    assign i_sub_i_euler39_o = $unsigned(i_sub_i_euler39_a) - $unsigned(i_sub_i_euler39_b);
    assign i_sub_i_euler39_q = i_sub_i_euler39_o[32:0];

    // bgTrunc_i_sub_i_euler39_sel_x(BITSELECT,235)@2
    assign bgTrunc_i_sub_i_euler39_sel_x_b = $unsigned(i_sub_i_euler39_q[31:0]);

    // i_sub_i_euler39_vt_select_10(BITSELECT,203)@2
    assign i_sub_i_euler39_vt_select_10_b = bgTrunc_i_sub_i_euler39_sel_x_b[10:0];

    // i_sub_i_euler39_vt_join(BITJOIN,202)@2
    assign i_sub_i_euler39_vt_join_q = {i_conv33_i_euler68_vt_const_31_q, i_sub_i_euler39_vt_select_10_b};

    // c_i32_64108_recast_x(CONSTANT,237)
    assign c_i32_64108_recast_x_q = $unsigned(32'b00000000000000000000000001000000);

    // i_cmp_i_euler37(LOGICAL,82)@2
    assign i_cmp_i_euler37_q = $unsigned(i_unnamed_euler36_vt_join_q == c_i32_64108_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_euler40(MUX,208)@2
    assign i_unnamed_euler40_s = i_cmp_i_euler37_q;
    always @(i_unnamed_euler40_s or i_sub_i_euler39_vt_join_q or c_i32_0106_q)
    begin
        unique case (i_unnamed_euler40_s)
            1'b0 : i_unnamed_euler40_q = i_sub_i_euler39_vt_join_q;
            1'b1 : i_unnamed_euler40_q = c_i32_0106_q;
            default : i_unnamed_euler40_q = 32'b0;
        endcase
    end

    // i_unnamed_euler40_vt_select_10(BITSELECT,211)@2
    assign i_unnamed_euler40_vt_select_10_b = i_unnamed_euler40_q[10:0];

    // redist15_i_unnamed_euler40_vt_select_10_b_1(DELAY,688)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_unnamed_euler40_vt_select_10_b_1_q <= '0;
        end
        else
        begin
            redist15_i_unnamed_euler40_vt_select_10_b_1_q <= $unsigned(i_unnamed_euler40_vt_select_10_b);
        end
    end

    // i_unnamed_euler40_vt_join(BITJOIN,210)@3
    assign i_unnamed_euler40_vt_join_q = {i_conv33_i_euler68_vt_const_31_q, redist15_i_unnamed_euler40_vt_select_10_b_1_q};

    // leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x(BITSELECT,435)@3
    assign leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x_in = leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q[60:0];
    assign leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x_b = leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x_in[60:0];

    // leftShiftStage0Idx3_uid437_i_shl13_i_euler0_shift_x(BITJOIN,436)@3
    assign leftShiftStage0Idx3_uid437_i_shl13_i_euler0_shift_x_q = {leftShiftStage0Idx3Rng3_uid436_i_shl13_i_euler0_shift_x_b, leftShiftStage0Idx3Pad3_uid396_i_notmask_i_euler0_shift_x_q};

    // leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x(BITSELECT,432)@3
    assign leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x_in = leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q[61:0];
    assign leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x_b = leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x_in[61:0];

    // leftShiftStage0Idx2_uid434_i_shl13_i_euler0_shift_x(BITJOIN,433)@3
    assign leftShiftStage0Idx2_uid434_i_shl13_i_euler0_shift_x_q = {leftShiftStage0Idx2Rng2_uid433_i_shl13_i_euler0_shift_x_b, i_and28_i_euler62_vt_const_1_q};

    // leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x(BITSELECT,429)@3
    assign leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x_in = leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q[62:0];
    assign leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x_b = leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x_in[62:0];

    // leftShiftStage0Idx1_uid431_i_shl13_i_euler0_shift_x(BITJOIN,430)@3
    assign leftShiftStage0Idx1_uid431_i_shl13_i_euler0_shift_x_q = {leftShiftStage0Idx1Rng1_uid430_i_shl13_i_euler0_shift_x_b, GND_q};

    // leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x(BITSELECT,421)@3
    assign leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x_in = leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q[51:0];
    assign leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x_b = leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x_in[51:0];

    // leftShiftStage0Idx3_uid423_i_shl10_i_euler0_shift_x(BITJOIN,422)@3
    assign leftShiftStage0Idx3_uid423_i_shl10_i_euler0_shift_x_q = {leftShiftStage0Idx3Rng12_uid422_i_shl10_i_euler0_shift_x_b, leftShiftStage1Idx3Pad12_uid407_i_notmask_i_euler0_shift_x_q};

    // leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x(BITSELECT,418)@3
    assign leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x_in = leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q[55:0];
    assign leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x_b = leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x_in[55:0];

    // leftShiftStage0Idx2_uid420_i_shl10_i_euler0_shift_x(BITJOIN,419)@3
    assign leftShiftStage0Idx2_uid420_i_shl10_i_euler0_shift_x_q = {leftShiftStage0Idx2Rng8_uid419_i_shl10_i_euler0_shift_x_b, i_shr18_i_i_euler27_vt_const_31_q};

    // leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x(BITSELECT,415)@3
    assign leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x_in = leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q[59:0];
    assign leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x_b = leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x_in[59:0];

    // leftShiftStage0Idx1_uid417_i_shl10_i_euler0_shift_x(BITJOIN,416)@3
    assign leftShiftStage0Idx1_uid417_i_shl10_i_euler0_shift_x_q = {leftShiftStage0Idx1Rng4_uid416_i_shl10_i_euler0_shift_x_b, i_and7_i_euler43_vt_const_3_q};

    // leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x(BITSELECT,479)@3
    assign leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x_in = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[15:0];
    assign leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x_b = leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x_in[15:0];

    // leftShiftStage0Idx3Pad48_uid479_i_shl_i_euler0_shift_x(CONSTANT,478)
    assign leftShiftStage0Idx3Pad48_uid479_i_shl_i_euler0_shift_x_q = $unsigned(48'b000000000000000000000000000000000000000000000000);

    // leftShiftStage0Idx3_uid481_i_shl_i_euler0_shift_x(BITJOIN,480)@3
    assign leftShiftStage0Idx3_uid481_i_shl_i_euler0_shift_x_q = {leftShiftStage0Idx3Rng48_uid480_i_shl_i_euler0_shift_x_b, leftShiftStage0Idx3Pad48_uid479_i_shl_i_euler0_shift_x_q};

    // leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x(BITSELECT,476)@3
    assign leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x_in = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[31:0];
    assign leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x_b = leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x_in[31:0];

    // leftShiftStage0Idx2_uid478_i_shl_i_euler0_shift_x(BITJOIN,477)@3
    assign leftShiftStage0Idx2_uid478_i_shl_i_euler0_shift_x_q = {leftShiftStage0Idx2Rng32_uid477_i_shl_i_euler0_shift_x_b, c_i32_0106_q};

    // leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x(BITSELECT,473)@3
    assign leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x_in = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q[47:0];
    assign leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x_b = leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x_in[47:0];

    // leftShiftStage0Idx1_uid475_i_shl_i_euler0_shift_x(BITJOIN,474)@3
    assign leftShiftStage0Idx1_uid475_i_shl_i_euler0_shift_x_q = {leftShiftStage0Idx1Rng16_uid474_i_shl_i_euler0_shift_x_b, i_conv34_i_euler69_vt_const_31_q};

    // i_sh_prom_i_euler44_vt_const_63(CONSTANT,158)
    assign i_sh_prom_i_euler44_vt_const_63_q = $unsigned(58'b0000000000000000000000000000000000000000000000000000000000);

    // i_sub5_i_euler42_vt_const_31(CONSTANT,197)
    assign i_sub5_i_euler42_vt_const_31_q = $unsigned(24'b000000000000000000000000);

    // c_i32_53111(CONSTANT,30)
    assign c_i32_53111_q = $unsigned(32'b00000000000000000000000000110101);

    // i_sub5_i_euler42(ADD,196)@2
    assign i_sub5_i_euler42_a = {1'b0, i_unnamed_euler36_vt_join_q};
    assign i_sub5_i_euler42_b = {1'b0, c_i32_53111_q};
    assign i_sub5_i_euler42_o = $unsigned(i_sub5_i_euler42_a) + $unsigned(i_sub5_i_euler42_b);
    assign i_sub5_i_euler42_q = i_sub5_i_euler42_o[32:0];

    // bgTrunc_i_sub5_i_euler42_sel_x(BITSELECT,234)@2
    assign bgTrunc_i_sub5_i_euler42_sel_x_b = i_sub5_i_euler42_q[31:0];

    // i_sub5_i_euler42_vt_select_7(BITSELECT,199)@2
    assign i_sub5_i_euler42_vt_select_7_b = bgTrunc_i_sub5_i_euler42_sel_x_b[7:0];

    // i_sub5_i_euler42_vt_join(BITJOIN,198)@2
    assign i_sub5_i_euler42_vt_join_q = {i_sub5_i_euler42_vt_const_31_q, i_sub5_i_euler42_vt_select_7_b};

    // i_and11_trunc_i_euler49_sel_x_merged_bit_select(BITSELECT,670)@2
    assign i_and11_trunc_i_euler49_sel_x_merged_bit_select_in = i_sub5_i_euler42_vt_join_q[5:0];
    assign i_and11_trunc_i_euler49_sel_x_merged_bit_select_b = i_and11_trunc_i_euler49_sel_x_merged_bit_select_in[1:0];
    assign i_and11_trunc_i_euler49_sel_x_merged_bit_select_c = i_and11_trunc_i_euler49_sel_x_merged_bit_select_in[5:4];
    assign i_and11_trunc_i_euler49_sel_x_merged_bit_select_d = i_and11_trunc_i_euler49_sel_x_merged_bit_select_in[3:2];

    // i_and7_i_euler43_join(BITJOIN,384)@2
    assign i_and7_i_euler43_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and11_trunc_i_euler49_sel_x_merged_bit_select_c, GND_q, GND_q, GND_q, GND_q};

    // i_and7_i_euler43_vt_select_5(BITSELECT,72)@2
    assign i_and7_i_euler43_vt_select_5_b = i_and7_i_euler43_join_q[5:4];

    // i_and7_i_euler43_vt_join(BITJOIN,71)@2
    assign i_and7_i_euler43_vt_join_q = {i_and7_i_euler43_vt_const_31_q, i_and7_i_euler43_vt_select_5_b, i_and7_i_euler43_vt_const_3_q};

    // i_sh_prom_i_euler44_sel_x(BITSELECT,256)@2
    assign i_sh_prom_i_euler44_sel_x_b = {32'b00000000000000000000000000000000, i_and7_i_euler43_vt_join_q[31:0]};

    // i_sh_prom_i_euler44_vt_select_5(BITSELECT,160)@2
    assign i_sh_prom_i_euler44_vt_select_5_b = i_sh_prom_i_euler44_sel_x_b[5:4];

    // i_sh_prom_i_euler44_vt_join(BITJOIN,159)@2
    assign i_sh_prom_i_euler44_vt_join_q = {i_sh_prom_i_euler44_vt_const_63_q, i_sh_prom_i_euler44_vt_select_5_b, i_and7_i_euler43_vt_const_3_q};

    // i_shl_i_euler0_shift_narrow_x(BITSELECT,271)@2
    assign i_shl_i_euler0_shift_narrow_x_b = i_sh_prom_i_euler44_vt_join_q[5:0];

    // leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x(BITSELECT,481)@2
    assign leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b = i_shl_i_euler0_shift_narrow_x_b[5:4];

    // redist2_leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b_1(DELAY,675)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist2_leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b_1_q <= $unsigned(leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b);
        end
    end

    // leftShiftStage0_uid483_i_shl_i_euler0_shift_x(MUX,482)@3
    assign leftShiftStage0_uid483_i_shl_i_euler0_shift_x_s = redist2_leftShiftStageSel4Dto4_uid482_i_shl_i_euler0_shift_x_b_1_q;
    always @(leftShiftStage0_uid483_i_shl_i_euler0_shift_x_s or redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q or leftShiftStage0Idx1_uid475_i_shl_i_euler0_shift_x_q or leftShiftStage0Idx2_uid478_i_shl_i_euler0_shift_x_q or leftShiftStage0Idx3_uid481_i_shl_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid483_i_shl_i_euler0_shift_x_s)
            2'b00 : leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q = redist13_bgTrunc_i_add_i_i_euler5_sel_x_b_3_q;
            2'b01 : leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q = leftShiftStage0Idx1_uid475_i_shl_i_euler0_shift_x_q;
            2'b10 : leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q = leftShiftStage0Idx2_uid478_i_shl_i_euler0_shift_x_q;
            2'b11 : leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q = leftShiftStage0Idx3_uid481_i_shl_i_euler0_shift_x_q;
            default : leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_and8_i_euler46_join(BITJOIN,386)@2
    assign i_and8_i_euler46_join_q = {GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, GND_q, i_and11_trunc_i_euler49_sel_x_merged_bit_select_d, GND_q, GND_q};

    // i_and8_i_euler46_vt_select_3(BITSELECT,77)@2
    assign i_and8_i_euler46_vt_select_3_b = i_and8_i_euler46_join_q[3:2];

    // i_and8_i_euler46_vt_join(BITJOIN,76)@2
    assign i_and8_i_euler46_vt_join_q = {i_and15_i_euler53_vt_const_31_q, i_and8_i_euler46_vt_select_3_b, i_and28_i_euler62_vt_const_1_q};

    // i_sh_prom9_i_euler47_sel_x(BITSELECT,255)@2
    assign i_sh_prom9_i_euler47_sel_x_b = {32'b00000000000000000000000000000000, i_and8_i_euler46_vt_join_q[31:0]};

    // i_sh_prom9_i_euler47_vt_select_3(BITSELECT,155)@2
    assign i_sh_prom9_i_euler47_vt_select_3_b = i_sh_prom9_i_euler47_sel_x_b[3:2];

    // i_sh_prom9_i_euler47_vt_join(BITJOIN,154)@2
    assign i_sh_prom9_i_euler47_vt_join_q = {i_sh_prom29_i_euler63_vt_const_63_q, i_sh_prom9_i_euler47_vt_select_3_b, i_and28_i_euler62_vt_const_1_q};

    // i_shl10_i_euler0_shift_narrow_x(BITSELECT,259)@2
    assign i_shl10_i_euler0_shift_narrow_x_b = i_sh_prom9_i_euler47_vt_join_q[5:0];

    // leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x(BITSELECT,423)@2
    assign leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_in = i_shl10_i_euler0_shift_narrow_x_b[3:0];
    assign leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b = leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_in[3:2];

    // redist4_leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b_1(DELAY,677)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist4_leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b_1_q <= $unsigned(leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b);
        end
    end

    // leftShiftStage0_uid425_i_shl10_i_euler0_shift_x(MUX,424)@3
    assign leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_s = redist4_leftShiftStageSel2Dto2_uid424_i_shl10_i_euler0_shift_x_b_1_q;
    always @(leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_s or leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q or leftShiftStage0Idx1_uid417_i_shl10_i_euler0_shift_x_q or leftShiftStage0Idx2_uid420_i_shl10_i_euler0_shift_x_q or leftShiftStage0Idx3_uid423_i_shl10_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_s)
            2'b00 : leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q = leftShiftStage0_uid483_i_shl_i_euler0_shift_x_q;
            2'b01 : leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q = leftShiftStage0Idx1_uid417_i_shl10_i_euler0_shift_x_q;
            2'b10 : leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q = leftShiftStage0Idx2_uid420_i_shl10_i_euler0_shift_x_q;
            2'b11 : leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q = leftShiftStage0Idx3_uid423_i_shl10_i_euler0_shift_x_q;
            default : leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_sh_prom1250_i_euler50_sel_x(BITSELECT,252)@2
    assign i_sh_prom1250_i_euler50_sel_x_b = {62'b00000000000000000000000000000000000000000000000000000000000000, i_and11_trunc_i_euler49_sel_x_merged_bit_select_b[1:0]};

    // i_sh_prom1250_i_euler50_vt_select_1(BITSELECT,141)@2
    assign i_sh_prom1250_i_euler50_vt_select_1_b = i_sh_prom1250_i_euler50_sel_x_b[1:0];

    // i_sh_prom1250_i_euler50_vt_join(BITJOIN,140)@2
    assign i_sh_prom1250_i_euler50_vt_join_q = {i_sh_prom1250_i_euler50_vt_const_63_q, i_sh_prom1250_i_euler50_vt_select_1_b};

    // i_shl13_i_euler0_shift_narrow_x(BITSELECT,263)@2
    assign i_shl13_i_euler0_shift_narrow_x_b = i_sh_prom1250_i_euler50_vt_join_q[5:0];

    // leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x(BITSELECT,437)@2
    assign leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_in = i_shl13_i_euler0_shift_narrow_x_b[1:0];
    assign leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b = leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_in[1:0];

    // redist3_leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b_1(DELAY,676)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b_1_q <= '0;
        end
        else
        begin
            redist3_leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b_1_q <= $unsigned(leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b);
        end
    end

    // leftShiftStage0_uid439_i_shl13_i_euler0_shift_x(MUX,438)@3
    assign leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_s = redist3_leftShiftStageSel0Dto0_uid438_i_shl13_i_euler0_shift_x_b_1_q;
    always @(leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_s or leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q or leftShiftStage0Idx1_uid431_i_shl13_i_euler0_shift_x_q or leftShiftStage0Idx2_uid434_i_shl13_i_euler0_shift_x_q or leftShiftStage0Idx3_uid437_i_shl13_i_euler0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_s)
            2'b00 : leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q = leftShiftStage0_uid425_i_shl10_i_euler0_shift_x_q;
            2'b01 : leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q = leftShiftStage0Idx1_uid431_i_shl13_i_euler0_shift_x_q;
            2'b10 : leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q = leftShiftStage0Idx2_uid434_i_shl13_i_euler0_shift_x_q;
            2'b11 : leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q = leftShiftStage0Idx3_uid437_i_shl13_i_euler0_shift_x_q;
            default : leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q = 64'b0;
        endcase
    end

    // i_i_euler78(MUX,102)@3
    assign i_i_euler78_s = i_cmp4_i_euler41_c;
    always @(i_i_euler78_s or rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q or leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q)
    begin
        unique case (i_i_euler78_s)
            1'b0 : i_i_euler78_q = rightShiftStage0_uid550_i_shr32_i_euler0_shift_x_q;
            1'b1 : i_i_euler78_q = leftShiftStage0_uid439_i_shl13_i_euler0_shift_x_q;
            default : i_i_euler78_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_dsdk_ip_adapt_bitjoin1_x(BITJOIN,245)@3
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_dsdk_ip_adapt_bitjoin1_x_q = {c_i8_283_q, redist5_sync_together128_aunroll_x_in_c0_eni463_1_tpl_3_mem_q, i_unnamed_euler40_vt_join_q, i_i_euler78_q};

    // i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x(CHOOSEBITS,244)@3
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a = i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_dsdk_ip_adapt_bitjoin1_x_q;
    assign i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q = {i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[159:159], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[74:74], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[73:73], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[72:72], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[71:71], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[70:70], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[69:69], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[68:68], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[67:67], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[66:66], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[65:65], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[64:64], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[51:51], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[50:50], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[49:49], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[48:48], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[47:47], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[46:46], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[45:45], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[44:44], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[43:43], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[42:42], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[41:41], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[40:40], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[39:39], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[38:38], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[37:37], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[36:36], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[35:35], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[34:34], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[33:33], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[32:32], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[31:31], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[30:30], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[29:29], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[28:28], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[27:27], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[26:26], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[25:25], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[24:24], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[23:23], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[22:22], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[21:21], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[20:20], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[19:19], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[18:18], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[17:17], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[16:16], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[15:15], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[14:14], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[13:13], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[12:12], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[11:11], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[10:10], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[9:9], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[8:8], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[7:7], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[6:6], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[5:5], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[4:4], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[3:3], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[2:2], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[1:1], i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_a[0:0]};

    // redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2(DELAY,684)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_delay_0 <= '0;
            redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_delay_0 <= $unsigned(i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q);
            redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_q <= redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_delay_0;
        end
    end

    // i_add_i_euler85(ADD,47)@5
    assign i_add_i_euler85_a = {1'b0, redist11_i_llvm_fpga_bit_shuffle_i64_s_s_in_entry_acl_convert_long_to_double_fpgaunique_0s_v64i32_or46_shuffle_i_euler0_NO_NAME_x_q_2_q};
    assign i_add_i_euler85_b = {1'b0, i_acl_49_i_euler81_vt_join_q};
    assign i_add_i_euler85_o = $unsigned(i_add_i_euler85_a) + $unsigned(i_add_i_euler85_b);
    assign i_add_i_euler85_q = i_add_i_euler85_o[64:0];

    // bgTrunc_i_add_i_euler85_sel_x(BITSELECT,230)@5
    assign bgTrunc_i_add_i_euler85_sel_x_b = i_add_i_euler85_q[63:0];

    // redist14_bgTrunc_i_add_i_euler85_sel_x_b_1(DELAY,687)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_bgTrunc_i_add_i_euler85_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist14_bgTrunc_i_add_i_euler85_sel_x_b_1_q <= $unsigned(bgTrunc_i_add_i_euler85_sel_x_b);
        end
    end

    // i_op_euler87(BLACKBOX,121)@6
    // out out_primWireOut@42
    euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Zcd06cj0of0cdj6oq3cz0 thei_op_euler87 (
        .in_0(c_double_1_000000e_00124_q),
        .in_1(redist14_bgTrunc_i_add_i_euler85_sel_x_b_1_q),
        .out_primWireOut(i_op_euler87_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_op_euler87_out_primWireOut_1(DELAY,689)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_op_euler87_out_primWireOut_1_q <= '0;
        end
        else
        begin
            redist16_i_op_euler87_out_primWireOut_1_q <= $unsigned(i_op_euler87_out_primWireOut);
        end
    end

    // redist6_sync_together128_aunroll_x_in_c0_eni463_2_tpl_43(DELAY,679)
    dspba_delay_ver #( .width(1), .depth(43), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together128_aunroll_x_in_c0_eni463_2_tpl_43 ( .xin(in_c0_eni463_2_tpl), .xout(redist6_sync_together128_aunroll_x_in_c0_eni463_2_tpl_43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_div_euler88(MUX,101)@43 + 1
    assign i_div_euler88_s = redist6_sync_together128_aunroll_x_in_c0_eni463_2_tpl_43_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_div_euler88_q <= 64'b0;
        end
        else
        begin
            unique case (i_div_euler88_s)
                1'b0 : i_div_euler88_q <= redist16_i_op_euler87_out_primWireOut_1_q;
                1'b1 : i_div_euler88_q <= c_double_1_000000e_00124_q;
                default : i_div_euler88_q <= 64'b0;
            endcase
        end
    end

    // valid_fanout_reg1(REG,340)@42 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist9_sync_together128_aunroll_x_in_i_valid_42_q);
        end
    end

    // valid_fanout_reg2(REG,341)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist10_sync_together128_aunroll_x_in_i_valid_53_q);
        end
    end

    // redist8_sync_together128_aunroll_x_in_c0_eni463_4_tpl_54(DELAY,681)
    dspba_delay_ver #( .width(1), .depth(54), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_sync_together128_aunroll_x_in_c0_eni463_4_tpl_54 ( .xin(in_c0_eni463_4_tpl), .xout(redist8_sync_together128_aunroll_x_in_c0_eni463_4_tpl_54_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_f64_soma_012_push10_euler91(BLACKBOX,113)@54
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    euler_i_llvm_fpga_push_f64_soma_012_push10_0 thei_llvm_fpga_push_f64_soma_012_push10_euler91 (
        .in_c0_ene468(redist8_sync_together128_aunroll_x_in_c0_eni463_4_tpl_54_q),
        .in_data_in(i_add_euler90_out_primWireOut),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_feedback_stall_out_10),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_f64_soma_012_push10_euler91_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_f64_soma_012_push10_euler91_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together128_aunroll_x_in_c0_eni463_3_tpl_43(DELAY,680)
    dspba_delay_ver #( .width(1), .depth(43), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together128_aunroll_x_in_c0_eni463_3_tpl_43 ( .xin(in_c0_eni463_3_tpl), .xout(redist7_sync_together128_aunroll_x_in_c0_eni463_3_tpl_43_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_double_0_000000e_00125(FLOATCONSTANT,9)
    assign c_double_0_000000e_00125_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // i_llvm_fpga_pop_f64_soma_012_pop10_euler89(BLACKBOX,112)@43
    // out out_feedback_stall_out_10@20000000
    euler_i_llvm_fpga_pop_f64_soma_012_pop10_0 thei_llvm_fpga_pop_f64_soma_012_pop10_euler89 (
        .in_data_in(c_double_0_000000e_00125_q),
        .in_dir(redist7_sync_together128_aunroll_x_in_c0_eni463_3_tpl_43_q),
        .in_feedback_in_10(i_llvm_fpga_push_f64_soma_012_push10_euler91_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_f64_soma_012_push10_euler91_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out_1(DELAY,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out);
        end
    end

    // i_add_euler90(BLACKBOX,42)@44
    // out out_primWireOut@54
    euler_flt_i_sfc_logic_s_c0_in_z8fatorialA000000Z0of0cdj6oq0cd06u5o0u thei_add_euler90 (
        .in_0(redist17_i_llvm_fpga_pop_f64_soma_012_pop10_euler89_out_data_out_1_q),
        .in_1(i_div_euler88_q),
        .out_primWireOut(i_add_euler90_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_f64_unnamed_euler12_euler92(BLACKBOX,111)@54
    // out out_intel_reserved_ffwd_2_0@20000000
    euler_i_llvm_fpga_ffwd_source_f64_unnamed_12_euler0 thei_llvm_fpga_ffwd_source_f64_unnamed_euler12_euler92 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(i_add_euler90_out_primWireOut),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_f64_unnamed_euler12_euler92_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,226)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_f64_unnamed_euler12_euler92_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg0(REG,339)@53 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist10_sync_together128_aunroll_x_in_i_valid_53_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,337)@54
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_euler1 = GND_q;
    assign out_unnamed_euler13_0_tpl = GND_q;

endmodule
