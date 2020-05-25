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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000002Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000002Z_xmlchecklanguageid0 (
    input wire [0:0] in_intel_reserved_ffwd_19_0,
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_22_0,
    input wire [63:0] in_intel_reserved_ffwd_27_0,
    input wire [7:0] in_intel_reserved_ffwd_28_0,
    input wire [0:0] in_intel_reserved_ffwd_29_0,
    input wire [0:0] in_intel_reserved_ffwd_30_0,
    input wire [0:0] in_intel_reserved_ffwd_31_0,
    input wire [0:0] in_intel_reserved_ffwd_32_0,
    input wire [0:0] in_intel_reserved_ffwd_34_0,
    input wire [0:0] in_intel_reserved_ffwd_36_0,
    input wire [63:0] in_intel_reserved_ffwd_37_0,
    input wire [7:0] in_intel_reserved_ffwd_38_0,
    input wire [0:0] in_intel_reserved_ffwd_39_0,
    input wire [0:0] in_intel_reserved_ffwd_40_0,
    input wire [0:0] in_intel_reserved_ffwd_41_0,
    input wire [63:0] in_intel_reserved_ffwd_44_0,
    input wire [7:0] in_intel_reserved_ffwd_45_0,
    input wire [63:0] in_lm54627_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm54627_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm7426_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm7426_xmlCheckLanguageID_avm_writeack,
    input wire [63:0] in_lm9225_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm9225_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    output wire [63:0] out_intel_reserved_ffwd_46_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [7:0] out_intel_reserved_ffwd_47_0,
    output wire [0:0] out_intel_reserved_ffwd_48_0,
    output wire [0:0] out_intel_reserved_ffwd_49_0,
    output wire [0:0] out_intel_reserved_ffwd_50_0,
    output wire [0:0] out_intel_reserved_ffwd_51_0,
    output wire [0:0] out_intel_reserved_ffwd_52_0,
    output wire [63:0] out_intel_reserved_ffwd_53_0,
    output wire [7:0] out_intel_reserved_ffwd_54_0,
    output wire [0:0] out_intel_reserved_ffwd_55_0,
    output wire [0:0] out_intel_reserved_ffwd_56_0,
    output wire [0:0] out_intel_reserved_ffwd_57_0,
    output wire [63:0] out_intel_reserved_ffwd_58_0,
    output wire [0:0] out_intel_reserved_ffwd_59_0,
    output wire [63:0] out_intel_reserved_ffwd_60_0,
    output wire [0:0] out_intel_reserved_ffwd_61_0,
    output wire [0:0] out_intel_reserved_ffwd_62_0,
    output wire [0:0] out_intel_reserved_ffwd_63_0,
    output wire [0:0] out_intel_reserved_ffwd_64_0,
    output wire [0:0] out_intel_reserved_ffwd_65_0,
    output wire [63:0] out_lm54627_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm54627_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm54627_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm54627_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm7426_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm7426_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm7426_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm7426_xmlCheckLanguageID_avm_writedata,
    output wire [63:0] out_lm9225_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm9225_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm9225_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm9225_xmlCheckLanguageID_avm_writedata,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_xmlCheckLanguageID65_0_tpl,
    output wire [0:0] out_c0_exit236_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_46_0;
    wire [7:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_47_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_48_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_49_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_50_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_51_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_52_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_53_0;
    wire [7:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_54_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_55_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_56_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_57_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_58_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_59_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_60_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_61_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_62_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_63_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_64_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_65_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_writedata;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_writedata;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x(BLACKBOX,82)@27
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@30
    // out out_data_out_0_tpl@30
    xmlCheckLanguageID_i_llvm_fpga_sfc_exit_A000007Z_xmlchecklanguageid0 thei_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x(BLACKBOX,83)@0
    // out out_intel_reserved_ffwd_46_0@20000000
    // out out_intel_reserved_ffwd_47_0@20000000
    // out out_intel_reserved_ffwd_48_0@20000000
    // out out_intel_reserved_ffwd_49_0@20000000
    // out out_intel_reserved_ffwd_50_0@20000000
    // out out_intel_reserved_ffwd_51_0@20000000
    // out out_intel_reserved_ffwd_52_0@20000000
    // out out_intel_reserved_ffwd_53_0@20000000
    // out out_intel_reserved_ffwd_54_0@20000000
    // out out_intel_reserved_ffwd_55_0@20000000
    // out out_intel_reserved_ffwd_56_0@20000000
    // out out_intel_reserved_ffwd_57_0@20000000
    // out out_intel_reserved_ffwd_58_0@20000000
    // out out_intel_reserved_ffwd_59_0@20000000
    // out out_intel_reserved_ffwd_60_0@20000000
    // out out_intel_reserved_ffwd_61_0@20000000
    // out out_intel_reserved_ffwd_62_0@20000000
    // out out_intel_reserved_ffwd_63_0@20000000
    // out out_intel_reserved_ffwd_64_0@20000000
    // out out_intel_reserved_ffwd_65_0@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_address@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_read@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_write@20000000
    // out out_lm54627_xmlCheckLanguageID_avm_writedata@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_address@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_read@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_write@20000000
    // out out_lm7426_xmlCheckLanguageID_avm_writedata@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_address@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_read@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_write@20000000
    // out out_lm9225_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_valid@27
    // out out_unnamed_xmlCheckLanguageID7@27
    // out out_unnamed_xmlCheckLanguageID109_0_tpl@27
    xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000007Z_xmlchecklanguageid0 thei_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(in_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(in_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_27_0(in_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(in_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(in_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_30_0(in_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(in_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(in_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_34_0(in_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_36_0(in_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(in_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(in_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(in_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_40_0(in_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(in_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_44_0(in_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(in_intel_reserved_ffwd_45_0),
        .in_lm54627_xmlCheckLanguageID_avm_readdata(in_lm54627_xmlCheckLanguageID_avm_readdata),
        .in_lm54627_xmlCheckLanguageID_avm_readdatavalid(in_lm54627_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm54627_xmlCheckLanguageID_avm_waitrequest(in_lm54627_xmlCheckLanguageID_avm_waitrequest),
        .in_lm54627_xmlCheckLanguageID_avm_writeack(in_lm54627_xmlCheckLanguageID_avm_writeack),
        .in_lm7426_xmlCheckLanguageID_avm_readdata(in_lm7426_xmlCheckLanguageID_avm_readdata),
        .in_lm7426_xmlCheckLanguageID_avm_readdatavalid(in_lm7426_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm7426_xmlCheckLanguageID_avm_waitrequest(in_lm7426_xmlCheckLanguageID_avm_waitrequest),
        .in_lm7426_xmlCheckLanguageID_avm_writeack(in_lm7426_xmlCheckLanguageID_avm_writeack),
        .in_lm9225_xmlCheckLanguageID_avm_readdata(in_lm9225_xmlCheckLanguageID_avm_readdata),
        .in_lm9225_xmlCheckLanguageID_avm_readdatavalid(in_lm9225_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm9225_xmlCheckLanguageID_avm_waitrequest(in_lm9225_xmlCheckLanguageID_avm_waitrequest),
        .in_lm9225_xmlCheckLanguageID_avm_writeack(in_lm9225_xmlCheckLanguageID_avm_writeack),
        .out_intel_reserved_ffwd_46_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_50_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_60_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_65_0),
        .out_lm54627_xmlCheckLanguageID_avm_address(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_address),
        .out_lm54627_xmlCheckLanguageID_avm_burstcount(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_burstcount),
        .out_lm54627_xmlCheckLanguageID_avm_byteenable(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_byteenable),
        .out_lm54627_xmlCheckLanguageID_avm_enable(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_enable),
        .out_lm54627_xmlCheckLanguageID_avm_read(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_read),
        .out_lm54627_xmlCheckLanguageID_avm_write(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_write),
        .out_lm54627_xmlCheckLanguageID_avm_writedata(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_writedata),
        .out_lm7426_xmlCheckLanguageID_avm_address(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_address),
        .out_lm7426_xmlCheckLanguageID_avm_burstcount(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_burstcount),
        .out_lm7426_xmlCheckLanguageID_avm_byteenable(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_byteenable),
        .out_lm7426_xmlCheckLanguageID_avm_enable(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_enable),
        .out_lm7426_xmlCheckLanguageID_avm_read(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_read),
        .out_lm7426_xmlCheckLanguageID_avm_write(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_write),
        .out_lm7426_xmlCheckLanguageID_avm_writedata(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_writedata),
        .out_lm9225_xmlCheckLanguageID_avm_address(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_address),
        .out_lm9225_xmlCheckLanguageID_avm_burstcount(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_burstcount),
        .out_lm9225_xmlCheckLanguageID_avm_byteenable(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_byteenable),
        .out_lm9225_xmlCheckLanguageID_avm_enable(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_enable),
        .out_lm9225_xmlCheckLanguageID_avm_read(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_read),
        .out_lm9225_xmlCheckLanguageID_avm_write(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_write),
        .out_lm9225_xmlCheckLanguageID_avm_writedata(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .out_unnamed_xmlCheckLanguageID7(),
        .out_unnamed_xmlCheckLanguageID109_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,39)
    assign out_intel_reserved_ffwd_46_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_46_0;

    // sync_out(GPOUT,41)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,42)
    assign out_intel_reserved_ffwd_47_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_47_0;

    // dupName_1_regfree_osync_x(GPOUT,43)
    assign out_intel_reserved_ffwd_48_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_48_0;

    // dupName_2_regfree_osync_x(GPOUT,44)
    assign out_intel_reserved_ffwd_49_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_49_0;

    // dupName_3_regfree_osync_x(GPOUT,45)
    assign out_intel_reserved_ffwd_50_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_50_0;

    // dupName_4_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_51_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_51_0;

    // dupName_5_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_52_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_52_0;

    // dupName_6_regfree_osync_x(GPOUT,48)
    assign out_intel_reserved_ffwd_53_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_53_0;

    // dupName_7_regfree_osync_x(GPOUT,49)
    assign out_intel_reserved_ffwd_54_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_54_0;

    // dupName_8_regfree_osync_x(GPOUT,50)
    assign out_intel_reserved_ffwd_55_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_55_0;

    // dupName_9_regfree_osync_x(GPOUT,51)
    assign out_intel_reserved_ffwd_56_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_56_0;

    // dupName_10_regfree_osync_x(GPOUT,52)
    assign out_intel_reserved_ffwd_57_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_57_0;

    // dupName_11_regfree_osync_x(GPOUT,53)
    assign out_intel_reserved_ffwd_58_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_58_0;

    // dupName_12_regfree_osync_x(GPOUT,54)
    assign out_intel_reserved_ffwd_59_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_59_0;

    // dupName_13_regfree_osync_x(GPOUT,55)
    assign out_intel_reserved_ffwd_60_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_60_0;

    // dupName_14_regfree_osync_x(GPOUT,56)
    assign out_intel_reserved_ffwd_61_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_61_0;

    // dupName_15_regfree_osync_x(GPOUT,57)
    assign out_intel_reserved_ffwd_62_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_62_0;

    // dupName_16_regfree_osync_x(GPOUT,58)
    assign out_intel_reserved_ffwd_63_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_63_0;

    // dupName_17_regfree_osync_x(GPOUT,59)
    assign out_intel_reserved_ffwd_64_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_64_0;

    // dupName_18_regfree_osync_x(GPOUT,60)
    assign out_intel_reserved_ffwd_65_0 = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_65_0;

    // dupName_19_regfree_osync_x(GPOUT,61)
    assign out_lm54627_xmlCheckLanguageID_avm_address = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_address;

    // dupName_20_regfree_osync_x(GPOUT,62)
    assign out_lm54627_xmlCheckLanguageID_avm_burstcount = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_burstcount;

    // dupName_21_regfree_osync_x(GPOUT,63)
    assign out_lm54627_xmlCheckLanguageID_avm_byteenable = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_byteenable;

    // dupName_22_regfree_osync_x(GPOUT,64)
    assign out_lm54627_xmlCheckLanguageID_avm_enable = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_enable;

    // dupName_23_regfree_osync_x(GPOUT,65)
    assign out_lm54627_xmlCheckLanguageID_avm_read = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_read;

    // dupName_24_regfree_osync_x(GPOUT,66)
    assign out_lm54627_xmlCheckLanguageID_avm_write = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_write;

    // dupName_25_regfree_osync_x(GPOUT,67)
    assign out_lm54627_xmlCheckLanguageID_avm_writedata = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm54627_xmlCheckLanguageID_avm_writedata;

    // dupName_26_regfree_osync_x(GPOUT,68)
    assign out_lm7426_xmlCheckLanguageID_avm_address = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_address;

    // dupName_27_regfree_osync_x(GPOUT,69)
    assign out_lm7426_xmlCheckLanguageID_avm_burstcount = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_burstcount;

    // dupName_28_regfree_osync_x(GPOUT,70)
    assign out_lm7426_xmlCheckLanguageID_avm_byteenable = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_byteenable;

    // dupName_29_regfree_osync_x(GPOUT,71)
    assign out_lm7426_xmlCheckLanguageID_avm_enable = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_enable;

    // dupName_30_regfree_osync_x(GPOUT,72)
    assign out_lm7426_xmlCheckLanguageID_avm_read = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_read;

    // dupName_31_regfree_osync_x(GPOUT,73)
    assign out_lm7426_xmlCheckLanguageID_avm_write = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_write;

    // dupName_32_regfree_osync_x(GPOUT,74)
    assign out_lm7426_xmlCheckLanguageID_avm_writedata = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm7426_xmlCheckLanguageID_avm_writedata;

    // dupName_33_regfree_osync_x(GPOUT,75)
    assign out_lm9225_xmlCheckLanguageID_avm_address = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_address;

    // dupName_34_regfree_osync_x(GPOUT,76)
    assign out_lm9225_xmlCheckLanguageID_avm_burstcount = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_burstcount;

    // dupName_35_regfree_osync_x(GPOUT,77)
    assign out_lm9225_xmlCheckLanguageID_avm_byteenable = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_byteenable;

    // dupName_36_regfree_osync_x(GPOUT,78)
    assign out_lm9225_xmlCheckLanguageID_avm_enable = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_enable;

    // dupName_37_regfree_osync_x(GPOUT,79)
    assign out_lm9225_xmlCheckLanguageID_avm_read = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_read;

    // dupName_38_regfree_osync_x(GPOUT,80)
    assign out_lm9225_xmlCheckLanguageID_avm_write = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_write;

    // dupName_39_regfree_osync_x(GPOUT,81)
    assign out_lm9225_xmlCheckLanguageID_avm_writedata = i_sfc_logic_s_c0_in_while_end197_loopexit_xmlchecklanguageids_c0_enter235_xmlchecklanguageid0_aunroll_x_out_lm9225_xmlCheckLanguageID_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,85)@30
    assign out_c0_exit236_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_while_end197_loopexit_xmlchecklanguageids_c0_exit236_xmlchecklanguageid1_aunroll_x_out_valid_out;

endmodule
