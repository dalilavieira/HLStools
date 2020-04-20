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

// SystemVerilog created from kmeans_B14_merge
// SystemVerilog created on Sun Apr 19 22:13:38 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kmeans_B14_merge (
    input wire [0:0] in_c0_exe1025913_0,
    input wire [31:0] in_c0_exe22513_0,
    input wire [15:0] in_c0_exe42534_0,
    input wire [0:0] in_c0_exe52547_0,
    input wire [0:0] in_c0_exe62559_0,
    input wire [0:0] in_c0_exe725610_0,
    input wire [15:0] in_c0_exe825711_0,
    input wire [0:0] in_c0_exe925812_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1025913,
    output wire [31:0] out_c0_exe22513,
    output wire [15:0] out_c0_exe42534,
    output wire [0:0] out_c0_exe52547,
    output wire [0:0] out_c0_exe62559,
    output wire [0:0] out_c0_exe725610,
    output wire [15:0] out_c0_exe825711,
    output wire [0:0] out_c0_exe925812,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1025913(GPOUT,12)
    assign out_c0_exe1025913 = in_c0_exe1025913_0;

    // out_c0_exe22513(GPOUT,13)
    assign out_c0_exe22513 = in_c0_exe22513_0;

    // out_c0_exe42534(GPOUT,14)
    assign out_c0_exe42534 = in_c0_exe42534_0;

    // out_c0_exe52547(GPOUT,15)
    assign out_c0_exe52547 = in_c0_exe52547_0;

    // out_c0_exe62559(GPOUT,16)
    assign out_c0_exe62559 = in_c0_exe62559_0;

    // out_c0_exe725610(GPOUT,17)
    assign out_c0_exe725610 = in_c0_exe725610_0;

    // out_c0_exe825711(GPOUT,18)
    assign out_c0_exe825711 = in_c0_exe825711_0;

    // out_c0_exe925812(GPOUT,19)
    assign out_c0_exe925812 = in_c0_exe925812_0;

    // stall_out(LOGICAL,22)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,21)
    assign out_valid_out = in_valid_in_0;

endmodule
