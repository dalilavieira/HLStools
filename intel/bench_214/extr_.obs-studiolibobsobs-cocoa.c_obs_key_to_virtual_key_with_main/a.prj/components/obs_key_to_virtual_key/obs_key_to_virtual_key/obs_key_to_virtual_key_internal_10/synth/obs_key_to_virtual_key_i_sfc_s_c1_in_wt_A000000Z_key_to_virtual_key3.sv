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

// SystemVerilog created from obs_key_to_virtual_key_i_sfc_s_c1_in_wt_A000000Z_key_to_virtual_key3
// SystemVerilog created on Sun May 24 22:38:51 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module obs_key_to_virtual_key_i_sfc_s_c1_in_wt_A000000Z_key_to_virtual_key3 (
    input wire [0:0] in_flush,
    input wire [63:0] in_retval_01_obs_key_to_virtual_key_avm_readdata,
    input wire [0:0] in_retval_01_obs_key_to_virtual_key_avm_readdatavalid,
    input wire [0:0] in_retval_01_obs_key_to_virtual_key_avm_waitrequest,
    input wire [0:0] in_retval_01_obs_key_to_virtual_key_avm_writeack,
    output wire [63:0] out_retval_01_obs_key_to_virtual_key_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_retval_01_obs_key_to_virtual_key_avm_burstcount,
    output wire [7:0] out_retval_01_obs_key_to_virtual_key_avm_byteenable,
    output wire [0:0] out_retval_01_obs_key_to_virtual_key_avm_enable,
    output wire [0:0] out_retval_01_obs_key_to_virtual_key_avm_read,
    output wire [0:0] out_retval_01_obs_key_to_virtual_key_avm_write,
    output wire [63:0] out_retval_01_obs_key_to_virtual_key_avm_writedata,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [31:0] in_c1_eni1_1_tpl,
    input wire [63:0] in_c1_eni1_2_tpl,
    input wire [63:0] in_c1_eni1_3_tpl,
    input wire [63:0] in_c1_eni1_4_tpl,
    input wire [63:0] in_c1_eni1_5_tpl,
    input wire [63:0] in_c1_eni1_6_tpl,
    input wire [63:0] in_c1_eni1_7_tpl,
    input wire [63:0] in_c1_eni1_8_tpl,
    input wire [63:0] in_c1_eni1_9_tpl,
    input wire [63:0] in_c1_eni1_10_tpl,
    input wire [63:0] in_c1_eni1_11_tpl,
    input wire [63:0] in_c1_eni1_12_tpl,
    input wire [63:0] in_c1_eni1_13_tpl,
    input wire [63:0] in_c1_eni1_14_tpl,
    input wire [63:0] in_c1_eni1_15_tpl,
    input wire [63:0] in_c1_eni1_16_tpl,
    input wire [63:0] in_c1_eni1_17_tpl,
    input wire [63:0] in_c1_eni1_18_tpl,
    input wire [63:0] in_c1_eni1_19_tpl,
    input wire [63:0] in_c1_eni1_20_tpl,
    input wire [63:0] in_c1_eni1_21_tpl,
    input wire [63:0] in_c1_eni1_22_tpl,
    input wire [63:0] in_c1_eni1_23_tpl,
    input wire [63:0] in_c1_eni1_24_tpl,
    input wire [63:0] in_c1_eni1_25_tpl,
    input wire [63:0] in_c1_eni1_26_tpl,
    input wire [63:0] in_c1_eni1_27_tpl,
    input wire [63:0] in_c1_eni1_28_tpl,
    input wire [63:0] in_c1_eni1_29_tpl,
    input wire [63:0] in_c1_eni1_30_tpl,
    input wire [63:0] in_c1_eni1_31_tpl,
    input wire [63:0] in_c1_eni1_32_tpl,
    input wire [63:0] in_c1_eni1_33_tpl,
    input wire [63:0] in_c1_eni1_34_tpl,
    input wire [63:0] in_c1_eni1_35_tpl,
    input wire [63:0] in_c1_eni1_36_tpl,
    input wire [63:0] in_c1_eni1_37_tpl,
    input wire [63:0] in_c1_eni1_38_tpl,
    input wire [63:0] in_c1_eni1_39_tpl,
    input wire [63:0] in_c1_eni1_40_tpl,
    input wire [63:0] in_c1_eni1_41_tpl,
    input wire [63:0] in_c1_eni1_42_tpl,
    input wire [63:0] in_c1_eni1_43_tpl,
    input wire [63:0] in_c1_eni1_44_tpl,
    input wire [63:0] in_c1_eni1_45_tpl,
    input wire [63:0] in_c1_eni1_46_tpl,
    input wire [63:0] in_c1_eni1_47_tpl,
    input wire [63:0] in_c1_eni1_48_tpl,
    input wire [63:0] in_c1_eni1_49_tpl,
    input wire [63:0] in_c1_eni1_50_tpl,
    input wire [63:0] in_c1_eni1_51_tpl,
    input wire [63:0] in_c1_eni1_52_tpl,
    input wire [63:0] in_c1_eni1_53_tpl,
    input wire [63:0] in_c1_eni1_54_tpl,
    input wire [63:0] in_c1_eni1_55_tpl,
    input wire [63:0] in_c1_eni1_56_tpl,
    input wire [63:0] in_c1_eni1_57_tpl,
    input wire [63:0] in_c1_eni1_58_tpl,
    input wire [63:0] in_c1_eni1_59_tpl,
    input wire [63:0] in_c1_eni1_60_tpl,
    input wire [63:0] in_c1_eni1_61_tpl,
    input wire [63:0] in_c1_eni1_62_tpl,
    input wire [63:0] in_c1_eni1_63_tpl,
    input wire [63:0] in_c1_eni1_64_tpl,
    input wire [63:0] in_c1_eni1_65_tpl,
    input wire [63:0] in_c1_eni1_66_tpl,
    input wire [63:0] in_c1_eni1_67_tpl,
    input wire [63:0] in_c1_eni1_68_tpl,
    input wire [63:0] in_c1_eni1_69_tpl,
    input wire [63:0] in_c1_eni1_70_tpl,
    input wire [63:0] in_c1_eni1_71_tpl,
    input wire [63:0] in_c1_eni1_72_tpl,
    input wire [63:0] in_c1_eni1_73_tpl,
    input wire [63:0] in_c1_eni1_74_tpl,
    input wire [63:0] in_c1_eni1_75_tpl,
    input wire [63:0] in_c1_eni1_76_tpl,
    input wire [63:0] in_c1_eni1_77_tpl,
    input wire [63:0] in_c1_eni1_78_tpl,
    input wire [63:0] in_c1_eni1_79_tpl,
    input wire [63:0] in_c1_eni1_80_tpl,
    input wire [63:0] in_c1_eni1_81_tpl,
    input wire [63:0] in_c1_eni1_82_tpl,
    input wire [63:0] in_c1_eni1_83_tpl,
    input wire [63:0] in_c1_eni1_84_tpl,
    input wire [63:0] in_c1_eni1_85_tpl,
    input wire [63:0] in_c1_eni1_86_tpl,
    input wire [63:0] in_c1_eni1_87_tpl,
    input wire [63:0] in_c1_eni1_88_tpl,
    input wire [63:0] in_c1_eni1_89_tpl,
    input wire [63:0] in_c1_eni1_90_tpl,
    input wire [63:0] in_c1_eni1_91_tpl,
    input wire [63:0] in_c1_eni1_92_tpl,
    input wire [63:0] in_c1_eni1_93_tpl,
    input wire [63:0] in_c1_eni1_94_tpl,
    input wire [63:0] in_c1_eni1_95_tpl,
    input wire [63:0] in_c1_eni1_96_tpl,
    input wire [63:0] in_c1_eni1_97_tpl,
    input wire [63:0] in_c1_eni1_98_tpl,
    input wire [63:0] in_c1_eni1_99_tpl,
    input wire [63:0] in_c1_eni1_100_tpl,
    input wire [63:0] in_c1_eni1_101_tpl,
    input wire [63:0] in_c1_eni1_102_tpl,
    input wire [63:0] in_c1_eni1_103_tpl,
    input wire [63:0] in_c1_eni1_104_tpl,
    input wire [63:0] in_c1_eni1_105_tpl,
    input wire [63:0] in_c1_eni1_106_tpl,
    input wire [63:0] in_c1_eni1_107_tpl,
    input wire [63:0] in_c1_eni1_108_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c1_exit_0_tpl,
    output wire [31:0] out_c1_exit_1_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_address;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_enable;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_read;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_write;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_writedata;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_c1_exi1_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_c1_exi1_1_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x(BLACKBOX,19)@20
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@23
    // out out_data_out_0_tpl@23
    // out out_data_out_1_tpl@23
    obs_key_to_virtual_key_i_llvm_fpga_sfc_eA000001Z_key_to_virtual_key0 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_c1_exi1_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_c1_exi1_1_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x(BLACKBOX,20)@1
    // out out_o_valid@20
    // out out_retval_01_obs_key_to_virtual_key_avm_address@20000000
    // out out_retval_01_obs_key_to_virtual_key_avm_burstcount@20000000
    // out out_retval_01_obs_key_to_virtual_key_avm_byteenable@20000000
    // out out_retval_01_obs_key_to_virtual_key_avm_enable@20000000
    // out out_retval_01_obs_key_to_virtual_key_avm_read@20000000
    // out out_retval_01_obs_key_to_virtual_key_avm_write@20000000
    // out out_retval_01_obs_key_to_virtual_key_avm_writedata@20000000
    // out out_unnamed_obs_key_to_virtual_key1@20
    // out out_c1_exi1_0_tpl@20
    // out out_c1_exi1_1_tpl@20
    obs_key_to_virtual_key_i_sfc_logic_s_c1_A000000Z_key_to_virtual_key0 thei_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_retval_01_obs_key_to_virtual_key_avm_readdata(in_retval_01_obs_key_to_virtual_key_avm_readdata),
        .in_retval_01_obs_key_to_virtual_key_avm_readdatavalid(in_retval_01_obs_key_to_virtual_key_avm_readdatavalid),
        .in_retval_01_obs_key_to_virtual_key_avm_waitrequest(in_retval_01_obs_key_to_virtual_key_avm_waitrequest),
        .in_retval_01_obs_key_to_virtual_key_avm_writeack(in_retval_01_obs_key_to_virtual_key_avm_writeack),
        .in_c1_eni1_0_tpl(in_c1_eni1_0_tpl),
        .in_c1_eni1_1_tpl(in_c1_eni1_1_tpl),
        .in_c1_eni1_2_tpl(in_c1_eni1_2_tpl),
        .in_c1_eni1_3_tpl(in_c1_eni1_3_tpl),
        .in_c1_eni1_4_tpl(in_c1_eni1_4_tpl),
        .in_c1_eni1_5_tpl(in_c1_eni1_5_tpl),
        .in_c1_eni1_6_tpl(in_c1_eni1_6_tpl),
        .in_c1_eni1_7_tpl(in_c1_eni1_7_tpl),
        .in_c1_eni1_8_tpl(in_c1_eni1_8_tpl),
        .in_c1_eni1_9_tpl(in_c1_eni1_9_tpl),
        .in_c1_eni1_10_tpl(in_c1_eni1_10_tpl),
        .in_c1_eni1_11_tpl(in_c1_eni1_11_tpl),
        .in_c1_eni1_12_tpl(in_c1_eni1_12_tpl),
        .in_c1_eni1_13_tpl(in_c1_eni1_13_tpl),
        .in_c1_eni1_14_tpl(in_c1_eni1_14_tpl),
        .in_c1_eni1_15_tpl(in_c1_eni1_15_tpl),
        .in_c1_eni1_16_tpl(in_c1_eni1_16_tpl),
        .in_c1_eni1_17_tpl(in_c1_eni1_17_tpl),
        .in_c1_eni1_18_tpl(in_c1_eni1_18_tpl),
        .in_c1_eni1_19_tpl(in_c1_eni1_19_tpl),
        .in_c1_eni1_20_tpl(in_c1_eni1_20_tpl),
        .in_c1_eni1_21_tpl(in_c1_eni1_21_tpl),
        .in_c1_eni1_22_tpl(in_c1_eni1_22_tpl),
        .in_c1_eni1_23_tpl(in_c1_eni1_23_tpl),
        .in_c1_eni1_24_tpl(in_c1_eni1_24_tpl),
        .in_c1_eni1_25_tpl(in_c1_eni1_25_tpl),
        .in_c1_eni1_26_tpl(in_c1_eni1_26_tpl),
        .in_c1_eni1_27_tpl(in_c1_eni1_27_tpl),
        .in_c1_eni1_28_tpl(in_c1_eni1_28_tpl),
        .in_c1_eni1_29_tpl(in_c1_eni1_29_tpl),
        .in_c1_eni1_30_tpl(in_c1_eni1_30_tpl),
        .in_c1_eni1_31_tpl(in_c1_eni1_31_tpl),
        .in_c1_eni1_32_tpl(in_c1_eni1_32_tpl),
        .in_c1_eni1_33_tpl(in_c1_eni1_33_tpl),
        .in_c1_eni1_34_tpl(in_c1_eni1_34_tpl),
        .in_c1_eni1_35_tpl(in_c1_eni1_35_tpl),
        .in_c1_eni1_36_tpl(in_c1_eni1_36_tpl),
        .in_c1_eni1_37_tpl(in_c1_eni1_37_tpl),
        .in_c1_eni1_38_tpl(in_c1_eni1_38_tpl),
        .in_c1_eni1_39_tpl(in_c1_eni1_39_tpl),
        .in_c1_eni1_40_tpl(in_c1_eni1_40_tpl),
        .in_c1_eni1_41_tpl(in_c1_eni1_41_tpl),
        .in_c1_eni1_42_tpl(in_c1_eni1_42_tpl),
        .in_c1_eni1_43_tpl(in_c1_eni1_43_tpl),
        .in_c1_eni1_44_tpl(in_c1_eni1_44_tpl),
        .in_c1_eni1_45_tpl(in_c1_eni1_45_tpl),
        .in_c1_eni1_46_tpl(in_c1_eni1_46_tpl),
        .in_c1_eni1_47_tpl(in_c1_eni1_47_tpl),
        .in_c1_eni1_48_tpl(in_c1_eni1_48_tpl),
        .in_c1_eni1_49_tpl(in_c1_eni1_49_tpl),
        .in_c1_eni1_50_tpl(in_c1_eni1_50_tpl),
        .in_c1_eni1_51_tpl(in_c1_eni1_51_tpl),
        .in_c1_eni1_52_tpl(in_c1_eni1_52_tpl),
        .in_c1_eni1_53_tpl(in_c1_eni1_53_tpl),
        .in_c1_eni1_54_tpl(in_c1_eni1_54_tpl),
        .in_c1_eni1_55_tpl(in_c1_eni1_55_tpl),
        .in_c1_eni1_56_tpl(in_c1_eni1_56_tpl),
        .in_c1_eni1_57_tpl(in_c1_eni1_57_tpl),
        .in_c1_eni1_58_tpl(in_c1_eni1_58_tpl),
        .in_c1_eni1_59_tpl(in_c1_eni1_59_tpl),
        .in_c1_eni1_60_tpl(in_c1_eni1_60_tpl),
        .in_c1_eni1_61_tpl(in_c1_eni1_61_tpl),
        .in_c1_eni1_62_tpl(in_c1_eni1_62_tpl),
        .in_c1_eni1_63_tpl(in_c1_eni1_63_tpl),
        .in_c1_eni1_64_tpl(in_c1_eni1_64_tpl),
        .in_c1_eni1_65_tpl(in_c1_eni1_65_tpl),
        .in_c1_eni1_66_tpl(in_c1_eni1_66_tpl),
        .in_c1_eni1_67_tpl(in_c1_eni1_67_tpl),
        .in_c1_eni1_68_tpl(in_c1_eni1_68_tpl),
        .in_c1_eni1_69_tpl(in_c1_eni1_69_tpl),
        .in_c1_eni1_70_tpl(in_c1_eni1_70_tpl),
        .in_c1_eni1_71_tpl(in_c1_eni1_71_tpl),
        .in_c1_eni1_72_tpl(in_c1_eni1_72_tpl),
        .in_c1_eni1_73_tpl(in_c1_eni1_73_tpl),
        .in_c1_eni1_74_tpl(in_c1_eni1_74_tpl),
        .in_c1_eni1_75_tpl(in_c1_eni1_75_tpl),
        .in_c1_eni1_76_tpl(in_c1_eni1_76_tpl),
        .in_c1_eni1_77_tpl(in_c1_eni1_77_tpl),
        .in_c1_eni1_78_tpl(in_c1_eni1_78_tpl),
        .in_c1_eni1_79_tpl(in_c1_eni1_79_tpl),
        .in_c1_eni1_80_tpl(in_c1_eni1_80_tpl),
        .in_c1_eni1_81_tpl(in_c1_eni1_81_tpl),
        .in_c1_eni1_82_tpl(in_c1_eni1_82_tpl),
        .in_c1_eni1_83_tpl(in_c1_eni1_83_tpl),
        .in_c1_eni1_84_tpl(in_c1_eni1_84_tpl),
        .in_c1_eni1_85_tpl(in_c1_eni1_85_tpl),
        .in_c1_eni1_86_tpl(in_c1_eni1_86_tpl),
        .in_c1_eni1_87_tpl(in_c1_eni1_87_tpl),
        .in_c1_eni1_88_tpl(in_c1_eni1_88_tpl),
        .in_c1_eni1_89_tpl(in_c1_eni1_89_tpl),
        .in_c1_eni1_90_tpl(in_c1_eni1_90_tpl),
        .in_c1_eni1_91_tpl(in_c1_eni1_91_tpl),
        .in_c1_eni1_92_tpl(in_c1_eni1_92_tpl),
        .in_c1_eni1_93_tpl(in_c1_eni1_93_tpl),
        .in_c1_eni1_94_tpl(in_c1_eni1_94_tpl),
        .in_c1_eni1_95_tpl(in_c1_eni1_95_tpl),
        .in_c1_eni1_96_tpl(in_c1_eni1_96_tpl),
        .in_c1_eni1_97_tpl(in_c1_eni1_97_tpl),
        .in_c1_eni1_98_tpl(in_c1_eni1_98_tpl),
        .in_c1_eni1_99_tpl(in_c1_eni1_99_tpl),
        .in_c1_eni1_100_tpl(in_c1_eni1_100_tpl),
        .in_c1_eni1_101_tpl(in_c1_eni1_101_tpl),
        .in_c1_eni1_102_tpl(in_c1_eni1_102_tpl),
        .in_c1_eni1_103_tpl(in_c1_eni1_103_tpl),
        .in_c1_eni1_104_tpl(in_c1_eni1_104_tpl),
        .in_c1_eni1_105_tpl(in_c1_eni1_105_tpl),
        .in_c1_eni1_106_tpl(in_c1_eni1_106_tpl),
        .in_c1_eni1_107_tpl(in_c1_eni1_107_tpl),
        .in_c1_eni1_108_tpl(in_c1_eni1_108_tpl),
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_o_valid),
        .out_retval_01_obs_key_to_virtual_key_avm_address(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_address),
        .out_retval_01_obs_key_to_virtual_key_avm_burstcount(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_burstcount),
        .out_retval_01_obs_key_to_virtual_key_avm_byteenable(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_byteenable),
        .out_retval_01_obs_key_to_virtual_key_avm_enable(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_enable),
        .out_retval_01_obs_key_to_virtual_key_avm_read(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_read),
        .out_retval_01_obs_key_to_virtual_key_avm_write(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_write),
        .out_retval_01_obs_key_to_virtual_key_avm_writedata(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_writedata),
        .out_unnamed_obs_key_to_virtual_key1(),
        .out_c1_exi1_0_tpl(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_c1_exi1_0_tpl),
        .out_c1_exi1_1_tpl(i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_c1_exi1_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_retval_01_obs_key_to_virtual_key_avm_address = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_address;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_retval_01_obs_key_to_virtual_key_avm_burstcount = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_retval_01_obs_key_to_virtual_key_avm_byteenable = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,15)
    assign out_retval_01_obs_key_to_virtual_key_avm_enable = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_retval_01_obs_key_to_virtual_key_avm_read = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,17)
    assign out_retval_01_obs_key_to_virtual_key_avm_write = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,18)
    assign out_retval_01_obs_key_to_virtual_key_avm_writedata = i_sfc_logic_s_c1_in_wt_entry_obs_key_to_virtual_keys_c1_enter_obs_key_to_virtual_key0_aunroll_x_out_retval_01_obs_key_to_virtual_key_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@23
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_obs_key_to_virtual_keys_c1_exit_obs_key_to_virtual_key1_aunroll_x_out_valid_out;

endmodule
