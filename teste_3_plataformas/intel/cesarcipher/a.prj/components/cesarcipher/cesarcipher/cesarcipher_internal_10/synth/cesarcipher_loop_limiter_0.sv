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

// SystemVerilog created from cesarcipher_loop_limiter_0
// SystemVerilog created on Mon Apr  6 10:27:12 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_loop_limiter_0 (
    input wire [0:0] in_i_stall,
    input wire [0:0] in_i_stall_exit,
    input wire [0:0] in_i_valid,
    input wire [0:0] in_i_valid_exit,
    output wire [0:0] out_o_stall,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] limiter_i_stall;
    wire limiter_i_stall_bitsignaltemp;
    wire [0:0] limiter_i_stall_exit;
    wire limiter_i_stall_exit_bitsignaltemp;
    wire [0:0] limiter_i_valid;
    wire limiter_i_valid_bitsignaltemp;
    wire [0:0] limiter_i_valid_exit;
    wire limiter_i_valid_exit_bitsignaltemp;
    wire [0:0] limiter_o_stall;
    wire limiter_o_stall_bitsignaltemp;
    wire [0:0] limiter_o_valid;
    wire limiter_o_valid_bitsignaltemp;


    // limiter(EXTIFACE,6)
    assign limiter_i_stall = in_i_stall;
    assign limiter_i_stall_exit = in_i_stall_exit;
    assign limiter_i_valid = in_i_valid;
    assign limiter_i_valid_exit = in_i_valid_exit;
    assign limiter_i_stall_bitsignaltemp = limiter_i_stall[0];
    assign limiter_i_stall_exit_bitsignaltemp = limiter_i_stall_exit[0];
    assign limiter_i_valid_bitsignaltemp = limiter_i_valid[0];
    assign limiter_i_valid_exit_bitsignaltemp = limiter_i_valid_exit[0];
    assign limiter_o_stall[0] = limiter_o_stall_bitsignaltemp;
    assign limiter_o_valid[0] = limiter_o_valid_bitsignaltemp;
    acl_loop_limiter #(
        .ASYNC_RESET(1),
        .ENTRY_WIDTH(1),
        .EXIT_WIDTH(1),
        .SYNCHRONIZE_RESET(0),
        .THRESHOLD(1),
        .THRESHOLD_NO_DELAY(0)
    ) thelimiter (
        .i_stall(limiter_i_stall_bitsignaltemp),
        .i_stall_exit(limiter_i_stall_exit_bitsignaltemp),
        .i_valid(limiter_i_valid_bitsignaltemp),
        .i_valid_exit(limiter_i_valid_exit_bitsignaltemp),
        .o_stall(limiter_o_stall_bitsignaltemp),
        .o_valid(limiter_o_valid_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_o_stall(GPOUT,7)
    assign out_o_stall = limiter_o_stall;

    // out_o_valid(GPOUT,8)
    assign out_o_valid = limiter_o_valid;

endmodule
