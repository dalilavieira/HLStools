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

// SystemVerilog created from ff_rgb24toyv12_c_B4_branch
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B4_branch (
    input wire [63:0] in_add_ptr309_pop6014,
    input wire [63:0] in_add_ptr73307_pop5913,
    input wire [0:0] in_memdep_phi126_pop27323_pop735,
    input wire [0:0] in_memdep_phi133_pop28325_pop746,
    input wire [0:0] in_memdep_phi140_pop29327_pop757,
    input wire [0:0] in_memdep_phi147_pop30329_pop768,
    input wire [0:0] in_memdep_phi155_pop31331_pop771,
    input wire [0:0] in_memdep_phi202_pop36337_pop822,
    input wire [0:0] in_notcmp292305_pop5812,
    input wire [0:0] in_pop5711,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_23,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_539,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_unnamed_ff_rgb24toyv12_c61,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_add_ptr309_pop6014,
    output wire [63:0] out_add_ptr73307_pop5913,
    output wire [0:0] out_memdep_phi126_pop27323_pop735,
    output wire [0:0] out_memdep_phi133_pop28325_pop746,
    output wire [0:0] out_memdep_phi140_pop29327_pop757,
    output wire [0:0] out_memdep_phi147_pop30329_pop768,
    output wire [0:0] out_memdep_phi155_pop31331_pop771,
    output wire [0:0] out_memdep_phi202_pop36337_pop822,
    output wire [0:0] out_notcmp292305_pop5812,
    output wire [0:0] out_pop5711,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_23,
    output wire [0:0] out_reduction_ff_rgb24toyv12_c_539,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_unnamed_ff_rgb24toyv12_c61,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add_ptr309_pop6014(GPOUT,17)
    assign out_add_ptr309_pop6014 = in_add_ptr309_pop6014;

    // out_add_ptr73307_pop5913(GPOUT,18)
    assign out_add_ptr73307_pop5913 = in_add_ptr73307_pop5913;

    // out_memdep_phi126_pop27323_pop735(GPOUT,19)
    assign out_memdep_phi126_pop27323_pop735 = in_memdep_phi126_pop27323_pop735;

    // out_memdep_phi133_pop28325_pop746(GPOUT,20)
    assign out_memdep_phi133_pop28325_pop746 = in_memdep_phi133_pop28325_pop746;

    // out_memdep_phi140_pop29327_pop757(GPOUT,21)
    assign out_memdep_phi140_pop29327_pop757 = in_memdep_phi140_pop29327_pop757;

    // out_memdep_phi147_pop30329_pop768(GPOUT,22)
    assign out_memdep_phi147_pop30329_pop768 = in_memdep_phi147_pop30329_pop768;

    // out_memdep_phi155_pop31331_pop771(GPOUT,23)
    assign out_memdep_phi155_pop31331_pop771 = in_memdep_phi155_pop31331_pop771;

    // out_memdep_phi202_pop36337_pop822(GPOUT,24)
    assign out_memdep_phi202_pop36337_pop822 = in_memdep_phi202_pop36337_pop822;

    // out_notcmp292305_pop5812(GPOUT,25)
    assign out_notcmp292305_pop5812 = in_notcmp292305_pop5812;

    // out_pop5711(GPOUT,26)
    assign out_pop5711 = in_pop5711;

    // out_reduction_ff_rgb24toyv12_c_23(GPOUT,27)
    assign out_reduction_ff_rgb24toyv12_c_23 = in_reduction_ff_rgb24toyv12_c_23;

    // out_reduction_ff_rgb24toyv12_c_539(GPOUT,28)
    assign out_reduction_ff_rgb24toyv12_c_539 = in_reduction_ff_rgb24toyv12_c_539;

    // stall_out(LOGICAL,32)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,29)
    assign out_stall_out = stall_out_q;

    // out_unnamed_ff_rgb24toyv12_c61(GPOUT,30)
    assign out_unnamed_ff_rgb24toyv12_c61 = in_unnamed_ff_rgb24toyv12_c61;

    // out_valid_out_0(GPOUT,31)
    assign out_valid_out_0 = in_valid_in;

endmodule
