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

// SystemVerilog created from stb_from_utf8_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_stb_from_utf80
// SystemVerilog created on Sun May 24 22:41:05 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stb_from_utf8_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_stb_from_utf80 (
    input wire [63:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest,
    input wire [0:0] in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid,
    output wire [63:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_address,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_read,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_write,
    output wire [63:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata,
    output wire [7:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable,
    output wire [0:0] out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [63:0] out_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    output wire [7:0] out_intel_reserved_ffwd_4_0,
    output wire [0:0] out_intel_reserved_ffwd_5_0,
    output wire [0:0] out_intel_reserved_ffwd_6_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stb_from_utf81,
    output wire [0:0] out_unnamed_stb_from_utf811_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [63:0] in_c1_eni1_2_tpl,
    input wire [31:0] in_c1_eni1_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_124_q;
    wire [32:0] i_dec_stb_from_utf83_a;
    wire [32:0] i_dec_stb_from_utf83_b;
    logic [32:0] i_dec_stb_from_utf83_o;
    wire [32:0] i_dec_stb_from_utf83_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf810_stb_from_utf814_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf89_stb_from_utf813_out_intel_reserved_ffwd_5_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf86_stb_from_utf810_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf87_stb_from_utf811_out_intel_reserved_ffwd_3_0;
    wire [7:0] i_llvm_fpga_ffwd_source_i8_unnamed_stb_from_utf88_stb_from_utf812_out_intel_reserved_ffwd_4_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i32_unnamed_stb_from_utf84_stb_from_utf88_out_intel_reserved_ffwd_0_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_stb_from_utf85_stb_from_utf89_out_intel_reserved_ffwd_1_0;
    wire [7:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;
    wire [0:0] i_tobool62_phi_decision395_xor_stb_from_utf87_q;
    wire [0:0] i_tobool62_stb_from_utf85_q;
    wire [31:0] bgTrunc_i_dec_stb_from_utf83_sel_x_b;
    wire [7:0] c_i8_025_recast_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    reg [63:0] redist0_sync_together28_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [63:0] redist1_sync_together28_aunroll_x_in_c1_eni1_2_tpl_1_q;
    reg [31:0] redist2_sync_together28_aunroll_x_in_c1_eni1_3_tpl_1_q;
    reg [0:0] redist3_sync_together28_aunroll_x_in_i_valid_6_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,41)@2 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist1_sync_together28_aunroll_x_in_c1_eni1_2_tpl_1(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together28_aunroll_x_in_c1_eni1_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together28_aunroll_x_in_c1_eni1_2_tpl_1_q <= $unsigned(in_c1_eni1_2_tpl);
        end
    end

    // i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84(BLACKBOX,23)@3
    // in in_i_stall@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_address@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_read@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_write@20000000
    // out out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata@20000000
    stb_from_utf8_i_llvm_fpga_mem_unnamed_3_stb_from_utf80 thei_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84 (
        .in_flush(in_flush),
        .in_i_address(redist1_sync_together28_aunroll_x_in_c1_eni1_2_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata(in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdata),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid(in_unnamed_stb_from_utf83_stb_from_utf8_avm_readdatavalid),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest(in_unnamed_stb_from_utf83_stb_from_utf8_avm_waitrequest),
        .in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack(in_unnamed_stb_from_utf83_stb_from_utf8_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_address(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_read(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_write(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write),
        .out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_address = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_address;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_enable;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_read = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_read;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_write = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_write;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_writedata;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_byteenable;
    assign out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount = i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_unnamed_stb_from_utf83_stb_from_utf8_avm_burstcount;

    // valid_fanout_reg2(REG,42)@2 + 1
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

    // redist0_sync_together28_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together28_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together28_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_p1024i32_unnamed_stb_from_utf84_stb_from_utf88(BLACKBOX,21)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_p1A000000Zmed_4_stb_from_utf80 thei_llvm_fpga_ffwd_source_p1024i32_unnamed_stb_from_utf84_stb_from_utf88 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist0_sync_together28_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i32_unnamed_stb_from_utf84_stb_from_utf88_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,28)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i32_unnamed_stb_from_utf84_stb_from_utf88_out_intel_reserved_ffwd_0_0;

    // valid_fanout_reg3(REG,43)@2 + 1
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

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_stb_from_utf85_stb_from_utf89(BLACKBOX,22)@3
    // out out_intel_reserved_ffwd_1_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_p1A000000Zmed_5_stb_from_utf80 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_stb_from_utf85_stb_from_utf89 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(redist1_sync_together28_aunroll_x_in_c1_eni1_2_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_stb_from_utf85_stb_from_utf89_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,32)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_stb_from_utf85_stb_from_utf89_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg4(REG,44)@2 + 1
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

    // redist2_sync_together28_aunroll_x_in_c1_eni1_3_tpl_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together28_aunroll_x_in_c1_eni1_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together28_aunroll_x_in_c1_eni1_3_tpl_1_q <= $unsigned(in_c1_eni1_3_tpl);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf86_stb_from_utf810(BLACKBOX,18)@3
    // out out_intel_reserved_ffwd_2_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_i32_unnamed_6_stb_from_utf80 thei_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf86_stb_from_utf810 (
        .in_predicate_in(GND_q),
        .in_src_data_in_2_0(redist2_sync_together28_aunroll_x_in_c1_eni1_3_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf86_stb_from_utf810_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_regfree_osync_x(GPOUT,33)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf86_stb_from_utf810_out_intel_reserved_ffwd_2_0;

    // valid_fanout_reg5(REG,45)@2 + 1
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

    // c_i32_124(CONSTANT,12)
    assign c_i32_124_q = $unsigned(32'b11111111111111111111111111111111);

    // i_dec_stb_from_utf83(ADD,15)@3
    assign i_dec_stb_from_utf83_a = {1'b0, redist2_sync_together28_aunroll_x_in_c1_eni1_3_tpl_1_q};
    assign i_dec_stb_from_utf83_b = {1'b0, c_i32_124_q};
    assign i_dec_stb_from_utf83_o = $unsigned(i_dec_stb_from_utf83_a) + $unsigned(i_dec_stb_from_utf83_b);
    assign i_dec_stb_from_utf83_q = i_dec_stb_from_utf83_o[32:0];

    // bgTrunc_i_dec_stb_from_utf83_sel_x(BITSELECT,30)@3
    assign bgTrunc_i_dec_stb_from_utf83_sel_x_b = i_dec_stb_from_utf83_q[31:0];

    // i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf87_stb_from_utf811(BLACKBOX,19)@3
    // out out_intel_reserved_ffwd_3_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_i32_unnamed_7_stb_from_utf80 thei_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf87_stb_from_utf811 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(bgTrunc_i_dec_stb_from_utf83_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf87_stb_from_utf811_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_regfree_osync_x(GPOUT,34)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_stb_from_utf87_stb_from_utf811_out_intel_reserved_ffwd_3_0;

    // redist3_sync_together28_aunroll_x_in_i_valid_6(DELAY,53)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist3_sync_together28_aunroll_x_in_i_valid_6 ( .xin(in_i_valid), .xout(redist3_sync_together28_aunroll_x_in_i_valid_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg6(REG,46)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist3_sync_together28_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i8_unnamed_stb_from_utf88_stb_from_utf812(BLACKBOX,20)@9
    // out out_intel_reserved_ffwd_4_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_i8_unnamed_8_stb_from_utf80 thei_llvm_fpga_ffwd_source_i8_unnamed_stb_from_utf88_stb_from_utf812 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_o_readdata),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i8_unnamed_stb_from_utf88_stb_from_utf812_out_intel_reserved_ffwd_4_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_3_regfree_osync_x(GPOUT,35)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i8_unnamed_stb_from_utf88_stb_from_utf812_out_intel_reserved_ffwd_4_0;

    // valid_fanout_reg7(REG,47)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together28_aunroll_x_in_i_valid_6_q);
        end
    end

    // c_i8_025_recast_x(CONSTANT,31)
    assign c_i8_025_recast_x_q = $unsigned(8'b00000000);

    // i_tobool62_stb_from_utf85(LOGICAL,25)@9
    assign i_tobool62_stb_from_utf85_q = $unsigned(i_llvm_fpga_mem_unnamed_stb_from_utf83_stb_from_utf84_out_o_readdata == c_i8_025_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf89_stb_from_utf813(BLACKBOX,17)@9
    // out out_intel_reserved_ffwd_5_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_i1_unnamed_9_stb_from_utf80 thei_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf89_stb_from_utf813 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_tobool62_stb_from_utf85_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf89_stb_from_utf813_out_intel_reserved_ffwd_5_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_4_regfree_osync_x(GPOUT,36)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf89_stb_from_utf813_out_intel_reserved_ffwd_5_0;

    // valid_fanout_reg8(REG,48)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together28_aunroll_x_in_i_valid_6_q);
        end
    end

    // i_tobool62_phi_decision395_xor_stb_from_utf87(LOGICAL,24)@9
    assign i_tobool62_phi_decision395_xor_stb_from_utf87_q = i_tobool62_stb_from_utf85_q ^ VCC_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf810_stb_from_utf814(BLACKBOX,16)@9
    // out out_intel_reserved_ffwd_6_0@20000000
    stb_from_utf8_i_llvm_fpga_ffwd_source_i1_unnamed_10_stb_from_utf80 thei_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf810_stb_from_utf814 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(i_tobool62_phi_decision395_xor_stb_from_utf87_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf810_stb_from_utf814_out_intel_reserved_ffwd_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_5_regfree_osync_x(GPOUT,37)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i1_unnamed_stb_from_utf810_stb_from_utf814_out_intel_reserved_ffwd_6_0;

    // valid_fanout_reg0(REG,40)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together28_aunroll_x_in_i_valid_6_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,38)@9
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stb_from_utf81 = GND_q;
    assign out_unnamed_stb_from_utf811_0_tpl = GND_q;

endmodule
