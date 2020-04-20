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

// SystemVerilog created from poly8_i_sfc_s_c0_in_for_body17_s_c0_enter825_poly81
// SystemVerilog created on Sun Apr 19 21:29:49 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module poly8_i_sfc_s_c0_in_for_body17_s_c0_enter825_poly81 (
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [15:0] in_unnamed_poly87_poly8_avm_readdata,
    input wire [0:0] in_unnamed_poly87_poly8_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly87_poly8_avm_waitrequest,
    input wire [0:0] in_unnamed_poly87_poly8_avm_writeack,
    input wire [15:0] in_unnamed_poly88_poly8_avm_readdata,
    input wire [0:0] in_unnamed_poly88_poly8_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly88_poly8_avm_waitrequest,
    input wire [0:0] in_unnamed_poly88_poly8_avm_writeack,
    input wire [15:0] in_unnamed_poly89_poly8_avm_readdata,
    input wire [0:0] in_unnamed_poly89_poly8_avm_readdatavalid,
    input wire [0:0] in_unnamed_poly89_poly8_avm_waitrequest,
    input wire [0:0] in_unnamed_poly89_poly8_avm_writeack,
    input wire [0:0] in_flush,
    input wire [15:0] in_memdep_4_poly8_avm_readdata,
    input wire [0:0] in_memdep_4_poly8_avm_readdatavalid,
    input wire [0:0] in_memdep_4_poly8_avm_waitrequest,
    input wire [0:0] in_memdep_4_poly8_avm_writeack,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out,
    output wire [31:0] out_memdep_4_poly8_avm_address,
    output wire [0:0] out_memdep_4_poly8_avm_burstcount,
    output wire [1:0] out_memdep_4_poly8_avm_byteenable,
    output wire [0:0] out_memdep_4_poly8_avm_enable,
    output wire [0:0] out_memdep_4_poly8_avm_read,
    output wire [0:0] out_memdep_4_poly8_avm_write,
    output wire [15:0] out_memdep_4_poly8_avm_writedata,
    output wire [31:0] out_unnamed_poly87_poly8_avm_address,
    output wire [0:0] out_unnamed_poly87_poly8_avm_burstcount,
    output wire [1:0] out_unnamed_poly87_poly8_avm_byteenable,
    output wire [0:0] out_unnamed_poly87_poly8_avm_enable,
    output wire [0:0] out_unnamed_poly87_poly8_avm_read,
    output wire [0:0] out_unnamed_poly87_poly8_avm_write,
    output wire [15:0] out_unnamed_poly87_poly8_avm_writedata,
    output wire [31:0] out_unnamed_poly88_poly8_avm_address,
    output wire [0:0] out_unnamed_poly88_poly8_avm_burstcount,
    output wire [1:0] out_unnamed_poly88_poly8_avm_byteenable,
    output wire [0:0] out_unnamed_poly88_poly8_avm_enable,
    output wire [0:0] out_unnamed_poly88_poly8_avm_read,
    output wire [0:0] out_unnamed_poly88_poly8_avm_write,
    output wire [15:0] out_unnamed_poly88_poly8_avm_writedata,
    output wire [31:0] out_unnamed_poly89_poly8_avm_address,
    output wire [0:0] out_unnamed_poly89_poly8_avm_burstcount,
    output wire [1:0] out_unnamed_poly89_poly8_avm_byteenable,
    output wire [0:0] out_unnamed_poly89_poly8_avm_enable,
    output wire [0:0] out_unnamed_poly89_poly8_avm_read,
    output wire [0:0] out_unnamed_poly89_poly8_avm_write,
    output wire [15:0] out_unnamed_poly89_poly8_avm_writedata,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [0:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit86_0_tpl,
    output wire [0:0] out_c0_exit86_1_tpl,
    output wire [0:0] out_c0_exit86_2_tpl,
    output wire [0:0] out_c0_exit86_3_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_1_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_3_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_burstcount;
    wire [1:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_write;
    wire [15:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_burstcount;
    wire [1:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_write;
    wire [15:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_burstcount;
    wire [1:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_write;
    wire [15:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_writedata;
    wire [31:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_address;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_burstcount;
    wire [1:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_byteenable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_enable;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_read;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_write;
    wire [15:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_writedata;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_0_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_1_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_2_tpl;
    wire [0:0] i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_3_tpl;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x(BLACKBOX,56)@17
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@20
    // out out_data_out_0_tpl@20
    // out out_data_out_1_tpl@20
    // out out_data_out_2_tpl@20
    // out out_data_out_3_tpl@20
    poly8_i_llvm_fpga_sfc_exit_s_c0_out_for_body17_s_c0_exit86_poly80 thei_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x (
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_0_tpl),
        .in_data_in_1_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_1_tpl),
        .in_data_in_2_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_2_tpl),
        .in_data_in_3_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_3_tpl),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,4)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,3)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x(BLACKBOX,57)@1
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out@20000000
    // out out_memdep_4_poly8_avm_address@20000000
    // out out_memdep_4_poly8_avm_burstcount@20000000
    // out out_memdep_4_poly8_avm_byteenable@20000000
    // out out_memdep_4_poly8_avm_enable@20000000
    // out out_memdep_4_poly8_avm_read@20000000
    // out out_memdep_4_poly8_avm_write@20000000
    // out out_memdep_4_poly8_avm_writedata@20000000
    // out out_o_valid@17
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_poly81@17
    // out out_unnamed_poly87_poly8_avm_address@20000000
    // out out_unnamed_poly87_poly8_avm_burstcount@20000000
    // out out_unnamed_poly87_poly8_avm_byteenable@20000000
    // out out_unnamed_poly87_poly8_avm_enable@20000000
    // out out_unnamed_poly87_poly8_avm_read@20000000
    // out out_unnamed_poly87_poly8_avm_write@20000000
    // out out_unnamed_poly87_poly8_avm_writedata@20000000
    // out out_unnamed_poly88_poly8_avm_address@20000000
    // out out_unnamed_poly88_poly8_avm_burstcount@20000000
    // out out_unnamed_poly88_poly8_avm_byteenable@20000000
    // out out_unnamed_poly88_poly8_avm_enable@20000000
    // out out_unnamed_poly88_poly8_avm_read@20000000
    // out out_unnamed_poly88_poly8_avm_write@20000000
    // out out_unnamed_poly88_poly8_avm_writedata@20000000
    // out out_unnamed_poly89_poly8_avm_address@20000000
    // out out_unnamed_poly89_poly8_avm_burstcount@20000000
    // out out_unnamed_poly89_poly8_avm_byteenable@20000000
    // out out_unnamed_poly89_poly8_avm_enable@20000000
    // out out_unnamed_poly89_poly8_avm_read@20000000
    // out out_unnamed_poly89_poly8_avm_write@20000000
    // out out_unnamed_poly89_poly8_avm_writedata@20000000
    // out out_c0_exi3_0_tpl@17
    // out out_c0_exi3_1_tpl@17
    // out out_c0_exi3_2_tpl@17
    // out out_c0_exi3_3_tpl@17
    poly8_i_sfc_logic_s_c0_in_for_body17_s_c0_enter825_poly80 thei_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x (
        .in_flush(in_flush),
        .in_i_valid(input_accepted_and_q),
        .in_memdep_4_poly8_avm_readdata(in_memdep_4_poly8_avm_readdata),
        .in_memdep_4_poly8_avm_readdatavalid(in_memdep_4_poly8_avm_readdatavalid),
        .in_memdep_4_poly8_avm_waitrequest(in_memdep_4_poly8_avm_waitrequest),
        .in_memdep_4_poly8_avm_writeack(in_memdep_4_poly8_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_poly87_poly8_avm_readdata(in_unnamed_poly87_poly8_avm_readdata),
        .in_unnamed_poly87_poly8_avm_readdatavalid(in_unnamed_poly87_poly8_avm_readdatavalid),
        .in_unnamed_poly87_poly8_avm_waitrequest(in_unnamed_poly87_poly8_avm_waitrequest),
        .in_unnamed_poly87_poly8_avm_writeack(in_unnamed_poly87_poly8_avm_writeack),
        .in_unnamed_poly88_poly8_avm_readdata(in_unnamed_poly88_poly8_avm_readdata),
        .in_unnamed_poly88_poly8_avm_readdatavalid(in_unnamed_poly88_poly8_avm_readdatavalid),
        .in_unnamed_poly88_poly8_avm_waitrequest(in_unnamed_poly88_poly8_avm_waitrequest),
        .in_unnamed_poly88_poly8_avm_writeack(in_unnamed_poly88_poly8_avm_writeack),
        .in_unnamed_poly89_poly8_avm_readdata(in_unnamed_poly89_poly8_avm_readdata),
        .in_unnamed_poly89_poly8_avm_readdatavalid(in_unnamed_poly89_poly8_avm_readdatavalid),
        .in_unnamed_poly89_poly8_avm_waitrequest(in_unnamed_poly89_poly8_avm_waitrequest),
        .in_unnamed_poly89_poly8_avm_writeack(in_unnamed_poly89_poly8_avm_writeack),
        .in_c0_eni2_0_tpl(in_c0_eni2_0_tpl),
        .in_c0_eni2_1_tpl(in_c0_eni2_1_tpl),
        .in_c0_eni2_2_tpl(in_c0_eni2_2_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out),
        .out_memdep_4_poly8_avm_address(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_address),
        .out_memdep_4_poly8_avm_burstcount(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_burstcount),
        .out_memdep_4_poly8_avm_byteenable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_byteenable),
        .out_memdep_4_poly8_avm_enable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_enable),
        .out_memdep_4_poly8_avm_read(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_read),
        .out_memdep_4_poly8_avm_write(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_write),
        .out_memdep_4_poly8_avm_writedata(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_writedata),
        .out_o_valid(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_poly81(),
        .out_unnamed_poly87_poly8_avm_address(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_address),
        .out_unnamed_poly87_poly8_avm_burstcount(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_burstcount),
        .out_unnamed_poly87_poly8_avm_byteenable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_byteenable),
        .out_unnamed_poly87_poly8_avm_enable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_enable),
        .out_unnamed_poly87_poly8_avm_read(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_read),
        .out_unnamed_poly87_poly8_avm_write(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_write),
        .out_unnamed_poly87_poly8_avm_writedata(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_writedata),
        .out_unnamed_poly88_poly8_avm_address(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_address),
        .out_unnamed_poly88_poly8_avm_burstcount(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_burstcount),
        .out_unnamed_poly88_poly8_avm_byteenable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_byteenable),
        .out_unnamed_poly88_poly8_avm_enable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_enable),
        .out_unnamed_poly88_poly8_avm_read(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_read),
        .out_unnamed_poly88_poly8_avm_write(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_write),
        .out_unnamed_poly88_poly8_avm_writedata(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_writedata),
        .out_unnamed_poly89_poly8_avm_address(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_address),
        .out_unnamed_poly89_poly8_avm_burstcount(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_burstcount),
        .out_unnamed_poly89_poly8_avm_byteenable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_byteenable),
        .out_unnamed_poly89_poly8_avm_enable(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_enable),
        .out_unnamed_poly89_poly8_avm_read(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_read),
        .out_unnamed_poly89_poly8_avm_write(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_write),
        .out_unnamed_poly89_poly8_avm_writedata(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_writedata),
        .out_c0_exi3_0_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_0_tpl),
        .out_c0_exi3_1_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_1_tpl),
        .out_c0_exi3_2_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_2_tpl),
        .out_c0_exi3_3_tpl(i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_c0_exi3_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // pipeline_valid_out_sync(GPOUT,6)
    assign out_pipeline_valid_out = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_stall_out;

    // sync_out(GPOUT,26)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_stall_entry;

    // dupName_0_regfree_osync_x(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_poly86_exiting_valid_out;

    // dupName_1_regfree_osync_x(GPOUT,28)
    assign out_memdep_4_poly8_avm_address = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_address;

    // dupName_2_regfree_osync_x(GPOUT,29)
    assign out_memdep_4_poly8_avm_burstcount = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_burstcount;

    // dupName_3_regfree_osync_x(GPOUT,30)
    assign out_memdep_4_poly8_avm_byteenable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_byteenable;

    // dupName_4_regfree_osync_x(GPOUT,31)
    assign out_memdep_4_poly8_avm_enable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_enable;

    // dupName_5_regfree_osync_x(GPOUT,32)
    assign out_memdep_4_poly8_avm_read = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_read;

    // dupName_6_regfree_osync_x(GPOUT,33)
    assign out_memdep_4_poly8_avm_write = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_write;

    // dupName_7_regfree_osync_x(GPOUT,34)
    assign out_memdep_4_poly8_avm_writedata = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_memdep_4_poly8_avm_writedata;

    // dupName_8_regfree_osync_x(GPOUT,35)
    assign out_unnamed_poly87_poly8_avm_address = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_address;

    // dupName_9_regfree_osync_x(GPOUT,36)
    assign out_unnamed_poly87_poly8_avm_burstcount = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_burstcount;

    // dupName_10_regfree_osync_x(GPOUT,37)
    assign out_unnamed_poly87_poly8_avm_byteenable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_byteenable;

    // dupName_11_regfree_osync_x(GPOUT,38)
    assign out_unnamed_poly87_poly8_avm_enable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_enable;

    // dupName_12_regfree_osync_x(GPOUT,39)
    assign out_unnamed_poly87_poly8_avm_read = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_read;

    // dupName_13_regfree_osync_x(GPOUT,40)
    assign out_unnamed_poly87_poly8_avm_write = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_write;

    // dupName_14_regfree_osync_x(GPOUT,41)
    assign out_unnamed_poly87_poly8_avm_writedata = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly87_poly8_avm_writedata;

    // dupName_15_regfree_osync_x(GPOUT,42)
    assign out_unnamed_poly88_poly8_avm_address = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_address;

    // dupName_16_regfree_osync_x(GPOUT,43)
    assign out_unnamed_poly88_poly8_avm_burstcount = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_burstcount;

    // dupName_17_regfree_osync_x(GPOUT,44)
    assign out_unnamed_poly88_poly8_avm_byteenable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_byteenable;

    // dupName_18_regfree_osync_x(GPOUT,45)
    assign out_unnamed_poly88_poly8_avm_enable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_enable;

    // dupName_19_regfree_osync_x(GPOUT,46)
    assign out_unnamed_poly88_poly8_avm_read = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_read;

    // dupName_20_regfree_osync_x(GPOUT,47)
    assign out_unnamed_poly88_poly8_avm_write = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_write;

    // dupName_21_regfree_osync_x(GPOUT,48)
    assign out_unnamed_poly88_poly8_avm_writedata = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly88_poly8_avm_writedata;

    // dupName_22_regfree_osync_x(GPOUT,49)
    assign out_unnamed_poly89_poly8_avm_address = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_address;

    // dupName_23_regfree_osync_x(GPOUT,50)
    assign out_unnamed_poly89_poly8_avm_burstcount = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_burstcount;

    // dupName_24_regfree_osync_x(GPOUT,51)
    assign out_unnamed_poly89_poly8_avm_byteenable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_byteenable;

    // dupName_25_regfree_osync_x(GPOUT,52)
    assign out_unnamed_poly89_poly8_avm_enable = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_enable;

    // dupName_26_regfree_osync_x(GPOUT,53)
    assign out_unnamed_poly89_poly8_avm_read = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_read;

    // dupName_27_regfree_osync_x(GPOUT,54)
    assign out_unnamed_poly89_poly8_avm_write = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_write;

    // dupName_28_regfree_osync_x(GPOUT,55)
    assign out_unnamed_poly89_poly8_avm_writedata = i_sfc_logic_s_c0_in_for_body17_poly8s_c0_enter825_poly80_aunroll_x_out_unnamed_poly89_poly8_avm_writedata;

    // dupName_0_sync_out_aunroll_x(GPOUT,59)@20
    assign out_c0_exit86_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_0_tpl;
    assign out_c0_exit86_1_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_1_tpl;
    assign out_c0_exit86_2_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_2_tpl;
    assign out_c0_exit86_3_tpl = i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_data_out_3_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_for_body17_poly8s_c0_exit86_poly81_aunroll_x_out_valid_out;

endmodule
