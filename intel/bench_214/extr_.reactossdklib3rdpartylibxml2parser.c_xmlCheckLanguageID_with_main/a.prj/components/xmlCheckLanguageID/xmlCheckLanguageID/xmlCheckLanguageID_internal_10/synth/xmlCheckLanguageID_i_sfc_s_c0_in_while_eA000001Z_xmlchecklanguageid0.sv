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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000001Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_s_c0_in_while_eA000001Z_xmlchecklanguageid0 (
    input wire [0:0] in_intel_reserved_ffwd_21_0,
    input wire [0:0] in_intel_reserved_ffwd_23_0,
    input wire [63:0] in_intel_reserved_ffwd_25_0,
    input wire [7:0] in_intel_reserved_ffwd_26_0,
    input wire [63:0] in_lm15523_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_readdatavalid,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm15523_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_13_0,
    input wire [0:0] in_intel_reserved_ffwd_14_0,
    input wire [7:0] in_intel_reserved_ffwd_20_0,
    output wire [63:0] out_intel_reserved_ffwd_27_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [7:0] out_intel_reserved_ffwd_28_0,
    output wire [0:0] out_intel_reserved_ffwd_29_0,
    output wire [0:0] out_intel_reserved_ffwd_30_0,
    output wire [0:0] out_intel_reserved_ffwd_31_0,
    output wire [0:0] out_intel_reserved_ffwd_32_0,
    output wire [0:0] out_intel_reserved_ffwd_33_0,
    output wire [0:0] out_intel_reserved_ffwd_34_0,
    output wire [0:0] out_intel_reserved_ffwd_35_0,
    output wire [0:0] out_intel_reserved_ffwd_36_0,
    output wire [63:0] out_intel_reserved_ffwd_37_0,
    output wire [7:0] out_intel_reserved_ffwd_38_0,
    output wire [0:0] out_intel_reserved_ffwd_39_0,
    output wire [0:0] out_intel_reserved_ffwd_40_0,
    output wire [0:0] out_intel_reserved_ffwd_41_0,
    output wire [63:0] out_intel_reserved_ffwd_42_0,
    output wire [0:0] out_intel_reserved_ffwd_43_0,
    output wire [63:0] out_lm15523_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_burstcount,
    output wire [7:0] out_lm15523_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm15523_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm15523_xmlCheckLanguageID_avm_writedata,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_unnamed_xmlCheckLanguageID40_0_tpl,
    output wire [0:0] out_c0_exit226_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_27_0;
    wire [7:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_28_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_29_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_30_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_31_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_32_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_33_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_34_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_35_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_36_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_37_0;
    wire [7:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_38_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_39_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_40_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_41_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_42_0;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_43_0;
    wire [63:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_write;
    wire [63:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x(BLACKBOX,43)@12
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@15
    // out out_data_out_0_tpl@15
    xmlCheckLanguageID_i_llvm_fpga_sfc_exit_A000005Z_xmlchecklanguageid0 thei_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x(BLACKBOX,44)@0
    // out out_intel_reserved_ffwd_27_0@20000000
    // out out_intel_reserved_ffwd_28_0@20000000
    // out out_intel_reserved_ffwd_29_0@20000000
    // out out_intel_reserved_ffwd_30_0@20000000
    // out out_intel_reserved_ffwd_31_0@20000000
    // out out_intel_reserved_ffwd_32_0@20000000
    // out out_intel_reserved_ffwd_33_0@20000000
    // out out_intel_reserved_ffwd_34_0@20000000
    // out out_intel_reserved_ffwd_35_0@20000000
    // out out_intel_reserved_ffwd_36_0@20000000
    // out out_intel_reserved_ffwd_37_0@20000000
    // out out_intel_reserved_ffwd_38_0@20000000
    // out out_intel_reserved_ffwd_39_0@20000000
    // out out_intel_reserved_ffwd_40_0@20000000
    // out out_intel_reserved_ffwd_41_0@20000000
    // out out_intel_reserved_ffwd_42_0@20000000
    // out out_intel_reserved_ffwd_43_0@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_address@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_read@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_write@20000000
    // out out_lm15523_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_valid@12
    // out out_unnamed_xmlCheckLanguageID7@12
    // out out_unnamed_xmlCheckLanguageID61_0_tpl@12
    xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000005Z_xmlchecklanguageid0 thei_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_intel_reserved_ffwd_13_0(in_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_14_0(in_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_20_0(in_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(in_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_23_0(in_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_25_0(in_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(in_intel_reserved_ffwd_26_0),
        .in_lm15523_xmlCheckLanguageID_avm_readdata(in_lm15523_xmlCheckLanguageID_avm_readdata),
        .in_lm15523_xmlCheckLanguageID_avm_readdatavalid(in_lm15523_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm15523_xmlCheckLanguageID_avm_waitrequest(in_lm15523_xmlCheckLanguageID_avm_waitrequest),
        .in_lm15523_xmlCheckLanguageID_avm_writeack(in_lm15523_xmlCheckLanguageID_avm_writeack),
        .out_intel_reserved_ffwd_27_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_30_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_40_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_43_0),
        .out_lm15523_xmlCheckLanguageID_avm_address(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_address),
        .out_lm15523_xmlCheckLanguageID_avm_burstcount(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_burstcount),
        .out_lm15523_xmlCheckLanguageID_avm_byteenable(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_byteenable),
        .out_lm15523_xmlCheckLanguageID_avm_enable(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_enable),
        .out_lm15523_xmlCheckLanguageID_avm_read(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_read),
        .out_lm15523_xmlCheckLanguageID_avm_write(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_write),
        .out_lm15523_xmlCheckLanguageID_avm_writedata(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_o_valid),
        .out_unnamed_xmlCheckLanguageID7(),
        .out_unnamed_xmlCheckLanguageID61_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,17)
    assign out_intel_reserved_ffwd_27_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_27_0;

    // sync_out(GPOUT,19)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,20)
    assign out_intel_reserved_ffwd_28_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_28_0;

    // dupName_1_regfree_osync_x(GPOUT,21)
    assign out_intel_reserved_ffwd_29_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_29_0;

    // dupName_2_regfree_osync_x(GPOUT,22)
    assign out_intel_reserved_ffwd_30_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_30_0;

    // dupName_3_regfree_osync_x(GPOUT,23)
    assign out_intel_reserved_ffwd_31_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_31_0;

    // dupName_4_regfree_osync_x(GPOUT,24)
    assign out_intel_reserved_ffwd_32_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_32_0;

    // dupName_5_regfree_osync_x(GPOUT,25)
    assign out_intel_reserved_ffwd_33_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_33_0;

    // dupName_6_regfree_osync_x(GPOUT,26)
    assign out_intel_reserved_ffwd_34_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_34_0;

    // dupName_7_regfree_osync_x(GPOUT,27)
    assign out_intel_reserved_ffwd_35_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_35_0;

    // dupName_8_regfree_osync_x(GPOUT,28)
    assign out_intel_reserved_ffwd_36_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_36_0;

    // dupName_9_regfree_osync_x(GPOUT,29)
    assign out_intel_reserved_ffwd_37_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_37_0;

    // dupName_10_regfree_osync_x(GPOUT,30)
    assign out_intel_reserved_ffwd_38_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_38_0;

    // dupName_11_regfree_osync_x(GPOUT,31)
    assign out_intel_reserved_ffwd_39_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_39_0;

    // dupName_12_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_40_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_40_0;

    // dupName_13_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_41_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_41_0;

    // dupName_14_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_42_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_42_0;

    // dupName_15_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_43_0 = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_intel_reserved_ffwd_43_0;

    // dupName_16_regfree_osync_x(GPOUT,36)
    assign out_lm15523_xmlCheckLanguageID_avm_address = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_address;

    // dupName_17_regfree_osync_x(GPOUT,37)
    assign out_lm15523_xmlCheckLanguageID_avm_burstcount = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_burstcount;

    // dupName_18_regfree_osync_x(GPOUT,38)
    assign out_lm15523_xmlCheckLanguageID_avm_byteenable = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_byteenable;

    // dupName_19_regfree_osync_x(GPOUT,39)
    assign out_lm15523_xmlCheckLanguageID_avm_enable = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_enable;

    // dupName_20_regfree_osync_x(GPOUT,40)
    assign out_lm15523_xmlCheckLanguageID_avm_read = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_read;

    // dupName_21_regfree_osync_x(GPOUT,41)
    assign out_lm15523_xmlCheckLanguageID_avm_write = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_write;

    // dupName_22_regfree_osync_x(GPOUT,42)
    assign out_lm15523_xmlCheckLanguageID_avm_writedata = i_sfc_logic_s_c0_in_while_end127_loopexit_xmlchecklanguageids_c0_enter225_xmlchecklanguageid0_aunroll_x_out_lm15523_xmlCheckLanguageID_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,46)@15
    assign out_c0_exit226_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_while_end127_loopexit_xmlchecklanguageids_c0_exit226_xmlchecklanguageid1_aunroll_x_out_valid_out;

endmodule
