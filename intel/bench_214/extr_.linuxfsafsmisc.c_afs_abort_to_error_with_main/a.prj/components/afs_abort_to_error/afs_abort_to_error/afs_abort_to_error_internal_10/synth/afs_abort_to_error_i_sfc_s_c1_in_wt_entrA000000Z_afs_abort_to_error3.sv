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

// SystemVerilog created from afs_abort_to_error_i_sfc_s_c1_in_wt_entrA000000Z_afs_abort_to_error3
// SystemVerilog created on Sun May 24 22:37:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module afs_abort_to_error_i_sfc_s_c1_in_wt_entrA000000Z_afs_abort_to_error3 (
    input wire [0:0] in_flush,
    input wire [63:0] in_pn1_afs_abort_to_error_avm_readdata,
    input wire [0:0] in_pn1_afs_abort_to_error_avm_readdatavalid,
    input wire [0:0] in_pn1_afs_abort_to_error_avm_waitrequest,
    input wire [0:0] in_pn1_afs_abort_to_error_avm_writeack,
    output wire [63:0] out_pn1_afs_abort_to_error_avm_address,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_burstcount,
    output wire [7:0] out_pn1_afs_abort_to_error_avm_byteenable,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_enable,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_read,
    output wire [0:0] out_pn1_afs_abort_to_error_avm_write,
    output wire [63:0] out_pn1_afs_abort_to_error_avm_writedata,
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
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_data_out_0_tpl;
    wire [31:0] i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_o_valid;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_address;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_burstcount;
    wire [7:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_enable;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_read;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_write;
    wire [63:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_writedata;
    wire [0:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_c1_exi1_0_tpl;
    wire [31:0] i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_c1_exi1_1_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x(BLACKBOX,19)@14
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@17
    // out out_data_out_0_tpl@17
    // out out_data_out_1_tpl@17
    afs_abort_to_error_i_llvm_fpga_sfc_exit_A000001Z_afs_abort_to_error0 thei_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_c1_exi1_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_c1_exi1_1_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x(BLACKBOX,20)@1
    // out out_o_valid@14
    // out out_pn1_afs_abort_to_error_avm_address@20000000
    // out out_pn1_afs_abort_to_error_avm_burstcount@20000000
    // out out_pn1_afs_abort_to_error_avm_byteenable@20000000
    // out out_pn1_afs_abort_to_error_avm_enable@20000000
    // out out_pn1_afs_abort_to_error_avm_read@20000000
    // out out_pn1_afs_abort_to_error_avm_write@20000000
    // out out_pn1_afs_abort_to_error_avm_writedata@20000000
    // out out_unnamed_afs_abort_to_error1@14
    // out out_c1_exi1_0_tpl@14
    // out out_c1_exi1_1_tpl@14
    afs_abort_to_error_i_sfc_logic_s_c1_in_wA000000Z_afs_abort_to_error0 thei_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_pn1_afs_abort_to_error_avm_readdata(in_pn1_afs_abort_to_error_avm_readdata),
        .in_pn1_afs_abort_to_error_avm_readdatavalid(in_pn1_afs_abort_to_error_avm_readdatavalid),
        .in_pn1_afs_abort_to_error_avm_waitrequest(in_pn1_afs_abort_to_error_avm_waitrequest),
        .in_pn1_afs_abort_to_error_avm_writeack(in_pn1_afs_abort_to_error_avm_writeack),
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
        .out_o_valid(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_o_valid),
        .out_pn1_afs_abort_to_error_avm_address(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_address),
        .out_pn1_afs_abort_to_error_avm_burstcount(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_burstcount),
        .out_pn1_afs_abort_to_error_avm_byteenable(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_byteenable),
        .out_pn1_afs_abort_to_error_avm_enable(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_enable),
        .out_pn1_afs_abort_to_error_avm_read(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_read),
        .out_pn1_afs_abort_to_error_avm_write(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_write),
        .out_pn1_afs_abort_to_error_avm_writedata(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_writedata),
        .out_unnamed_afs_abort_to_error1(),
        .out_c1_exi1_0_tpl(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_c1_exi1_0_tpl),
        .out_c1_exi1_1_tpl(i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_c1_exi1_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,10)
    assign out_pn1_afs_abort_to_error_avm_address = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_address;

    // sync_out(GPOUT,12)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,13)
    assign out_pn1_afs_abort_to_error_avm_burstcount = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_burstcount;

    // dupName_1_regfree_osync_x(GPOUT,14)
    assign out_pn1_afs_abort_to_error_avm_byteenable = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_byteenable;

    // dupName_2_regfree_osync_x(GPOUT,15)
    assign out_pn1_afs_abort_to_error_avm_enable = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_enable;

    // dupName_3_regfree_osync_x(GPOUT,16)
    assign out_pn1_afs_abort_to_error_avm_read = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_read;

    // dupName_4_regfree_osync_x(GPOUT,17)
    assign out_pn1_afs_abort_to_error_avm_write = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_write;

    // dupName_5_regfree_osync_x(GPOUT,18)
    assign out_pn1_afs_abort_to_error_avm_writedata = i_sfc_logic_s_c1_in_wt_entry_afs_abort_to_errors_c1_enter_afs_abort_to_error0_aunroll_x_out_pn1_afs_abort_to_error_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,22)@17
    assign out_c1_exit_0_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_data_out_0_tpl;
    assign out_c1_exit_1_tpl = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_data_out_1_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c1_out_wt_entry_afs_abort_to_errors_c1_exit_afs_abort_to_error1_aunroll_x_out_valid_out;

endmodule
