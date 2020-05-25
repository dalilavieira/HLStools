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

// SystemVerilog created from v4l2_detect_cvt_i_iord_bl_call_unnamed_vA000000Zvt0_v4l2_detect_cvt0
// SystemVerilog created on Sun May 24 22:35:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module v4l2_detect_cvt_i_iord_bl_call_unnamed_vA000000Zvt0_v4l2_detect_cvt0 (
    input wire [1855:0] in_iord_bl_call_v4l2_detect_cvt_i_fifodata,
    input wire [0:0] in_iord_bl_call_v4l2_detect_cvt_i_fifovalid,
    output wire [0:0] out_iord_bl_call_v4l2_detect_cvt_o_fifoready,
    input wire [0:0] in_i_stall,
    output wire [0:0] out_o_stall,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_o_data_0_tpl,
    output wire [31:0] out_o_data_1_tpl,
    output wire [31:0] out_o_data_2_tpl,
    output wire [31:0] out_o_data_3_tpl,
    output wire [31:0] out_o_data_4_tpl,
    output wire [0:0] out_o_data_5_tpl,
    output wire [63:0] out_o_data_6_tpl,
    output wire [63:0] out_o_data_7_tpl,
    output wire [63:0] out_o_data_8_tpl,
    output wire [63:0] out_o_data_9_tpl,
    output wire [63:0] out_o_data_10_tpl,
    output wire [63:0] out_o_data_11_tpl,
    output wire [63:0] out_o_data_12_tpl,
    output wire [63:0] out_o_data_13_tpl,
    output wire [63:0] out_o_data_14_tpl,
    output wire [63:0] out_o_data_15_tpl,
    output wire [63:0] out_o_data_16_tpl,
    output wire [63:0] out_o_data_17_tpl,
    output wire [63:0] out_o_data_18_tpl,
    output wire [63:0] out_o_data_19_tpl,
    output wire [63:0] out_o_data_20_tpl,
    output wire [63:0] out_o_data_21_tpl,
    output wire [63:0] out_o_data_22_tpl,
    output wire [63:0] out_o_data_23_tpl,
    output wire [63:0] out_o_data_24_tpl,
    output wire [63:0] out_o_data_25_tpl,
    output wire [63:0] out_o_data_26_tpl,
    output wire [63:0] out_o_data_27_tpl,
    output wire [63:0] out_o_data_28_tpl,
    output wire [63:0] out_o_data_29_tpl,
    output wire [63:0] out_o_data_30_tpl,
    output wire [63:0] out_o_data_31_tpl,
    output wire [0:0] out_o_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] adapt_scalar_trunc13_in;
    wire [0:0] adapt_scalar_trunc13_q;
    wire [31:0] c32_0_q;
    wire [1855:0] iord_i_fifodata;
    wire [0:0] iord_i_fifoempty;
    wire iord_i_fifoempty_bitsignaltemp;
    wire [0:0] iord_i_fifoendofpacket;
    wire iord_i_fifoendofpacket_bitsignaltemp;
    wire [31:0] iord_i_fifosize;
    wire [0:0] iord_i_fifostartofpacket;
    wire iord_i_fifostartofpacket_bitsignaltemp;
    wire [0:0] iord_i_fifovalid;
    wire iord_i_fifovalid_bitsignaltemp;
    wire [0:0] iord_i_init;
    wire iord_i_init_bitsignaltemp;
    wire [0:0] iord_i_predicate;
    wire iord_i_predicate_bitsignaltemp;
    wire [0:0] iord_i_stall;
    wire iord_i_stall_bitsignaltemp;
    wire [0:0] iord_i_valid;
    wire iord_i_valid_bitsignaltemp;
    wire [1855:0] iord_o_data;
    wire [0:0] iord_o_fifoready;
    wire iord_o_fifoready_bitsignaltemp;
    wire [0:0] iord_o_stall;
    wire iord_o_stall_bitsignaltemp;
    wire [0:0] iord_o_valid;
    wire iord_o_valid_bitsignaltemp;
    wire [31:0] iord_profile_total_fifo_size_incr;
    wire [31:0] ip_dsdk_adapt_bitselect10_b;
    wire [0:0] ip_dsdk_adapt_bitselect12_b;
    wire [63:0] ip_dsdk_adapt_bitselect14_b;
    wire [63:0] ip_dsdk_adapt_bitselect16_b;
    wire [63:0] ip_dsdk_adapt_bitselect18_b;
    wire [31:0] ip_dsdk_adapt_bitselect2_b;
    wire [63:0] ip_dsdk_adapt_bitselect20_b;
    wire [63:0] ip_dsdk_adapt_bitselect22_b;
    wire [63:0] ip_dsdk_adapt_bitselect24_b;
    wire [63:0] ip_dsdk_adapt_bitselect26_b;
    wire [63:0] ip_dsdk_adapt_bitselect28_b;
    wire [63:0] ip_dsdk_adapt_bitselect30_b;
    wire [63:0] ip_dsdk_adapt_bitselect32_b;
    wire [63:0] ip_dsdk_adapt_bitselect34_b;
    wire [63:0] ip_dsdk_adapt_bitselect36_b;
    wire [63:0] ip_dsdk_adapt_bitselect38_b;
    wire [31:0] ip_dsdk_adapt_bitselect4_b;
    wire [63:0] ip_dsdk_adapt_bitselect40_b;
    wire [63:0] ip_dsdk_adapt_bitselect42_b;
    wire [63:0] ip_dsdk_adapt_bitselect44_b;
    wire [63:0] ip_dsdk_adapt_bitselect46_b;
    wire [63:0] ip_dsdk_adapt_bitselect48_b;
    wire [63:0] ip_dsdk_adapt_bitselect50_b;
    wire [63:0] ip_dsdk_adapt_bitselect52_b;
    wire [63:0] ip_dsdk_adapt_bitselect54_b;
    wire [63:0] ip_dsdk_adapt_bitselect56_b;
    wire [63:0] ip_dsdk_adapt_bitselect58_b;
    wire [31:0] ip_dsdk_adapt_bitselect6_b;
    wire [63:0] ip_dsdk_adapt_bitselect60_b;
    wire [63:0] ip_dsdk_adapt_bitselect62_b;
    wire [63:0] ip_dsdk_adapt_bitselect64_b;
    wire [31:0] ip_dsdk_adapt_bitselect8_b;


    // c32_0(CONSTANT,4)
    assign c32_0_q = $unsigned(32'b00000000000000000000000000000000);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // iord(EXTIFACE,7)
    assign iord_i_fifodata = in_iord_bl_call_v4l2_detect_cvt_i_fifodata;
    assign iord_i_fifoempty = GND_q;
    assign iord_i_fifoendofpacket = GND_q;
    assign iord_i_fifosize = c32_0_q;
    assign iord_i_fifostartofpacket = GND_q;
    assign iord_i_fifovalid = in_iord_bl_call_v4l2_detect_cvt_i_fifovalid;
    assign iord_i_init = GND_q;
    assign iord_i_predicate = GND_q;
    assign iord_i_stall = in_i_stall;
    assign iord_i_valid = in_i_valid;
    assign iord_i_fifoempty_bitsignaltemp = iord_i_fifoempty[0];
    assign iord_i_fifoendofpacket_bitsignaltemp = iord_i_fifoendofpacket[0];
    assign iord_i_fifostartofpacket_bitsignaltemp = iord_i_fifostartofpacket[0];
    assign iord_i_fifovalid_bitsignaltemp = iord_i_fifovalid[0];
    assign iord_i_init_bitsignaltemp = iord_i_init[0];
    assign iord_i_predicate_bitsignaltemp = iord_i_predicate[0];
    assign iord_i_stall_bitsignaltemp = iord_i_stall[0];
    assign iord_i_valid_bitsignaltemp = iord_i_valid[0];
    assign iord_o_fifoready[0] = iord_o_fifoready_bitsignaltemp;
    assign iord_o_stall[0] = iord_o_stall_bitsignaltemp;
    assign iord_o_valid[0] = iord_o_valid_bitsignaltemp;
    st_read #(
        .STAGING_CAPACITY(1),
        .ASYNC_RESET(1),
        .DATA_WIDTH(1856),
        .EMPTY_WIDTH(0),
        .NON_BLOCKING(0),
        .SYNCHRONIZE_RESET(0)
    ) theiord (
        .i_fifodata(in_iord_bl_call_v4l2_detect_cvt_i_fifodata),
        .i_fifoempty(iord_i_fifoempty_bitsignaltemp),
        .i_fifoendofpacket(iord_i_fifoendofpacket_bitsignaltemp),
        .i_fifosize(c32_0_q),
        .i_fifostartofpacket(iord_i_fifostartofpacket_bitsignaltemp),
        .i_fifovalid(iord_i_fifovalid_bitsignaltemp),
        .i_init(iord_i_init_bitsignaltemp),
        .i_predicate(iord_i_predicate_bitsignaltemp),
        .i_stall(iord_i_stall_bitsignaltemp),
        .i_valid(iord_i_valid_bitsignaltemp),
        .o_data(iord_o_data),
        .o_fifoready(iord_o_fifoready_bitsignaltemp),
        .o_stall(iord_o_stall_bitsignaltemp),
        .o_valid(iord_o_valid_bitsignaltemp),
        .profile_total_fifo_size_incr(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,73)
    assign out_iord_bl_call_v4l2_detect_cvt_o_fifoready = iord_o_fifoready;

    // sync_out(GPOUT,75)@20000000
    assign out_o_stall = iord_o_stall;

    // ip_dsdk_adapt_bitselect64(BITSELECT,38)
    assign ip_dsdk_adapt_bitselect64_b = iord_o_data[1855:1792];

    // ip_dsdk_adapt_bitselect62(BITSELECT,37)
    assign ip_dsdk_adapt_bitselect62_b = iord_o_data[1791:1728];

    // ip_dsdk_adapt_bitselect60(BITSELECT,36)
    assign ip_dsdk_adapt_bitselect60_b = iord_o_data[1727:1664];

    // ip_dsdk_adapt_bitselect58(BITSELECT,34)
    assign ip_dsdk_adapt_bitselect58_b = iord_o_data[1663:1600];

    // ip_dsdk_adapt_bitselect56(BITSELECT,33)
    assign ip_dsdk_adapt_bitselect56_b = iord_o_data[1599:1536];

    // ip_dsdk_adapt_bitselect54(BITSELECT,32)
    assign ip_dsdk_adapt_bitselect54_b = iord_o_data[1535:1472];

    // ip_dsdk_adapt_bitselect52(BITSELECT,31)
    assign ip_dsdk_adapt_bitselect52_b = iord_o_data[1471:1408];

    // ip_dsdk_adapt_bitselect50(BITSELECT,30)
    assign ip_dsdk_adapt_bitselect50_b = iord_o_data[1407:1344];

    // ip_dsdk_adapt_bitselect48(BITSELECT,29)
    assign ip_dsdk_adapt_bitselect48_b = iord_o_data[1343:1280];

    // ip_dsdk_adapt_bitselect46(BITSELECT,28)
    assign ip_dsdk_adapt_bitselect46_b = iord_o_data[1279:1216];

    // ip_dsdk_adapt_bitselect44(BITSELECT,27)
    assign ip_dsdk_adapt_bitselect44_b = iord_o_data[1215:1152];

    // ip_dsdk_adapt_bitselect42(BITSELECT,26)
    assign ip_dsdk_adapt_bitselect42_b = iord_o_data[1151:1088];

    // ip_dsdk_adapt_bitselect40(BITSELECT,25)
    assign ip_dsdk_adapt_bitselect40_b = iord_o_data[1087:1024];

    // ip_dsdk_adapt_bitselect38(BITSELECT,23)
    assign ip_dsdk_adapt_bitselect38_b = iord_o_data[1023:960];

    // ip_dsdk_adapt_bitselect36(BITSELECT,22)
    assign ip_dsdk_adapt_bitselect36_b = iord_o_data[959:896];

    // ip_dsdk_adapt_bitselect34(BITSELECT,21)
    assign ip_dsdk_adapt_bitselect34_b = iord_o_data[895:832];

    // ip_dsdk_adapt_bitselect32(BITSELECT,20)
    assign ip_dsdk_adapt_bitselect32_b = iord_o_data[831:768];

    // ip_dsdk_adapt_bitselect30(BITSELECT,19)
    assign ip_dsdk_adapt_bitselect30_b = iord_o_data[767:704];

    // ip_dsdk_adapt_bitselect28(BITSELECT,18)
    assign ip_dsdk_adapt_bitselect28_b = iord_o_data[703:640];

    // ip_dsdk_adapt_bitselect26(BITSELECT,17)
    assign ip_dsdk_adapt_bitselect26_b = iord_o_data[639:576];

    // ip_dsdk_adapt_bitselect24(BITSELECT,16)
    assign ip_dsdk_adapt_bitselect24_b = iord_o_data[575:512];

    // ip_dsdk_adapt_bitselect22(BITSELECT,15)
    assign ip_dsdk_adapt_bitselect22_b = iord_o_data[511:448];

    // ip_dsdk_adapt_bitselect20(BITSELECT,14)
    assign ip_dsdk_adapt_bitselect20_b = iord_o_data[447:384];

    // ip_dsdk_adapt_bitselect18(BITSELECT,12)
    assign ip_dsdk_adapt_bitselect18_b = iord_o_data[383:320];

    // ip_dsdk_adapt_bitselect16(BITSELECT,11)
    assign ip_dsdk_adapt_bitselect16_b = iord_o_data[319:256];

    // ip_dsdk_adapt_bitselect14(BITSELECT,10)
    assign ip_dsdk_adapt_bitselect14_b = iord_o_data[255:192];

    // ip_dsdk_adapt_bitselect12(BITSELECT,9)
    assign ip_dsdk_adapt_bitselect12_b = iord_o_data[160:160];

    // adapt_scalar_trunc13(ROUND,2)
    assign adapt_scalar_trunc13_in = ip_dsdk_adapt_bitselect12_b;
    assign adapt_scalar_trunc13_q = adapt_scalar_trunc13_in[0:0];

    // ip_dsdk_adapt_bitselect10(BITSELECT,8)
    assign ip_dsdk_adapt_bitselect10_b = iord_o_data[159:128];

    // ip_dsdk_adapt_bitselect8(BITSELECT,39)
    assign ip_dsdk_adapt_bitselect8_b = iord_o_data[127:96];

    // ip_dsdk_adapt_bitselect6(BITSELECT,35)
    assign ip_dsdk_adapt_bitselect6_b = iord_o_data[95:64];

    // ip_dsdk_adapt_bitselect4(BITSELECT,24)
    assign ip_dsdk_adapt_bitselect4_b = iord_o_data[63:32];

    // ip_dsdk_adapt_bitselect2(BITSELECT,13)
    assign ip_dsdk_adapt_bitselect2_b = iord_o_data[31:0];

    // dupName_0_sync_out_aunroll_x(GPOUT,77)@3
    assign out_o_data_0_tpl = ip_dsdk_adapt_bitselect2_b;
    assign out_o_data_1_tpl = ip_dsdk_adapt_bitselect4_b;
    assign out_o_data_2_tpl = ip_dsdk_adapt_bitselect6_b;
    assign out_o_data_3_tpl = ip_dsdk_adapt_bitselect8_b;
    assign out_o_data_4_tpl = ip_dsdk_adapt_bitselect10_b;
    assign out_o_data_5_tpl = adapt_scalar_trunc13_q;
    assign out_o_data_6_tpl = ip_dsdk_adapt_bitselect14_b;
    assign out_o_data_7_tpl = ip_dsdk_adapt_bitselect16_b;
    assign out_o_data_8_tpl = ip_dsdk_adapt_bitselect18_b;
    assign out_o_data_9_tpl = ip_dsdk_adapt_bitselect20_b;
    assign out_o_data_10_tpl = ip_dsdk_adapt_bitselect22_b;
    assign out_o_data_11_tpl = ip_dsdk_adapt_bitselect24_b;
    assign out_o_data_12_tpl = ip_dsdk_adapt_bitselect26_b;
    assign out_o_data_13_tpl = ip_dsdk_adapt_bitselect28_b;
    assign out_o_data_14_tpl = ip_dsdk_adapt_bitselect30_b;
    assign out_o_data_15_tpl = ip_dsdk_adapt_bitselect32_b;
    assign out_o_data_16_tpl = ip_dsdk_adapt_bitselect34_b;
    assign out_o_data_17_tpl = ip_dsdk_adapt_bitselect36_b;
    assign out_o_data_18_tpl = ip_dsdk_adapt_bitselect38_b;
    assign out_o_data_19_tpl = ip_dsdk_adapt_bitselect40_b;
    assign out_o_data_20_tpl = ip_dsdk_adapt_bitselect42_b;
    assign out_o_data_21_tpl = ip_dsdk_adapt_bitselect44_b;
    assign out_o_data_22_tpl = ip_dsdk_adapt_bitselect46_b;
    assign out_o_data_23_tpl = ip_dsdk_adapt_bitselect48_b;
    assign out_o_data_24_tpl = ip_dsdk_adapt_bitselect50_b;
    assign out_o_data_25_tpl = ip_dsdk_adapt_bitselect52_b;
    assign out_o_data_26_tpl = ip_dsdk_adapt_bitselect54_b;
    assign out_o_data_27_tpl = ip_dsdk_adapt_bitselect56_b;
    assign out_o_data_28_tpl = ip_dsdk_adapt_bitselect58_b;
    assign out_o_data_29_tpl = ip_dsdk_adapt_bitselect60_b;
    assign out_o_data_30_tpl = ip_dsdk_adapt_bitselect62_b;
    assign out_o_data_31_tpl = ip_dsdk_adapt_bitselect64_b;
    assign out_o_valid = iord_o_valid;

endmodule
