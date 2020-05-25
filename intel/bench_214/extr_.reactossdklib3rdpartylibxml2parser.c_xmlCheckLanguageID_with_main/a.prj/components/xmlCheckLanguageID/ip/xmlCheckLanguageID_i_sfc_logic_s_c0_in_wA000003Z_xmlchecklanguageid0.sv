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

// SystemVerilog created from xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000003Z_xmlchecklanguageid0
// SystemVerilog created on Sun May 24 22:40:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module xmlCheckLanguageID_i_sfc_logic_s_c0_in_wA000003Z_xmlchecklanguageid0 (
    input wire [63:0] in_lm7121_xmlCheckLanguageID_avm_readdata,
    input wire [0:0] in_lm7121_xmlCheckLanguageID_avm_writeack,
    input wire [0:0] in_lm7121_xmlCheckLanguageID_avm_waitrequest,
    input wire [0:0] in_lm7121_xmlCheckLanguageID_avm_readdatavalid,
    output wire [63:0] out_lm7121_xmlCheckLanguageID_avm_address,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_enable,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_read,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_write,
    output wire [63:0] out_lm7121_xmlCheckLanguageID_avm_writedata,
    output wire [7:0] out_lm7121_xmlCheckLanguageID_avm_byteenable,
    output wire [0:0] out_lm7121_xmlCheckLanguageID_avm_burstcount,
    input wire [63:0] in_intel_reserved_ffwd_12_0,
    input wire [7:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_10_0,
    input wire [7:0] in_intel_reserved_ffwd_11_0,
    output wire [63:0] out_intel_reserved_ffwd_13_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_intel_reserved_ffwd_14_0,
    output wire [0:0] out_intel_reserved_ffwd_15_0,
    output wire [0:0] out_intel_reserved_ffwd_16_0,
    output wire [0:0] out_intel_reserved_ffwd_17_0,
    output wire [0:0] out_intel_reserved_ffwd_18_0,
    output wire [0:0] out_intel_reserved_ffwd_19_0,
    output wire [7:0] out_intel_reserved_ffwd_20_0,
    output wire [0:0] out_intel_reserved_ffwd_21_0,
    output wire [0:0] out_intel_reserved_ffwd_22_0,
    output wire [0:0] out_intel_reserved_ffwd_23_0,
    output wire [0:0] out_intel_reserved_ffwd_24_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_xmlCheckLanguageID35_0_tpl,
    output wire [0:0] out_unnamed_xmlCheckLanguageID7,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] c_i8_1092_q;
    wire [7:0] c_i8_2695_q;
    wire [7:0] c_i8_3393_q;
    wire [7:0] c_i8_4891_q;
    wire [7:0] c_i8_6594_q;
    wire [0:0] i_cmp68_phi_decision1499_xor_xmlchecklanguageid31_q;
    wire [65:0] i_cmp68_xmlchecklanguageid17_a;
    wire [65:0] i_cmp68_xmlchecklanguageid17_b;
    logic [65:0] i_cmp68_xmlchecklanguageid17_o;
    wire [0:0] i_cmp68_xmlchecklanguageid17_c;
    wire [65:0] i_cmp73_xmlchecklanguageid19_a;
    wire [65:0] i_cmp73_xmlchecklanguageid19_b;
    logic [65:0] i_cmp73_xmlchecklanguageid19_o;
    wire [0:0] i_cmp73_xmlchecklanguageid19_c;
    wire [0:0] i_cmp77_xmlchecklanguageid21_q;
    wire [65:0] i_cmp84_xmlchecklanguageid24_a;
    wire [65:0] i_cmp84_xmlchecklanguageid24_b;
    logic [65:0] i_cmp84_xmlchecklanguageid24_o;
    wire [0:0] i_cmp84_xmlchecklanguageid24_c;
    wire [0:0] i_cmp94_xmlchecklanguageid27_q;
    wire [0:0] i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_s;
    reg [63:0] i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_q;
    wire [0:0] i_lcssa165_select_xmlchecklanguageid12_s;
    reg [7:0] i_lcssa165_select_xmlchecklanguageid12_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid20_xmlchecklanguageid2_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid21_xmlchecklanguageid6_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid22_xmlchecklanguageid10_out_dest_data_out_5_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_lm1436_xmlchecklanguageid9_out_dest_data_out_2_0;
    wire [7:0] i_llvm_fpga_ffwd_dest_i8_pre_lm2044_xmlchecklanguageid11_out_dest_data_out_11_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_arrayidx237_xmlchecklanguageid1_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66174_replace_phi43_xmlchecklanguageid7_out_dest_data_out_10_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr6645_xmlchecklanguageid3_out_dest_data_out_12_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_lang18231_xmlchecklanguageid14_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i8_lang18232_xmlchecklanguageid5_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid24_xmlchecklanguageid49_out_intel_reserved_ffwd_14_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid25_xmlchecklanguageid50_out_intel_reserved_ffwd_15_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid26_xmlchecklanguageid51_out_intel_reserved_ffwd_16_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid27_xmlchecklanguageid52_out_intel_reserved_ffwd_17_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid28_xmlchecklanguageid53_out_intel_reserved_ffwd_18_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid29_xmlchecklanguageid54_out_intel_reserved_ffwd_19_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid31_xmlchecklanguageid56_out_intel_reserved_ffwd_21_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid32_xmlchecklanguageid57_out_intel_reserved_ffwd_22_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid33_xmlchecklanguageid58_out_intel_reserved_ffwd_23_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid34_xmlchecklanguageid59_out_intel_reserved_ffwd_24_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid30_xmlchecklanguageid55_out_intel_reserved_ffwd_20_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid23_xmlchecklanguageid48_out_intel_reserved_ffwd_13_0;
    wire [63:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_writedata;
    wire [7:0] i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_o_readdata;
    wire [0:0] i_narrow133_xmlchecklanguageid23_q;
    wire [0:0] i_not1_xmlchecklanguageid46_q;
    wire [0:0] i_not_xmlchecklanguageid32_q;
    wire [0:0] i_notlhs2_xmlchecklanguageid45_q;
    wire [0:0] i_notlhs_xmlchecklanguageid37_q;
    wire [0:0] i_nxt_0_lcssa_select_xmlchecklanguageid8_s;
    reg [63:0] i_nxt_0_lcssa_select_xmlchecklanguageid8_q;
    wire [8:0] i_off120_xmlchecklanguageid35_a;
    wire [8:0] i_off120_xmlchecklanguageid35_b;
    logic [8:0] i_off120_xmlchecklanguageid35_o;
    wire [8:0] i_off120_xmlchecklanguageid35_q;
    wire [64:0] i_sub_ptr_sub_xmlchecklanguageid16_a;
    wire [64:0] i_sub_ptr_sub_xmlchecklanguageid16_b;
    logic [64:0] i_sub_ptr_sub_xmlchecklanguageid16_o;
    wire [64:0] i_sub_ptr_sub_xmlchecklanguageid16_q;
    wire [0:0] i_unnamed_xmlchecklanguageid26_q;
    wire [0:0] i_unnamed_xmlchecklanguageid29_q;
    wire [0:0] i_unnamed_xmlchecklanguageid30_q;
    wire [0:0] i_unnamed_xmlchecklanguageid33_q;
    wire [9:0] i_unnamed_xmlchecklanguageid36_a;
    wire [9:0] i_unnamed_xmlchecklanguageid36_b;
    logic [9:0] i_unnamed_xmlchecklanguageid36_o;
    wire [0:0] i_unnamed_xmlchecklanguageid36_c;
    wire [0:0] i_unnamed_xmlchecklanguageid38_qi;
    reg [0:0] i_unnamed_xmlchecklanguageid38_q;
    wire [0:0] i_unnamed_xmlchecklanguageid39_qi;
    reg [0:0] i_unnamed_xmlchecklanguageid39_q;
    wire [7:0] i_unnamed_xmlchecklanguageid40_q;
    wire [7:0] i_unnamed_xmlchecklanguageid40_vt_join_q;
    wire [8:0] i_unnamed_xmlchecklanguageid41_a;
    wire [8:0] i_unnamed_xmlchecklanguageid41_b;
    logic [8:0] i_unnamed_xmlchecklanguageid41_o;
    wire [8:0] i_unnamed_xmlchecklanguageid41_q;
    wire [9:0] i_unnamed_xmlchecklanguageid42_a;
    wire [9:0] i_unnamed_xmlchecklanguageid42_b;
    logic [9:0] i_unnamed_xmlchecklanguageid42_o;
    wire [0:0] i_unnamed_xmlchecklanguageid42_c;
    wire [0:0] i_unnamed_xmlchecklanguageid43_q;
    wire [0:0] i_unnamed_xmlchecklanguageid44_q;
    wire [0:0] i_unnamed_xmlchecklanguageid47_q;
    wire [7:0] bgTrunc_i_off120_xmlchecklanguageid35_sel_x_b;
    wire [63:0] bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b;
    wire [7:0] bgTrunc_i_unnamed_xmlchecklanguageid41_sel_x_b;
    wire [63:0] c_i64_288_recast_x_q;
    wire [63:0] c_i64_385_recast_x_q;
    wire [63:0] c_i64_986_recast_x_q;
    wire [7:0] c_i8_087_recast_x_q;
    wire [7:0] c_i8_4589_recast_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    wire [4:0] i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select_b;
    wire [1:0] i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select_c;
    reg [63:0] redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q;
    reg [0:0] redist1_sync_together104_in_i_valid_1_q;
    reg [0:0] redist2_sync_together104_in_i_valid_8_q;
    reg [0:0] redist3_sync_together104_in_i_valid_9_q;
    reg [0:0] redist4_i_unnamed_xmlchecklanguageid38_q_7_q;
    reg [0:0] redist5_i_cmp68_xmlchecklanguageid17_c_8_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist1_sync_together104_in_i_valid_1(DELAY,157)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together104_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist1_sync_together104_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg11(REG,139)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // c_i8_087_recast_x(CONSTANT,114)
    assign c_i8_087_recast_x_q = $unsigned(8'b00000000);

    // valid_fanout_reg9(REG,137)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_pre_lm2044_xmlchecklanguageid11(BLACKBOX,48)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000013Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_pre_lm2044_xmlchecklanguageid11 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i8_pre_lm2044_xmlchecklanguageid11_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,135)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i8_lm1436_xmlchecklanguageid9(BLACKBOX,47)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000012Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i8_lm1436_xmlchecklanguageid9 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i8_lm1436_xmlchecklanguageid9_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg8(REG,136)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid22_xmlchecklanguageid10(BLACKBOX,46)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000011Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid22_xmlchecklanguageid10 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid22_xmlchecklanguageid10_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_lcssa165_select_xmlchecklanguageid12(MUX,43)@2
    assign i_lcssa165_select_xmlchecklanguageid12_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid22_xmlchecklanguageid10_out_dest_data_out_5_0;
    always @(i_lcssa165_select_xmlchecklanguageid12_s or i_llvm_fpga_ffwd_dest_i8_lm1436_xmlchecklanguageid9_out_dest_data_out_2_0 or i_llvm_fpga_ffwd_dest_i8_pre_lm2044_xmlchecklanguageid11_out_dest_data_out_11_0)
    begin
        unique case (i_lcssa165_select_xmlchecklanguageid12_s)
            1'b0 : i_lcssa165_select_xmlchecklanguageid12_q = i_llvm_fpga_ffwd_dest_i8_lm1436_xmlchecklanguageid9_out_dest_data_out_2_0;
            1'b1 : i_lcssa165_select_xmlchecklanguageid12_q = i_llvm_fpga_ffwd_dest_i8_pre_lm2044_xmlchecklanguageid11_out_dest_data_out_11_0;
            default : i_lcssa165_select_xmlchecklanguageid12_q = 8'b0;
        endcase
    end

    // i_cmp77_xmlchecklanguageid21(LOGICAL,39)@2
    assign i_cmp77_xmlchecklanguageid21_q = $unsigned(i_lcssa165_select_xmlchecklanguageid12_q == c_i8_087_recast_x_q ? 1'b1 : 1'b0);

    // c_i64_288_recast_x(CONSTANT,111)
    assign c_i64_288_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000010);

    // valid_fanout_reg10(REG,138)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_lang18231_xmlchecklanguageid14(BLACKBOX,52)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000017Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_lang18231_xmlchecklanguageid14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i8_lang18231_xmlchecklanguageid14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,134)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66174_replace_phi43_xmlchecklanguageid7(BLACKBOX,50)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000015Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66174_replace_phi43_xmlchecklanguageid7 (
        .in_intel_reserved_ffwd_10_0(in_intel_reserved_ffwd_10_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_10_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66174_replace_phi43_xmlchecklanguageid7_out_dest_data_out_10_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg4(REG,132)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_lang18232_xmlchecklanguageid5(BLACKBOX,53)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000018Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_lang18232_xmlchecklanguageid5 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i8_lang18232_xmlchecklanguageid5_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,133)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid21_xmlchecklanguageid6(BLACKBOX,45)@1
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000010Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid21_xmlchecklanguageid6 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid21_xmlchecklanguageid6_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_nxt_0_lcssa_select_xmlchecklanguageid8(MUX,72)@1
    assign i_nxt_0_lcssa_select_xmlchecklanguageid8_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid21_xmlchecklanguageid6_out_dest_data_out_5_0;
    always @(i_nxt_0_lcssa_select_xmlchecklanguageid8_s or i_llvm_fpga_ffwd_dest_p1024i8_lang18232_xmlchecklanguageid5_out_dest_data_out_0_0 or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66174_replace_phi43_xmlchecklanguageid7_out_dest_data_out_10_0)
    begin
        unique case (i_nxt_0_lcssa_select_xmlchecklanguageid8_s)
            1'b0 : i_nxt_0_lcssa_select_xmlchecklanguageid8_q = i_llvm_fpga_ffwd_dest_p1024i8_lang18232_xmlchecklanguageid5_out_dest_data_out_0_0;
            1'b1 : i_nxt_0_lcssa_select_xmlchecklanguageid8_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr66174_replace_phi43_xmlchecklanguageid7_out_dest_data_out_10_0;
            default : i_nxt_0_lcssa_select_xmlchecklanguageid8_q = 64'b0;
        endcase
    end

    // i_sub_ptr_sub_xmlchecklanguageid16(SUB,74)@1
    assign i_sub_ptr_sub_xmlchecklanguageid16_a = {1'b0, i_nxt_0_lcssa_select_xmlchecklanguageid8_q};
    assign i_sub_ptr_sub_xmlchecklanguageid16_b = {1'b0, i_llvm_fpga_ffwd_dest_p1024i8_lang18231_xmlchecklanguageid14_out_dest_data_out_0_0};
    assign i_sub_ptr_sub_xmlchecklanguageid16_o = $unsigned(i_sub_ptr_sub_xmlchecklanguageid16_a) - $unsigned(i_sub_ptr_sub_xmlchecklanguageid16_b);
    assign i_sub_ptr_sub_xmlchecklanguageid16_q = i_sub_ptr_sub_xmlchecklanguageid16_o[64:0];

    // bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x(BITSELECT,109)@1
    assign bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b = $unsigned(i_sub_ptr_sub_xmlchecklanguageid16_q[63:0]);

    // redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1(DELAY,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q <= $unsigned(bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b);
        end
    end

    // i_cmp84_xmlchecklanguageid24(COMPARE,40)@2
    assign i_cmp84_xmlchecklanguageid24_a = $unsigned({{2{redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q[63]}}, redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q});
    assign i_cmp84_xmlchecklanguageid24_b = $unsigned({{2{c_i64_288_recast_x_q[63]}}, c_i64_288_recast_x_q});
    assign i_cmp84_xmlchecklanguageid24_o = $unsigned($signed(i_cmp84_xmlchecklanguageid24_a) - $signed(i_cmp84_xmlchecklanguageid24_b));
    assign i_cmp84_xmlchecklanguageid24_c[0] = i_cmp84_xmlchecklanguageid24_o[65];

    // i_unnamed_xmlchecklanguageid26(LOGICAL,75)@2
    assign i_unnamed_xmlchecklanguageid26_q = i_cmp84_xmlchecklanguageid24_c | i_cmp77_xmlchecklanguageid21_q;

    // i_unnamed_xmlchecklanguageid29(LOGICAL,76)@2
    assign i_unnamed_xmlchecklanguageid29_q = i_unnamed_xmlchecklanguageid26_q ^ VCC_q;

    // c_i8_4589_recast_x(CONSTANT,115)
    assign c_i8_4589_recast_x_q = $unsigned(8'b00101101);

    // i_cmp94_xmlchecklanguageid27(LOGICAL,41)@2
    assign i_cmp94_xmlchecklanguageid27_q = $unsigned(i_lcssa165_select_xmlchecklanguageid12_q == c_i8_4589_recast_x_q ? 1'b1 : 1'b0);

    // i_unnamed_xmlchecklanguageid30(LOGICAL,77)@2
    assign i_unnamed_xmlchecklanguageid30_q = i_cmp94_xmlchecklanguageid27_q & i_unnamed_xmlchecklanguageid29_q;

    // i_not_xmlchecklanguageid32(LOGICAL,69)@2
    assign i_not_xmlchecklanguageid32_q = i_unnamed_xmlchecklanguageid30_q ^ VCC_q;

    // c_i64_385_recast_x(CONSTANT,112)
    assign c_i64_385_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000011);

    // i_cmp68_xmlchecklanguageid17(COMPARE,37)@2
    assign i_cmp68_xmlchecklanguageid17_a = $unsigned({{2{c_i64_385_recast_x_q[63]}}, c_i64_385_recast_x_q});
    assign i_cmp68_xmlchecklanguageid17_b = $unsigned({{2{redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q[63]}}, redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q});
    assign i_cmp68_xmlchecklanguageid17_o = $unsigned($signed(i_cmp68_xmlchecklanguageid17_a) - $signed(i_cmp68_xmlchecklanguageid17_b));
    assign i_cmp68_xmlchecklanguageid17_c[0] = i_cmp68_xmlchecklanguageid17_o[65];

    // i_unnamed_xmlchecklanguageid33(LOGICAL,78)@2
    assign i_unnamed_xmlchecklanguageid33_q = i_cmp68_xmlchecklanguageid17_c | i_not_xmlchecklanguageid32_q;

    // valid_fanout_reg3(REG,131)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr6645_xmlchecklanguageid3(BLACKBOX,51)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000016Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr6645_xmlchecklanguageid3 (
        .in_intel_reserved_ffwd_12_0(in_intel_reserved_ffwd_12_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_12_0(i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr6645_xmlchecklanguageid3_out_dest_data_out_12_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,129)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i8_arrayidx237_xmlchecklanguageid1(BLACKBOX,49)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000014Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_p1024i8_arrayidx237_xmlchecklanguageid1 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1024i8_arrayidx237_xmlchecklanguageid1_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,130)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid20_xmlchecklanguageid2(BLACKBOX,44)@2
    xmlCheckLanguageID_i_llvm_fpga_ffwd_destA000009Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid20_xmlchecklanguageid2 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid20_xmlchecklanguageid2_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_incdec_ptr66_lcssa_select_xmlchecklanguageid4(MUX,42)@2
    assign i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_s = i_llvm_fpga_ffwd_dest_i1_unnamed_xmlchecklanguageid20_xmlchecklanguageid2_out_dest_data_out_5_0;
    always @(i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_s or i_llvm_fpga_ffwd_dest_p1024i8_arrayidx237_xmlchecklanguageid1_out_dest_data_out_3_0 or i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr6645_xmlchecklanguageid3_out_dest_data_out_12_0)
    begin
        unique case (i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_s)
            1'b0 : i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_p1024i8_arrayidx237_xmlchecklanguageid1_out_dest_data_out_3_0;
            1'b1 : i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_q = i_llvm_fpga_ffwd_dest_p1024i8_incdec_ptr6645_xmlchecklanguageid3_out_dest_data_out_12_0;
            default : i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_q = 64'b0;
        endcase
    end

    // i_llvm_fpga_mem_lm7121_xmlchecklanguageid34(BLACKBOX,66)@2
    // in in_i_stall@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_address@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_burstcount@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_byteenable@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_enable@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_read@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_write@20000000
    // out out_lm7121_xmlCheckLanguageID_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    xmlCheckLanguageID_i_llvm_fpga_mem_lm7121_xmlchecklanguageid0 thei_llvm_fpga_mem_lm7121_xmlchecklanguageid34 (
        .in_flush(in_flush),
        .in_i_address(i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_q),
        .in_i_predicate(i_unnamed_xmlchecklanguageid33_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg11_q),
        .in_lm7121_xmlCheckLanguageID_avm_readdata(in_lm7121_xmlCheckLanguageID_avm_readdata),
        .in_lm7121_xmlCheckLanguageID_avm_readdatavalid(in_lm7121_xmlCheckLanguageID_avm_readdatavalid),
        .in_lm7121_xmlCheckLanguageID_avm_waitrequest(in_lm7121_xmlCheckLanguageID_avm_waitrequest),
        .in_lm7121_xmlCheckLanguageID_avm_writeack(in_lm7121_xmlCheckLanguageID_avm_writeack),
        .out_lm7121_xmlCheckLanguageID_avm_address(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_address),
        .out_lm7121_xmlCheckLanguageID_avm_burstcount(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_burstcount),
        .out_lm7121_xmlCheckLanguageID_avm_byteenable(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_byteenable),
        .out_lm7121_xmlCheckLanguageID_avm_enable(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_enable),
        .out_lm7121_xmlCheckLanguageID_avm_read(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_read),
        .out_lm7121_xmlCheckLanguageID_avm_write(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_write),
        .out_lm7121_xmlCheckLanguageID_avm_writedata(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,35)
    assign out_lm7121_xmlCheckLanguageID_avm_address = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_address;
    assign out_lm7121_xmlCheckLanguageID_avm_enable = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_enable;
    assign out_lm7121_xmlCheckLanguageID_avm_read = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_read;
    assign out_lm7121_xmlCheckLanguageID_avm_write = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_write;
    assign out_lm7121_xmlCheckLanguageID_avm_writedata = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_writedata;
    assign out_lm7121_xmlCheckLanguageID_avm_byteenable = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_byteenable;
    assign out_lm7121_xmlCheckLanguageID_avm_burstcount = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_lm7121_xmlCheckLanguageID_avm_burstcount;

    // valid_fanout_reg12(REG,140)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid23_xmlchecklanguageid48(BLACKBOX,65)@2
    // out out_intel_reserved_ffwd_13_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000024Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid23_xmlchecklanguageid48 (
        .in_predicate_in(GND_q),
        .in_src_data_in_13_0(i_incdec_ptr66_lcssa_select_xmlchecklanguageid4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_intel_reserved_ffwd_13_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid23_xmlchecklanguageid48_out_intel_reserved_ffwd_13_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,105)
    assign out_intel_reserved_ffwd_13_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_xmlchecklanguageid23_xmlchecklanguageid48_out_intel_reserved_ffwd_13_0;

    // valid_fanout_reg13(REG,141)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid24_xmlchecklanguageid49(BLACKBOX,54)@2
    // out out_intel_reserved_ffwd_14_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000013Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid24_xmlchecklanguageid49 (
        .in_predicate_in(GND_q),
        .in_src_data_in_14_0(i_cmp68_xmlchecklanguageid17_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_intel_reserved_ffwd_14_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid24_xmlchecklanguageid49_out_intel_reserved_ffwd_14_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,116)
    assign out_intel_reserved_ffwd_14_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid24_xmlchecklanguageid49_out_intel_reserved_ffwd_14_0;

    // valid_fanout_reg14(REG,142)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // c_i64_986_recast_x(CONSTANT,113)
    assign c_i64_986_recast_x_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000001001);

    // i_cmp73_xmlchecklanguageid19(COMPARE,38)@2
    assign i_cmp73_xmlchecklanguageid19_a = $unsigned({{2{redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q[63]}}, redist0_bgTrunc_i_sub_ptr_sub_xmlchecklanguageid16_sel_x_b_1_q});
    assign i_cmp73_xmlchecklanguageid19_b = $unsigned({{2{c_i64_986_recast_x_q[63]}}, c_i64_986_recast_x_q});
    assign i_cmp73_xmlchecklanguageid19_o = $unsigned($signed(i_cmp73_xmlchecklanguageid19_a) - $signed(i_cmp73_xmlchecklanguageid19_b));
    assign i_cmp73_xmlchecklanguageid19_c[0] = i_cmp73_xmlchecklanguageid19_o[65];

    // i_narrow133_xmlchecklanguageid23(LOGICAL,67)@2
    assign i_narrow133_xmlchecklanguageid23_q = i_cmp77_xmlchecklanguageid21_q & i_cmp73_xmlchecklanguageid19_c;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid25_xmlchecklanguageid50(BLACKBOX,55)@2
    // out out_intel_reserved_ffwd_15_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000014Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid25_xmlchecklanguageid50 (
        .in_predicate_in(GND_q),
        .in_src_data_in_15_0(i_narrow133_xmlchecklanguageid23_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_intel_reserved_ffwd_15_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid25_xmlchecklanguageid50_out_intel_reserved_ffwd_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,117)
    assign out_intel_reserved_ffwd_15_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid25_xmlchecklanguageid50_out_intel_reserved_ffwd_15_0;

    // valid_fanout_reg15(REG,143)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid26_xmlchecklanguageid51(BLACKBOX,56)@2
    // out out_intel_reserved_ffwd_16_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000015Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid26_xmlchecklanguageid51 (
        .in_predicate_in(GND_q),
        .in_src_data_in_16_0(i_cmp84_xmlchecklanguageid24_c),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_intel_reserved_ffwd_16_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid26_xmlchecklanguageid51_out_intel_reserved_ffwd_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,118)
    assign out_intel_reserved_ffwd_16_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid26_xmlchecklanguageid51_out_intel_reserved_ffwd_16_0;

    // valid_fanout_reg16(REG,144)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid27_xmlchecklanguageid52(BLACKBOX,57)@2
    // out out_intel_reserved_ffwd_17_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000016Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid27_xmlchecklanguageid52 (
        .in_predicate_in(GND_q),
        .in_src_data_in_17_0(i_unnamed_xmlchecklanguageid26_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_intel_reserved_ffwd_17_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid27_xmlchecklanguageid52_out_intel_reserved_ffwd_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,119)
    assign out_intel_reserved_ffwd_17_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid27_xmlchecklanguageid52_out_intel_reserved_ffwd_17_0;

    // valid_fanout_reg17(REG,145)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist1_sync_together104_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid28_xmlchecklanguageid53(BLACKBOX,58)@2
    // out out_intel_reserved_ffwd_18_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000017Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid28_xmlchecklanguageid53 (
        .in_predicate_in(GND_q),
        .in_src_data_in_18_0(i_unnamed_xmlchecklanguageid30_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_intel_reserved_ffwd_18_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid28_xmlchecklanguageid53_out_intel_reserved_ffwd_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,120)
    assign out_intel_reserved_ffwd_18_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid28_xmlchecklanguageid53_out_intel_reserved_ffwd_18_0;

    // redist2_sync_together104_in_i_valid_8(DELAY,158)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together104_in_i_valid_8 ( .xin(redist1_sync_together104_in_i_valid_1_q), .xout(redist2_sync_together104_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist3_sync_together104_in_i_valid_9(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together104_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist3_sync_together104_in_i_valid_9_q <= $unsigned(redist2_sync_together104_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg18(REG,146)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist3_sync_together104_in_i_valid_9_q);
        end
    end

    // redist5_i_cmp68_xmlchecklanguageid17_c_8(DELAY,161)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist5_i_cmp68_xmlchecklanguageid17_c_8 ( .xin(i_cmp68_xmlchecklanguageid17_c), .xout(redist5_i_cmp68_xmlchecklanguageid17_c_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_cmp68_phi_decision1499_xor_xmlchecklanguageid31(LOGICAL,36)@10
    assign i_cmp68_phi_decision1499_xor_xmlchecklanguageid31_q = redist5_i_cmp68_xmlchecklanguageid17_c_8_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid29_xmlchecklanguageid54(BLACKBOX,59)@10
    // out out_intel_reserved_ffwd_19_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000018Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid29_xmlchecklanguageid54 (
        .in_predicate_in(GND_q),
        .in_src_data_in_19_0(i_cmp68_phi_decision1499_xor_xmlchecklanguageid31_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_intel_reserved_ffwd_19_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid29_xmlchecklanguageid54_out_intel_reserved_ffwd_19_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,121)
    assign out_intel_reserved_ffwd_19_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid29_xmlchecklanguageid54_out_intel_reserved_ffwd_19_0;

    // valid_fanout_reg19(REG,147)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(redist2_sync_together104_in_i_valid_8_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid30_xmlchecklanguageid55(BLACKBOX,64)@9
    // out out_intel_reserved_ffwd_20_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000023Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid30_xmlchecklanguageid55 (
        .in_predicate_in(GND_q),
        .in_src_data_in_20_0(i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_intel_reserved_ffwd_20_0(i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid30_xmlchecklanguageid55_out_intel_reserved_ffwd_20_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_6_regfree_osync_x(GPOUT,122)
    assign out_intel_reserved_ffwd_20_0 = i_llvm_fpga_ffwd_source_i8_unnamed_xmlchecklanguageid30_xmlchecklanguageid55_out_intel_reserved_ffwd_20_0;

    // valid_fanout_reg20(REG,148)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist3_sync_together104_in_i_valid_9_q);
        end
    end

    // c_i8_1092(CONSTANT,29)
    assign c_i8_1092_q = $unsigned(8'b00001010);

    // c_i8_4891(CONSTANT,32)
    assign c_i8_4891_q = $unsigned(8'b11010000);

    // i_off120_xmlchecklanguageid35(ADD,73)@9
    assign i_off120_xmlchecklanguageid35_a = {1'b0, i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_o_readdata};
    assign i_off120_xmlchecklanguageid35_b = {1'b0, c_i8_4891_q};
    assign i_off120_xmlchecklanguageid35_o = $unsigned(i_off120_xmlchecklanguageid35_a) + $unsigned(i_off120_xmlchecklanguageid35_b);
    assign i_off120_xmlchecklanguageid35_q = i_off120_xmlchecklanguageid35_o[8:0];

    // bgTrunc_i_off120_xmlchecklanguageid35_sel_x(BITSELECT,108)@9
    assign bgTrunc_i_off120_xmlchecklanguageid35_sel_x_b = i_off120_xmlchecklanguageid35_q[7:0];

    // i_unnamed_xmlchecklanguageid36(COMPARE,79)@9
    assign i_unnamed_xmlchecklanguageid36_a = {2'b00, bgTrunc_i_off120_xmlchecklanguageid35_sel_x_b};
    assign i_unnamed_xmlchecklanguageid36_b = {2'b00, c_i8_1092_q};
    assign i_unnamed_xmlchecklanguageid36_o = $unsigned(i_unnamed_xmlchecklanguageid36_a) - $unsigned(i_unnamed_xmlchecklanguageid36_b);
    assign i_unnamed_xmlchecklanguageid36_c[0] = i_unnamed_xmlchecklanguageid36_o[9];

    // i_notlhs_xmlchecklanguageid37(LOGICAL,71)@2
    assign i_notlhs_xmlchecklanguageid37_q = i_cmp94_xmlchecklanguageid27_q ^ VCC_q;

    // i_unnamed_xmlchecklanguageid38(LOGICAL,80)@2 + 1
    assign i_unnamed_xmlchecklanguageid38_qi = i_unnamed_xmlchecklanguageid26_q | i_notlhs_xmlchecklanguageid37_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_xmlchecklanguageid38_delay ( .xin(i_unnamed_xmlchecklanguageid38_qi), .xout(i_unnamed_xmlchecklanguageid38_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_i_unnamed_xmlchecklanguageid38_q_7(DELAY,160)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist4_i_unnamed_xmlchecklanguageid38_q_7 ( .xin(i_unnamed_xmlchecklanguageid38_q), .xout(redist4_i_unnamed_xmlchecklanguageid38_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_unnamed_xmlchecklanguageid39(LOGICAL,81)@9 + 1
    assign i_unnamed_xmlchecklanguageid39_qi = redist4_i_unnamed_xmlchecklanguageid38_q_7_q | i_unnamed_xmlchecklanguageid36_c;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_xmlchecklanguageid39_delay ( .xin(i_unnamed_xmlchecklanguageid39_qi), .xout(i_unnamed_xmlchecklanguageid39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid31_xmlchecklanguageid56(BLACKBOX,60)@10
    // out out_intel_reserved_ffwd_21_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000019Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid31_xmlchecklanguageid56 (
        .in_predicate_in(GND_q),
        .in_src_data_in_21_0(i_unnamed_xmlchecklanguageid39_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_intel_reserved_ffwd_21_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid31_xmlchecklanguageid56_out_intel_reserved_ffwd_21_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_7_regfree_osync_x(GPOUT,123)
    assign out_intel_reserved_ffwd_21_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid31_xmlchecklanguageid56_out_intel_reserved_ffwd_21_0;

    // valid_fanout_reg21(REG,149)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist3_sync_together104_in_i_valid_9_q);
        end
    end

    // i_unnamed_xmlchecklanguageid43(LOGICAL,89)@10
    assign i_unnamed_xmlchecklanguageid43_q = i_unnamed_xmlchecklanguageid39_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid32_xmlchecklanguageid57(BLACKBOX,61)@10
    // out out_intel_reserved_ffwd_22_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000020Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid32_xmlchecklanguageid57 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(i_unnamed_xmlchecklanguageid43_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid32_xmlchecklanguageid57_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_8_regfree_osync_x(GPOUT,124)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid32_xmlchecklanguageid57_out_intel_reserved_ffwd_22_0;

    // valid_fanout_reg22(REG,150)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist3_sync_together104_in_i_valid_9_q);
        end
    end

    // c_i8_2695(CONSTANT,30)
    assign c_i8_2695_q = $unsigned(8'b00011010);

    // c_i8_6594(CONSTANT,33)
    assign c_i8_6594_q = $unsigned(8'b10111111);

    // c_i8_3393(CONSTANT,31)
    assign c_i8_3393_q = $unsigned(8'b11011111);

    // i_unnamed_xmlchecklanguageid40(LOGICAL,82)@9
    assign i_unnamed_xmlchecklanguageid40_q = i_llvm_fpga_mem_lm7121_xmlchecklanguageid34_out_o_readdata & c_i8_3393_q;

    // i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select(BITSELECT,155)@9
    assign i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select_b = i_unnamed_xmlchecklanguageid40_q[4:0];
    assign i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select_c = i_unnamed_xmlchecklanguageid40_q[7:6];

    // i_unnamed_xmlchecklanguageid40_vt_join(BITJOIN,84)@9
    assign i_unnamed_xmlchecklanguageid40_vt_join_q = {i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select_c, GND_q, i_unnamed_xmlchecklanguageid40_vt_select_4_merged_bit_select_b};

    // i_unnamed_xmlchecklanguageid41(ADD,87)@9
    assign i_unnamed_xmlchecklanguageid41_a = {1'b0, i_unnamed_xmlchecklanguageid40_vt_join_q};
    assign i_unnamed_xmlchecklanguageid41_b = {1'b0, c_i8_6594_q};
    assign i_unnamed_xmlchecklanguageid41_o = $unsigned(i_unnamed_xmlchecklanguageid41_a) + $unsigned(i_unnamed_xmlchecklanguageid41_b);
    assign i_unnamed_xmlchecklanguageid41_q = i_unnamed_xmlchecklanguageid41_o[8:0];

    // bgTrunc_i_unnamed_xmlchecklanguageid41_sel_x(BITSELECT,110)@9
    assign bgTrunc_i_unnamed_xmlchecklanguageid41_sel_x_b = i_unnamed_xmlchecklanguageid41_q[7:0];

    // i_unnamed_xmlchecklanguageid42(COMPARE,88)@9 + 1
    assign i_unnamed_xmlchecklanguageid42_a = {2'b00, bgTrunc_i_unnamed_xmlchecklanguageid41_sel_x_b};
    assign i_unnamed_xmlchecklanguageid42_b = {2'b00, c_i8_2695_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_xmlchecklanguageid42_o <= 10'b0;
        end
        else
        begin
            i_unnamed_xmlchecklanguageid42_o <= $unsigned(i_unnamed_xmlchecklanguageid42_a) - $unsigned(i_unnamed_xmlchecklanguageid42_b);
        end
    end
    assign i_unnamed_xmlchecklanguageid42_c[0] = i_unnamed_xmlchecklanguageid42_o[9];

    // i_unnamed_xmlchecklanguageid44(LOGICAL,90)@10
    assign i_unnamed_xmlchecklanguageid44_q = i_unnamed_xmlchecklanguageid42_c & i_unnamed_xmlchecklanguageid43_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid33_xmlchecklanguageid58(BLACKBOX,62)@10
    // out out_intel_reserved_ffwd_23_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000021Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid33_xmlchecklanguageid58 (
        .in_predicate_in(GND_q),
        .in_src_data_in_23_0(i_unnamed_xmlchecklanguageid44_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid33_xmlchecklanguageid58_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_9_regfree_osync_x(GPOUT,125)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid33_xmlchecklanguageid58_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg23(REG,151)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist3_sync_together104_in_i_valid_9_q);
        end
    end

    // i_notlhs2_xmlchecklanguageid45(LOGICAL,70)@10
    assign i_notlhs2_xmlchecklanguageid45_q = i_unnamed_xmlchecklanguageid42_c ^ VCC_q;

    // i_not1_xmlchecklanguageid46(LOGICAL,68)@10
    assign i_not1_xmlchecklanguageid46_q = i_unnamed_xmlchecklanguageid39_q | i_notlhs2_xmlchecklanguageid45_q;

    // i_unnamed_xmlchecklanguageid47(LOGICAL,91)@10
    assign i_unnamed_xmlchecklanguageid47_q = redist5_i_cmp68_xmlchecklanguageid17_c_8_q | i_not1_xmlchecklanguageid46_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid34_xmlchecklanguageid59(BLACKBOX,63)@10
    // out out_intel_reserved_ffwd_24_0@20000000
    xmlCheckLanguageID_i_llvm_fpga_ffwd_sourA000022Z_xmlchecklanguageid0 thei_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid34_xmlchecklanguageid59 (
        .in_predicate_in(GND_q),
        .in_src_data_in_24_0(i_unnamed_xmlchecklanguageid47_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid34_xmlchecklanguageid59_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_10_regfree_osync_x(GPOUT,126)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i1_unnamed_xmlchecklanguageid34_xmlchecklanguageid59_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg0(REG,128)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together104_in_i_valid_9_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,127)@10
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_xmlCheckLanguageID35_0_tpl = GND_q;
    assign out_unnamed_xmlCheckLanguageID7 = GND_q;

endmodule
