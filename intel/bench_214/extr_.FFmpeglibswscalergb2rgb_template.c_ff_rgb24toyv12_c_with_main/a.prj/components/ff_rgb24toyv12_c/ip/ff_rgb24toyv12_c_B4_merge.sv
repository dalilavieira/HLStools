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

// SystemVerilog created from ff_rgb24toyv12_c_B4_merge
// SystemVerilog created on Sun May 24 22:33:02 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module ff_rgb24toyv12_c_B4_merge (
    input wire [63:0] in_add_ptr309_pop6014_0,
    input wire [63:0] in_add_ptr73307_pop5913_0,
    input wire [0:0] in_cmp75304_pop5610_0,
    input wire [0:0] in_lm1_toi1_intcast174_0,
    input wire [0:0] in_memdep_phi126_pop27323_pop735_0,
    input wire [0:0] in_memdep_phi133_pop28325_pop746_0,
    input wire [0:0] in_memdep_phi140_pop29327_pop757_0,
    input wire [0:0] in_memdep_phi147_pop30329_pop768_0,
    input wire [0:0] in_memdep_phi155_pop31331_pop771_0,
    input wire [0:0] in_memdep_phi202_pop36337_pop822_0,
    input wire [0:0] in_notcmp292305_pop5812_0,
    input wire [0:0] in_pop5711_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_23_0,
    input wire [0:0] in_reduction_ff_rgb24toyv12_c_539_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_add_ptr309_pop6014,
    output wire [63:0] out_add_ptr73307_pop5913,
    output wire [0:0] out_cmp75304_pop5610,
    output wire [0:0] out_lm1_toi1_intcast174,
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
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add_ptr309_pop6014(GPOUT,18)
    assign out_add_ptr309_pop6014 = in_add_ptr309_pop6014_0;

    // out_add_ptr73307_pop5913(GPOUT,19)
    assign out_add_ptr73307_pop5913 = in_add_ptr73307_pop5913_0;

    // out_cmp75304_pop5610(GPOUT,20)
    assign out_cmp75304_pop5610 = in_cmp75304_pop5610_0;

    // out_lm1_toi1_intcast174(GPOUT,21)
    assign out_lm1_toi1_intcast174 = in_lm1_toi1_intcast174_0;

    // out_memdep_phi126_pop27323_pop735(GPOUT,22)
    assign out_memdep_phi126_pop27323_pop735 = in_memdep_phi126_pop27323_pop735_0;

    // out_memdep_phi133_pop28325_pop746(GPOUT,23)
    assign out_memdep_phi133_pop28325_pop746 = in_memdep_phi133_pop28325_pop746_0;

    // out_memdep_phi140_pop29327_pop757(GPOUT,24)
    assign out_memdep_phi140_pop29327_pop757 = in_memdep_phi140_pop29327_pop757_0;

    // out_memdep_phi147_pop30329_pop768(GPOUT,25)
    assign out_memdep_phi147_pop30329_pop768 = in_memdep_phi147_pop30329_pop768_0;

    // out_memdep_phi155_pop31331_pop771(GPOUT,26)
    assign out_memdep_phi155_pop31331_pop771 = in_memdep_phi155_pop31331_pop771_0;

    // out_memdep_phi202_pop36337_pop822(GPOUT,27)
    assign out_memdep_phi202_pop36337_pop822 = in_memdep_phi202_pop36337_pop822_0;

    // out_notcmp292305_pop5812(GPOUT,28)
    assign out_notcmp292305_pop5812 = in_notcmp292305_pop5812_0;

    // out_pop5711(GPOUT,29)
    assign out_pop5711 = in_pop5711_0;

    // out_reduction_ff_rgb24toyv12_c_23(GPOUT,30)
    assign out_reduction_ff_rgb24toyv12_c_23 = in_reduction_ff_rgb24toyv12_c_23_0;

    // out_reduction_ff_rgb24toyv12_c_539(GPOUT,31)
    assign out_reduction_ff_rgb24toyv12_c_539 = in_reduction_ff_rgb24toyv12_c_539_0;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,32)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,33)
    assign out_valid_out = in_valid_in_0;

endmodule
