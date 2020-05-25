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

// SystemVerilog created from claswp_i_llvm_fpga_sfc_exit_s_c0_out_forA000001Zlaswp1_full_detector
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_i_llvm_fpga_sfc_exit_s_c0_out_forA000001Zlaswp1_full_detector (
    output wire [0:0] out_full,
    output wire [0:0] out_throttle,
    input wire [0:0] in_dec_pipelined_thread,
    input wire [0:0] in_decrement,
    input wire [0:0] in_inc_pipelined_thread,
    input wire [0:0] in_increment,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_dec_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_dec_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement2;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement2_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_inc_pipelined_thread;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_inc_pipelined_thread_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_increment;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_increment_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_full;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_full_bitsignaltemp;
    wire [0:0] i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_throttle;
    wire i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_throttle_bitsignaltemp;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector(EXTIFACE,2)
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_dec_pipelined_thread = in_dec_pipelined_thread;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement = in_decrement;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement2 = GND_q;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_inc_pipelined_thread = in_inc_pipelined_thread;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_increment = in_increment;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_dec_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_dec_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement2_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement2[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_inc_pipelined_thread_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_inc_pipelined_thread[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_increment_bitsignaltemp = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_increment[0];
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_full[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_full_bitsignaltemp;
    assign i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_throttle[0] = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_throttle_bitsignaltemp;
    acl_full_detector #(
        .ALWAYS_THROTTLE(0),
        .SCHEDULEII(1),
        .WIDTH(3),
        .ASYNC_RESET(1),
        .EXTEND_RESET_STALL(0),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector (
        .dec_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_dec_pipelined_thread_bitsignaltemp),
        .decrement(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement_bitsignaltemp),
        .decrement2(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_decrement2_bitsignaltemp),
        .inc_pipelined_thread(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_inc_pipelined_thread_bitsignaltemp),
        .increment(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_increment_bitsignaltemp),
        .full(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_full_bitsignaltemp),
        .throttle(i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_throttle_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out(GPOUT,3)@20000000
    assign out_full = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_full;
    assign out_throttle = i_llvm_fpga_sfc_exit_s_c0_out_for_cond62_claswps_c0_exit270_claswp1_full_detector_throttle;

endmodule
