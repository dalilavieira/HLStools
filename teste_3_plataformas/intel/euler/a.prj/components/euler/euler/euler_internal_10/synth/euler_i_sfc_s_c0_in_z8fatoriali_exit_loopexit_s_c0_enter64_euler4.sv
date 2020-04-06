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

// SystemVerilog created from euler_i_sfc_s_c0_in_z8fatoriali_exit_loopexit_s_c0_enter64_euler4
// SystemVerilog created on Mon Apr  6 11:17:07 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module euler_i_sfc_s_c0_in_z8fatoriali_exit_loopexit_s_c0_enter64_euler4 (
    output wire [63:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_c0_eni463_0_tpl,
    input wire [63:0] in_c0_eni463_1_tpl,
    input wire [0:0] in_c0_eni463_2_tpl,
    input wire [0:0] in_c0_eni463_3_tpl,
    input wire [0:0] in_c0_eni463_4_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_c0_exit69_0_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] input_accepted_and_q;
    wire [0:0] not_stall_out_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_stall_entry;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_valid_out;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_data_out_0_tpl;
    wire [63:0] i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x_out_o_valid;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x(BLACKBOX,9)@54
    // in in_mask_valid@20000000
    // in in_stall_in@20000000
    // out out_stall_entry@20000000
    // out out_valid_out@57
    // out out_data_out_0_tpl@57
    euler_i_llvm_fpga_sfc_exit_s_c0_out_z8faA000000Zt_s_c0_exit69_euler0 thei_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x (
        .in_dec_pipelined_thread(VCC_q),
        .in_inc_pipelined_thread(GND_q),
        .in_input_accepted(input_accepted_and_q),
        .in_mask_valid(GND_q),
        .in_stall_in(in_i_stall),
        .in_valid_in(i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x_out_o_valid),
        .in_data_in_0_tpl(GND_q),
        .out_stall_entry(i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_stall_entry),
        .out_valid_out(i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // not_stall_out(LOGICAL,5)
    assign not_stall_out_q = ~ (i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_stall_entry);

    // input_accepted_and(LOGICAL,4)
    assign input_accepted_and_q = in_i_valid & not_stall_out_q;

    // i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x(BLACKBOX,10)@0
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_o_valid@54
    // out out_unnamed_euler1@54
    // out out_unnamed_euler13_0_tpl@54
    euler_i_sfc_logic_s_c0_in_z8fatoriali_exA000000Z_s_c0_enter64_euler0 thei_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x (
        .in_i_valid(input_accepted_and_q),
        .in_c0_eni463_0_tpl(in_c0_eni463_0_tpl),
        .in_c0_eni463_1_tpl(in_c0_eni463_1_tpl),
        .in_c0_eni463_2_tpl(in_c0_eni463_2_tpl),
        .in_c0_eni463_3_tpl(in_c0_eni463_3_tpl),
        .in_c0_eni463_4_tpl(in_c0_eni463_4_tpl),
        .out_intel_reserved_ffwd_2_0(i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x_out_intel_reserved_ffwd_2_0),
        .out_o_valid(i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x_out_o_valid),
        .out_unnamed_euler1(),
        .out_unnamed_euler13_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_2_0 = i_sfc_logic_s_c0_in_z8fatoriali_exit_loopexit_eulers_c0_enter64_euler0_aunroll_x_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,8)@20000000
    assign out_o_stall = i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_stall_entry;

    // dupName_0_sync_out_aunroll_x(GPOUT,12)@57
    assign out_c0_exit69_0_tpl = i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_data_out_0_tpl;
    assign out_o_valid = i_llvm_fpga_sfc_exit_s_c0_out_z8fatoriali_exit_loopexit_eulers_c0_exit69_euler1_aunroll_x_out_valid_out;

endmodule
