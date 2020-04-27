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

// SystemVerilog created from sobel_filter_B8_merge
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_B8_merge (
    input wire [0:0] in_exitcond45161_pop32199_0,
    input wire [0:0] in_exitcond45161_pop32199_1,
    input wire [0:0] in_forked156157_pop31195_0,
    input wire [0:0] in_forked156157_pop31195_1,
    input wire [0:0] in_forked175_0,
    input wire [0:0] in_forked175_1,
    input wire [0:0] in_memdep_phi_pop27192_0,
    input wire [0:0] in_memdep_phi_pop27192_1,
    input wire [0:0] in_notcmp131168_pop33203_0,
    input wire [0:0] in_notcmp131168_pop33203_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond45161_pop32199,
    output wire [0:0] out_forked156157_pop31195,
    output wire [0:0] out_forked175,
    output wire [0:0] out_memdep_phi_pop27192,
    output wire [0:0] out_notcmp131168_pop33203,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond45161_pop32199_mux_s;
    reg [0:0] exitcond45161_pop32199_mux_q;
    wire [0:0] forked156157_pop31195_mux_s;
    reg [0:0] forked156157_pop31195_mux_q;
    wire [0:0] forked175_mux_s;
    reg [0:0] forked175_mux_q;
    wire [0:0] memdep_phi_pop27192_mux_s;
    reg [0:0] memdep_phi_pop27192_mux_q;
    wire [0:0] notcmp131168_pop33203_mux_s;
    reg [0:0] notcmp131168_pop33203_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond45161_pop32199_mux(MUX,2)
    assign exitcond45161_pop32199_mux_s = in_valid_in_0;
    always @(exitcond45161_pop32199_mux_s or in_exitcond45161_pop32199_1 or in_exitcond45161_pop32199_0)
    begin
        unique case (exitcond45161_pop32199_mux_s)
            1'b0 : exitcond45161_pop32199_mux_q = in_exitcond45161_pop32199_1;
            1'b1 : exitcond45161_pop32199_mux_q = in_exitcond45161_pop32199_0;
            default : exitcond45161_pop32199_mux_q = 1'b0;
        endcase
    end

    // out_exitcond45161_pop32199(GPOUT,20)
    assign out_exitcond45161_pop32199 = exitcond45161_pop32199_mux_q;

    // forked156157_pop31195_mux(MUX,3)
    assign forked156157_pop31195_mux_s = in_valid_in_0;
    always @(forked156157_pop31195_mux_s or in_forked156157_pop31195_1 or in_forked156157_pop31195_0)
    begin
        unique case (forked156157_pop31195_mux_s)
            1'b0 : forked156157_pop31195_mux_q = in_forked156157_pop31195_1;
            1'b1 : forked156157_pop31195_mux_q = in_forked156157_pop31195_0;
            default : forked156157_pop31195_mux_q = 1'b0;
        endcase
    end

    // out_forked156157_pop31195(GPOUT,21)
    assign out_forked156157_pop31195 = forked156157_pop31195_mux_q;

    // forked175_mux(MUX,4)
    assign forked175_mux_s = in_valid_in_0;
    always @(forked175_mux_s or in_forked175_1 or in_forked175_0)
    begin
        unique case (forked175_mux_s)
            1'b0 : forked175_mux_q = in_forked175_1;
            1'b1 : forked175_mux_q = in_forked175_0;
            default : forked175_mux_q = 1'b0;
        endcase
    end

    // out_forked175(GPOUT,22)
    assign out_forked175 = forked175_mux_q;

    // memdep_phi_pop27192_mux(MUX,18)
    assign memdep_phi_pop27192_mux_s = in_valid_in_0;
    always @(memdep_phi_pop27192_mux_s or in_memdep_phi_pop27192_1 or in_memdep_phi_pop27192_0)
    begin
        unique case (memdep_phi_pop27192_mux_s)
            1'b0 : memdep_phi_pop27192_mux_q = in_memdep_phi_pop27192_1;
            1'b1 : memdep_phi_pop27192_mux_q = in_memdep_phi_pop27192_0;
            default : memdep_phi_pop27192_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop27192(GPOUT,23)
    assign out_memdep_phi_pop27192 = memdep_phi_pop27192_mux_q;

    // notcmp131168_pop33203_mux(MUX,19)
    assign notcmp131168_pop33203_mux_s = in_valid_in_0;
    always @(notcmp131168_pop33203_mux_s or in_notcmp131168_pop33203_1 or in_notcmp131168_pop33203_0)
    begin
        unique case (notcmp131168_pop33203_mux_s)
            1'b0 : notcmp131168_pop33203_mux_q = in_notcmp131168_pop33203_1;
            1'b1 : notcmp131168_pop33203_mux_q = in_notcmp131168_pop33203_0;
            default : notcmp131168_pop33203_mux_q = 1'b0;
        endcase
    end

    // out_notcmp131168_pop33203(GPOUT,24)
    assign out_notcmp131168_pop33203 = notcmp131168_pop33203_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
