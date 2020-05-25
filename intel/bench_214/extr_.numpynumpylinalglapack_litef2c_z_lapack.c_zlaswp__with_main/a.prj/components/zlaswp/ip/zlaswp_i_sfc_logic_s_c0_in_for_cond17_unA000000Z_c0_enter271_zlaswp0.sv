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

// SystemVerilog created from zlaswp_i_sfc_logic_s_c0_in_for_cond17_unA000000Z_c0_enter271_zlaswp0
// SystemVerilog created on Sun May 24 22:38:03 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module zlaswp_i_sfc_logic_s_c0_in_for_cond17_unA000000Z_c0_enter271_zlaswp0 (
    input wire [63:0] in_lm8417_zlaswp_avm_readdata,
    input wire [0:0] in_lm8417_zlaswp_avm_writeack,
    input wire [0:0] in_lm8417_zlaswp_avm_waitrequest,
    input wire [0:0] in_lm8417_zlaswp_avm_readdatavalid,
    output wire [63:0] out_lm8417_zlaswp_avm_address,
    output wire [0:0] out_lm8417_zlaswp_avm_enable,
    output wire [0:0] out_lm8417_zlaswp_avm_read,
    output wire [0:0] out_lm8417_zlaswp_avm_write,
    output wire [63:0] out_lm8417_zlaswp_avm_writedata,
    output wire [7:0] out_lm8417_zlaswp_avm_byteenable,
    output wire [0:0] out_lm8417_zlaswp_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_15_0,
    input wire [31:0] in_intel_reserved_ffwd_16_0,
    input wire [0:0] in_intel_reserved_ffwd_17_0,
    input wire [0:0] in_intel_reserved_ffwd_18_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_intel_reserved_ffwd_5_0,
    output wire [31:0] out_intel_reserved_ffwd_22_0,
    input wire [0:0] in_i_valid,
    output wire [31:0] out_intel_reserved_ffwd_23_0,
    output wire [31:0] out_intel_reserved_ffwd_24_0,
    output wire [0:0] out_c0_exi1272_0_tpl,
    output wire [0:0] out_c0_exi1272_1_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_zlaswp13,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_126_q;
    wire [31:0] c_i32_127_q;
    wire [32:0] i_add51_zlaswp7_a;
    wire [32:0] i_add51_zlaswp7_b;
    logic [32:0] i_add51_zlaswp7_o;
    wire [32:0] i_add51_zlaswp7_q;
    wire [32:0] i_add53_zlaswp9_a;
    wire [32:0] i_add53_zlaswp9_b;
    logic [32:0] i_add53_zlaswp9_o;
    wire [32:0] i_add53_zlaswp9_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp149_zlaswp1_out_dest_data_out_5_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp41_zlaswp4_out_dest_data_out_18_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp42_zlaswp10_out_dest_data_out_17_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi166_zlaswp8_out_dest_data_out_15_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi168_zlaswp6_out_dest_data_out_16_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_incx83144_zlaswp3_out_dest_data_out_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp43_zlaswp11_out_intel_reserved_ffwd_22_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp44_zlaswp12_out_intel_reserved_ffwd_23_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp45_zlaswp13_out_intel_reserved_ffwd_24_0;
    wire [63:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm8417_zlaswp5_out_o_readdata;
    wire [0:0] i_select100_zlaswp2_s;
    reg [31:0] i_select100_zlaswp2_q;
    wire [31:0] i_select100_zlaswp2_vt_join_q;
    wire [30:0] i_select100_zlaswp2_vt_select_31_b;
    wire [31:0] bgTrunc_i_add51_zlaswp7_sel_x_b;
    wire [31:0] bgTrunc_i_add53_zlaswp9_sel_x_b;
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
    reg [0:0] redist0_sync_together36_in_i_valid_7_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg4(REG,53)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg3(REG,52)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp41_zlaswp4(BLACKBOX,21)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i1_unnamed_41_zlaswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp41_zlaswp4 (
        .in_intel_reserved_ffwd_18_0(in_intel_reserved_ffwd_18_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_dest_data_out_18_0(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp41_zlaswp4_out_dest_data_out_18_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,51)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_incx83144_zlaswp3(BLACKBOX,25)@1
    zlaswp_i_llvm_fpga_ffwd_dest_p1024i32_incx83144_0 thei_llvm_fpga_ffwd_dest_p1024i32_incx83144_zlaswp3 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_incx83144_zlaswp3_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm8417_zlaswp5(BLACKBOX,29)@1
    // in in_i_stall@20000000
    // out out_lm8417_zlaswp_avm_address@20000000
    // out out_lm8417_zlaswp_avm_burstcount@20000000
    // out out_lm8417_zlaswp_avm_byteenable@20000000
    // out out_lm8417_zlaswp_avm_enable@20000000
    // out out_lm8417_zlaswp_avm_read@20000000
    // out out_lm8417_zlaswp_avm_write@20000000
    // out out_lm8417_zlaswp_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    zlaswp_i_llvm_fpga_mem_lm8417_0 thei_llvm_fpga_mem_lm8417_zlaswp5 (
        .in_flush(in_flush),
        .in_i_address(i_llvm_fpga_ffwd_dest_p1024i32_incx83144_zlaswp3_out_dest_data_out_2_0),
        .in_i_predicate(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp41_zlaswp4_out_dest_data_out_18_0),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg4_q),
        .in_lm8417_zlaswp_avm_readdata(in_lm8417_zlaswp_avm_readdata),
        .in_lm8417_zlaswp_avm_readdatavalid(in_lm8417_zlaswp_avm_readdatavalid),
        .in_lm8417_zlaswp_avm_waitrequest(in_lm8417_zlaswp_avm_waitrequest),
        .in_lm8417_zlaswp_avm_writeack(in_lm8417_zlaswp_avm_writeack),
        .out_lm8417_zlaswp_avm_address(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_address),
        .out_lm8417_zlaswp_avm_burstcount(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_burstcount),
        .out_lm8417_zlaswp_avm_byteenable(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_byteenable),
        .out_lm8417_zlaswp_avm_enable(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_enable),
        .out_lm8417_zlaswp_avm_read(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_read),
        .out_lm8417_zlaswp_avm_write(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_write),
        .out_lm8417_zlaswp_avm_writedata(i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm8417_zlaswp5_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_lm8417_zlaswp_avm_address = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_address;
    assign out_lm8417_zlaswp_avm_enable = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_enable;
    assign out_lm8417_zlaswp_avm_read = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_read;
    assign out_lm8417_zlaswp_avm_write = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_write;
    assign out_lm8417_zlaswp_avm_writedata = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_writedata;
    assign out_lm8417_zlaswp_avm_byteenable = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_byteenable;
    assign out_lm8417_zlaswp_avm_burstcount = i_llvm_fpga_mem_lm8417_zlaswp5_out_lm8417_zlaswp_avm_burstcount;

    // valid_fanout_reg8(REG,57)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_127(CONSTANT,15)
    assign c_i32_127_q = $unsigned(32'b00000000000000000000000000000001);

    // c_i32_126(CONSTANT,14)
    assign c_i32_126_q = $unsigned(32'b11111111111111111111111111111111);

    // valid_fanout_reg1(REG,50)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp149_zlaswp1(BLACKBOX,20)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i1_cmp149_0 thei_llvm_fpga_ffwd_dest_i1_cmp149_zlaswp1 (
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_5_0(i_llvm_fpga_ffwd_dest_i1_cmp149_zlaswp1_out_dest_data_out_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_select100_zlaswp2(MUX,30)@1
    assign i_select100_zlaswp2_s = i_llvm_fpga_ffwd_dest_i1_cmp149_zlaswp1_out_dest_data_out_5_0;
    always @(i_select100_zlaswp2_s or c_i32_126_q or c_i32_127_q)
    begin
        unique case (i_select100_zlaswp2_s)
            1'b0 : i_select100_zlaswp2_q = c_i32_126_q;
            1'b1 : i_select100_zlaswp2_q = c_i32_127_q;
            default : i_select100_zlaswp2_q = 32'b0;
        endcase
    end

    // i_select100_zlaswp2_vt_select_31(BITSELECT,33)@1
    assign i_select100_zlaswp2_vt_select_31_b = i_select100_zlaswp2_q[31:1];

    // i_select100_zlaswp2_vt_join(BITJOIN,32)@1
    assign i_select100_zlaswp2_vt_join_q = {i_select100_zlaswp2_vt_select_31_b, VCC_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp43_zlaswp11(BLACKBOX,26)@1
    // out out_intel_reserved_ffwd_22_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_43_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp43_zlaswp11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_22_0(i_select100_zlaswp2_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_22_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp43_zlaswp11_out_intel_reserved_ffwd_22_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,41)
    assign out_intel_reserved_ffwd_22_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp43_zlaswp11_out_intel_reserved_ffwd_22_0;

    // redist0_sync_together36_in_i_valid_7(DELAY,62)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together36_in_i_valid_7 ( .xin(in_i_valid), .xout(redist0_sync_together36_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,58)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist0_sync_together36_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg5(REG,54)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist0_sync_together36_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi168_zlaswp6(BLACKBOX,24)@8
    zlaswp_i_llvm_fpga_ffwd_dest_i32_zz7_pipA000000Zplace_phi168_zlaswp0 thei_llvm_fpga_ffwd_dest_i32_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi168_zlaswp6 (
        .in_intel_reserved_ffwd_16_0(in_intel_reserved_ffwd_16_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_16_0(i_llvm_fpga_ffwd_dest_i32_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi168_zlaswp6_out_dest_data_out_16_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add51_zlaswp7(ADD,18)@8
    assign i_add51_zlaswp7_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_zz7zlaswp_pip8type_3_s_s_s_s_s_e2ix_static_0_replace_phi168_zlaswp6_out_dest_data_out_16_0};
    assign i_add51_zlaswp7_b = {1'b0, i_llvm_fpga_mem_lm8417_zlaswp5_out_o_readdata};
    assign i_add51_zlaswp7_o = $unsigned(i_add51_zlaswp7_a) + $unsigned(i_add51_zlaswp7_b);
    assign i_add51_zlaswp7_q = i_add51_zlaswp7_o[32:0];

    // bgTrunc_i_add51_zlaswp7_sel_x(BITSELECT,44)@8
    assign bgTrunc_i_add51_zlaswp7_sel_x_b = i_add51_zlaswp7_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp44_zlaswp12(BLACKBOX,27)@8
    // out out_intel_reserved_ffwd_23_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_44_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp44_zlaswp12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_23_0(bgTrunc_i_add51_zlaswp7_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_intel_reserved_ffwd_23_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp44_zlaswp12_out_intel_reserved_ffwd_23_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,46)
    assign out_intel_reserved_ffwd_23_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp44_zlaswp12_out_intel_reserved_ffwd_23_0;

    // valid_fanout_reg10(REG,59)@0 + 1
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

    // valid_fanout_reg6(REG,55)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi166_zlaswp8(BLACKBOX,23)@1
    zlaswp_i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi166_0 thei_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi166_zlaswp8 (
        .in_intel_reserved_ffwd_15_0(in_intel_reserved_ffwd_15_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_15_0(i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi166_zlaswp8_out_dest_data_out_15_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add53_zlaswp9(ADD,19)@1
    assign i_add53_zlaswp9_a = {1'b0, i_llvm_fpga_ffwd_dest_i32_storemerge70_replace_phi166_zlaswp8_out_dest_data_out_15_0};
    assign i_add53_zlaswp9_b = {1'b0, i_select100_zlaswp2_vt_join_q};
    assign i_add53_zlaswp9_o = $unsigned(i_add53_zlaswp9_a) + $unsigned(i_add53_zlaswp9_b);
    assign i_add53_zlaswp9_q = i_add53_zlaswp9_o[32:0];

    // bgTrunc_i_add53_zlaswp9_sel_x(BITSELECT,45)@1
    assign bgTrunc_i_add53_zlaswp9_sel_x_b = i_add53_zlaswp9_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp45_zlaswp13(BLACKBOX,28)@1
    // out out_intel_reserved_ffwd_24_0@20000000
    zlaswp_i_llvm_fpga_ffwd_source_i32_unnamed_45_zlaswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_zlaswp45_zlaswp13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_24_0(bgTrunc_i_add53_zlaswp9_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_24_0(i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp45_zlaswp13_out_intel_reserved_ffwd_24_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,47)
    assign out_intel_reserved_ffwd_24_0 = i_llvm_fpga_ffwd_source_i32_unnamed_zlaswp45_zlaswp13_out_intel_reserved_ffwd_24_0;

    // valid_fanout_reg0(REG,49)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist0_sync_together36_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg7(REG,56)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist0_sync_together36_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp42_zlaswp10(BLACKBOX,22)@8
    zlaswp_i_llvm_fpga_ffwd_dest_i1_unnamed_42_zlaswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp42_zlaswp10 (
        .in_intel_reserved_ffwd_17_0(in_intel_reserved_ffwd_17_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_17_0(i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp42_zlaswp10_out_dest_data_out_17_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // sync_out_aunroll_x(GPOUT,48)@8
    assign out_c0_exi1272_0_tpl = GND_q;
    assign out_c0_exi1272_1_tpl = i_llvm_fpga_ffwd_dest_i1_unnamed_zlaswp42_zlaswp10_out_dest_data_out_17_0;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_zlaswp13 = GND_q;

endmodule
