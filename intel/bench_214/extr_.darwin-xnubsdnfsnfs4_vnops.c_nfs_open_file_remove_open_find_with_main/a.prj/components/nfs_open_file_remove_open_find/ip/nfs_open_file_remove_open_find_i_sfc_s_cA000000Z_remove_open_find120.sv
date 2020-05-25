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

// SystemVerilog created from nfs_open_file_remove_open_find_i_sfc_s_cA000000Z_remove_open_find120
// SystemVerilog created on Sun May 24 22:30:42 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module nfs_open_file_remove_open_find_i_sfc_s_cA000000Z_remove_open_find120 (
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_eni66_0_tpl,
    input wire [31:0] in_c0_eni66_1_tpl,
    input wire [0:0] in_c0_eni66_2_tpl,
    input wire [0:0] in_c0_eni66_3_tpl,
    input wire [0:0] in_c0_eni66_4_tpl,
    input wire [0:0] in_c0_eni66_5_tpl,
    input wire [0:0] in_c0_eni66_6_tpl,
    input wire [0:0] in_c0_eni66_7_tpl,
    input wire [0:0] in_c0_eni66_8_tpl,
    input wire [0:0] in_c0_eni66_9_tpl,
    input wire [0:0] in_c0_eni66_10_tpl,
    input wire [0:0] in_c0_eni66_11_tpl,
    input wire [0:0] in_c0_eni66_12_tpl,
    input wire [0:0] in_c0_eni66_13_tpl,
    input wire [0:0] in_c0_eni66_14_tpl,
    input wire [0:0] in_c0_eni66_15_tpl,
    input wire [0:0] in_c0_eni66_16_tpl,
    input wire [0:0] in_c0_eni66_17_tpl,
    input wire [0:0] in_c0_eni66_18_tpl,
    input wire [0:0] in_c0_eni66_19_tpl,
    input wire [0:0] in_c0_eni66_20_tpl,
    input wire [0:0] in_c0_eni66_21_tpl,
    input wire [0:0] in_c0_eni66_22_tpl,
    input wire [0:0] in_c0_eni66_23_tpl,
    input wire [0:0] in_c0_eni66_24_tpl,
    input wire [0:0] in_c0_eni66_25_tpl,
    input wire [0:0] in_c0_eni66_26_tpl,
    input wire [0:0] in_c0_eni66_27_tpl,
    input wire [0:0] in_c0_eni66_28_tpl,
    input wire [0:0] in_c0_eni66_29_tpl,
    input wire [0:0] in_c0_eni66_30_tpl,
    input wire [0:0] in_c0_eni66_31_tpl,
    input wire [0:0] in_c0_eni66_32_tpl,
    input wire [0:0] in_c0_eni66_33_tpl,
    input wire [0:0] in_c0_eni66_34_tpl,
    input wire [0:0] in_c0_eni66_35_tpl,
    input wire [0:0] in_c0_eni66_36_tpl,
    input wire [0:0] in_c0_eni66_37_tpl,
    input wire [0:0] in_c0_eni66_38_tpl,
    input wire [0:0] in_c0_eni66_39_tpl,
    input wire [0:0] in_c0_eni66_40_tpl,
    input wire [0:0] in_c0_eni66_41_tpl,
    input wire [0:0] in_c0_eni66_42_tpl,
    input wire [0:0] in_c0_eni66_43_tpl,
    input wire [0:0] in_c0_eni66_44_tpl,
    input wire [0:0] in_c0_eni66_45_tpl,
    input wire [0:0] in_c0_eni66_46_tpl,
    input wire [0:0] in_c0_eni66_47_tpl,
    input wire [0:0] in_c0_eni66_48_tpl,
    input wire [0:0] in_c0_eni66_49_tpl,
    input wire [0:0] in_c0_eni66_50_tpl,
    input wire [0:0] in_c0_eni66_51_tpl,
    input wire [0:0] in_c0_eni66_52_tpl,
    input wire [0:0] in_c0_eni66_53_tpl,
    input wire [0:0] in_c0_eni66_54_tpl,
    input wire [0:0] in_c0_eni66_55_tpl,
    input wire [0:0] in_c0_eni66_56_tpl,
    input wire [0:0] in_c0_eni66_57_tpl,
    input wire [0:0] in_c0_eni66_58_tpl,
    input wire [0:0] in_c0_eni66_59_tpl,
    input wire [0:0] in_c0_eni66_60_tpl,
    input wire [0:0] in_c0_eni66_61_tpl,
    input wire [0:0] in_c0_eni66_62_tpl,
    input wire [0:0] in_c0_eni66_63_tpl,
    input wire [0:0] in_c0_eni66_64_tpl,
    input wire [0:0] in_c0_eni66_65_tpl,
    input wire [0:0] in_c0_eni66_66_tpl,
    input wire [0:0] in_forked,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_notexitcond,
    output wire [0:0] out_c0_exit_0_tpl,
    output wire [0:0] out_c0_exit_1_tpl,
    output wire [0:0] out_c0_exit_2_tpl,
    output wire [0:0] out_c0_exit_3_tpl,
    output wire [0:0] out_c0_exit_4_tpl,
    output wire [0:0] out_c0_exit_5_tpl,
    output wire [0:0] out_c0_exit_6_tpl,
    output wire [0:0] out_c0_exit_7_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_4_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_5_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_7_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_4_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_5_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_6_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_7_tpl;


    // i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x(BLACKBOX,8)@972
    // out out_o_valid@978
    // out out_unnamed_nfs_open_file_remove_open_find2@978
    // out out_c0_exi7_0_tpl@978
    // out out_c0_exi7_1_tpl@978
    // out out_c0_exi7_2_tpl@978
    // out out_c0_exi7_3_tpl@978
    // out out_c0_exi7_4_tpl@978
    // out out_c0_exi7_5_tpl@978
    // out out_c0_exi7_6_tpl@978
    // out out_c0_exi7_7_tpl@978
    nfs_open_file_remove_open_find_i_sfc_logA000000Zle_remove_open_find0 thei_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_c0_eni66_0_tpl(in_c0_eni66_0_tpl),
        .in_c0_eni66_1_tpl(in_c0_eni66_1_tpl),
        .in_c0_eni66_2_tpl(in_c0_eni66_2_tpl),
        .in_c0_eni66_3_tpl(in_c0_eni66_3_tpl),
        .in_c0_eni66_4_tpl(in_c0_eni66_4_tpl),
        .in_c0_eni66_5_tpl(in_c0_eni66_5_tpl),
        .in_c0_eni66_6_tpl(in_c0_eni66_6_tpl),
        .in_c0_eni66_7_tpl(in_c0_eni66_7_tpl),
        .in_c0_eni66_8_tpl(in_c0_eni66_8_tpl),
        .in_c0_eni66_9_tpl(in_c0_eni66_9_tpl),
        .in_c0_eni66_10_tpl(in_c0_eni66_10_tpl),
        .in_c0_eni66_11_tpl(in_c0_eni66_11_tpl),
        .in_c0_eni66_12_tpl(in_c0_eni66_12_tpl),
        .in_c0_eni66_13_tpl(in_c0_eni66_13_tpl),
        .in_c0_eni66_14_tpl(in_c0_eni66_14_tpl),
        .in_c0_eni66_15_tpl(in_c0_eni66_15_tpl),
        .in_c0_eni66_16_tpl(in_c0_eni66_16_tpl),
        .in_c0_eni66_17_tpl(in_c0_eni66_17_tpl),
        .in_c0_eni66_18_tpl(in_c0_eni66_18_tpl),
        .in_c0_eni66_19_tpl(in_c0_eni66_19_tpl),
        .in_c0_eni66_20_tpl(in_c0_eni66_20_tpl),
        .in_c0_eni66_21_tpl(in_c0_eni66_21_tpl),
        .in_c0_eni66_22_tpl(in_c0_eni66_22_tpl),
        .in_c0_eni66_23_tpl(in_c0_eni66_23_tpl),
        .in_c0_eni66_24_tpl(in_c0_eni66_24_tpl),
        .in_c0_eni66_25_tpl(in_c0_eni66_25_tpl),
        .in_c0_eni66_26_tpl(in_c0_eni66_26_tpl),
        .in_c0_eni66_27_tpl(in_c0_eni66_27_tpl),
        .in_c0_eni66_28_tpl(in_c0_eni66_28_tpl),
        .in_c0_eni66_29_tpl(in_c0_eni66_29_tpl),
        .in_c0_eni66_30_tpl(in_c0_eni66_30_tpl),
        .in_c0_eni66_31_tpl(in_c0_eni66_31_tpl),
        .in_c0_eni66_32_tpl(in_c0_eni66_32_tpl),
        .in_c0_eni66_33_tpl(in_c0_eni66_33_tpl),
        .in_c0_eni66_34_tpl(in_c0_eni66_34_tpl),
        .in_c0_eni66_35_tpl(in_c0_eni66_35_tpl),
        .in_c0_eni66_36_tpl(in_c0_eni66_36_tpl),
        .in_c0_eni66_37_tpl(in_c0_eni66_37_tpl),
        .in_c0_eni66_38_tpl(in_c0_eni66_38_tpl),
        .in_c0_eni66_39_tpl(in_c0_eni66_39_tpl),
        .in_c0_eni66_40_tpl(in_c0_eni66_40_tpl),
        .in_c0_eni66_41_tpl(in_c0_eni66_41_tpl),
        .in_c0_eni66_42_tpl(in_c0_eni66_42_tpl),
        .in_c0_eni66_43_tpl(in_c0_eni66_43_tpl),
        .in_c0_eni66_44_tpl(in_c0_eni66_44_tpl),
        .in_c0_eni66_45_tpl(in_c0_eni66_45_tpl),
        .in_c0_eni66_46_tpl(in_c0_eni66_46_tpl),
        .in_c0_eni66_47_tpl(in_c0_eni66_47_tpl),
        .in_c0_eni66_48_tpl(in_c0_eni66_48_tpl),
        .in_c0_eni66_49_tpl(in_c0_eni66_49_tpl),
        .in_c0_eni66_50_tpl(in_c0_eni66_50_tpl),
        .in_c0_eni66_51_tpl(in_c0_eni66_51_tpl),
        .in_c0_eni66_52_tpl(in_c0_eni66_52_tpl),
        .in_c0_eni66_53_tpl(in_c0_eni66_53_tpl),
        .in_c0_eni66_54_tpl(in_c0_eni66_54_tpl),
        .in_c0_eni66_55_tpl(in_c0_eni66_55_tpl),
        .in_c0_eni66_56_tpl(in_c0_eni66_56_tpl),
        .in_c0_eni66_57_tpl(in_c0_eni66_57_tpl),
        .in_c0_eni66_58_tpl(in_c0_eni66_58_tpl),
        .in_c0_eni66_59_tpl(in_c0_eni66_59_tpl),
        .in_c0_eni66_60_tpl(in_c0_eni66_60_tpl),
        .in_c0_eni66_61_tpl(in_c0_eni66_61_tpl),
        .in_c0_eni66_62_tpl(in_c0_eni66_62_tpl),
        .in_c0_eni66_63_tpl(in_c0_eni66_63_tpl),
        .in_c0_eni66_64_tpl(in_c0_eni66_64_tpl),
        .in_c0_eni66_65_tpl(in_c0_eni66_65_tpl),
        .in_c0_eni66_66_tpl(in_c0_eni66_66_tpl),
        .out_o_valid(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_o_valid),
        .out_unnamed_nfs_open_file_remove_open_find2(),
        .out_c0_exi7_0_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_0_tpl),
        .out_c0_exi7_1_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_1_tpl),
        .out_c0_exi7_2_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_2_tpl),
        .out_c0_exi7_3_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_3_tpl),
        .out_c0_exi7_4_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_4_tpl),
        .out_c0_exi7_5_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_5_tpl),
        .out_c0_exi7_6_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_6_tpl),
        .out_c0_exi7_7_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x(BLACKBOX,7)@978
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@981
    // out out_data_out_0_tpl@981
    // out out_data_out_1_tpl@981
    // out out_data_out_2_tpl@981
    // out out_data_out_3_tpl@981
    // out out_data_out_4_tpl@981
    // out out_data_out_5_tpl@981
    // out out_data_out_6_tpl@981
    // out out_data_out_7_tpl@981
    nfs_open_file_remove_open_find_i_llvm_fpA000007Zle_remove_open_find0 thei_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x (
        .in_dec_pipelined_thread(in_notexitcond),
        .in_inc_pipelined_thread(in_forked),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_3_tpl),
        .in_data_in_4_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_4_tpl),
        .in_data_in_5_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_5_tpl),
        .in_data_in_6_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_6_tpl),
        .in_data_in_7_tpl(i_sfc_logic_s_c0_in_wt_entry_nfs_open_file_remove_open_finds_c0_enter1_nfs_open_file_remove_open_find0_aunroll_x_out_c0_exi7_7_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,6)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,10)@981
    assign out_c0_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_3_tpl;
    assign out_c0_exit_4_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_4_tpl;
    assign out_c0_exit_5_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_5_tpl;
    assign out_c0_exit_6_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_6_tpl;
    assign out_c0_exit_7_tpl = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_data_out_7_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_wt_entry_nfs_open_file_remove_open_finds_c0_exit_nfs_open_file_remove_open_find1_aunroll_x_out_valid_out;

endmodule
