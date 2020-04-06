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

// SystemVerilog created from cesarcipher_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_cesarcipher0
// SystemVerilog created on Mon Apr  6 10:17:28 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module cesarcipher_i_sfc_logic_s_c1_in_wt_entry_s_c1_enter_cesarcipher0 (
    input wire [63:0] in_unnamed_cesarcipher3_cesarcipher_avm_readdata,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_writeack,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest,
    input wire [0:0] in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid,
    output wire [63:0] out_unnamed_cesarcipher3_cesarcipher_avm_address,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_enable,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_read,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_write,
    output wire [63:0] out_unnamed_cesarcipher3_cesarcipher_avm_writedata,
    output wire [7:0] out_unnamed_cesarcipher3_cesarcipher_avm_byteenable,
    output wire [0:0] out_unnamed_cesarcipher3_cesarcipher_avm_burstcount,
    input wire [0:0] in_flush,
    output wire [63:0] out_intel_reserved_ffwd_0_0,
    output wire [0:0] out_intel_reserved_ffwd_1_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_cesarcipher1,
    output wire [0:0] out_unnamed_cesarcipher6_0_tpl,
    input wire [0:0] in_c1_eni1_0_tpl,
    input wire [63:0] in_c1_eni1_1_tpl,
    input wire [31:0] in_c1_eni1_2_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] i_cmp220_cesarcipher4_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_cesarcipher5_cesarcipher7_out_intel_reserved_ffwd_1_0;
    wire [63:0] i_llvm_fpga_ffwd_source_p1024i8_unnamed_cesarcipher4_cesarcipher6_out_intel_reserved_ffwd_0_0;
    wire [7:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_o_readdata;
    wire [63:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;
    wire [7:0] c_i8_012_recast_x_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    reg [63:0] redist0_sync_together14_aunroll_x_in_c1_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together14_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist1_sync_together14_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist1_sync_together14_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist1_sync_together14_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist1_sync_together14_aunroll_x_in_i_valid_5_delay_3;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg1(REG,20)@2 + 1
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

    // redist0_sync_together14_aunroll_x_in_c1_eni1_1_tpl_1(DELAY,23)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together14_aunroll_x_in_c1_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together14_aunroll_x_in_c1_eni1_1_tpl_1_q <= $unsigned(in_c1_eni1_1_tpl);
        end
    end

    // i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3(BLACKBOX,10)@3
    // in in_i_stall@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    // out out_unnamed_cesarcipher3_cesarcipher_avm_address@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_burstcount@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_byteenable@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_enable@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_read@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_write@20000000
    // out out_unnamed_cesarcipher3_cesarcipher_avm_writedata@20000000
    cesarcipher_i_llvm_fpga_mem_unnamed_3_cesarcipher0 thei_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3 (
        .in_flush(in_flush),
        .in_i_address(redist0_sync_together14_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_i_predicate(GND_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg1_q),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdata(in_unnamed_cesarcipher3_cesarcipher_avm_readdata),
        .in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid(in_unnamed_cesarcipher3_cesarcipher_avm_readdatavalid),
        .in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest(in_unnamed_cesarcipher3_cesarcipher_avm_waitrequest),
        .in_unnamed_cesarcipher3_cesarcipher_avm_writeack(in_unnamed_cesarcipher3_cesarcipher_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_cesarcipher3_cesarcipher_avm_address(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_address),
        .out_unnamed_cesarcipher3_cesarcipher_avm_burstcount(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount),
        .out_unnamed_cesarcipher3_cesarcipher_avm_byteenable(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_enable(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_enable),
        .out_unnamed_cesarcipher3_cesarcipher_avm_read(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_read),
        .out_unnamed_cesarcipher3_cesarcipher_avm_write(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_write),
        .out_unnamed_cesarcipher3_cesarcipher_avm_writedata(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_unnamed_cesarcipher3_cesarcipher_avm_address = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_address;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_enable = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_enable;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_read = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_read;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_write = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_write;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_writedata = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_writedata;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_byteenable = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_byteenable;
    assign out_unnamed_cesarcipher3_cesarcipher_avm_burstcount = i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_unnamed_cesarcipher3_cesarcipher_avm_burstcount;

    // valid_fanout_reg2(REG,21)@2 + 1
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

    // i_llvm_fpga_ffwd_source_p1024i8_unnamed_cesarcipher4_cesarcipher6(BLACKBOX,9)@3
    // out out_intel_reserved_ffwd_0_0@20000000
    cesarcipher_i_llvm_fpga_ffwd_source_p1024i8_unnamed_4_cesarcipher0 thei_llvm_fpga_ffwd_source_p1024i8_unnamed_cesarcipher4_cesarcipher6 (
        .in_predicate_in(GND_q),
        .in_src_data_in_0_0(redist0_sync_together14_aunroll_x_in_c1_eni1_1_tpl_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_intel_reserved_ffwd_0_0(i_llvm_fpga_ffwd_source_p1024i8_unnamed_cesarcipher4_cesarcipher6_out_intel_reserved_ffwd_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,13)
    assign out_intel_reserved_ffwd_0_0 = i_llvm_fpga_ffwd_source_p1024i8_unnamed_cesarcipher4_cesarcipher6_out_intel_reserved_ffwd_0_0;

    // redist1_sync_together14_aunroll_x_in_i_valid_5(DELAY,24)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_3 <= '0;
            redist1_sync_together14_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(in_i_valid);
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_1 <= redist1_sync_together14_aunroll_x_in_i_valid_5_delay_0;
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_2 <= redist1_sync_together14_aunroll_x_in_i_valid_5_delay_1;
            redist1_sync_together14_aunroll_x_in_i_valid_5_delay_3 <= redist1_sync_together14_aunroll_x_in_i_valid_5_delay_2;
            redist1_sync_together14_aunroll_x_in_i_valid_5_q <= redist1_sync_together14_aunroll_x_in_i_valid_5_delay_3;
        end
    end

    // valid_fanout_reg3(REG,22)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together14_aunroll_x_in_i_valid_5_q);
        end
    end

    // c_i8_012_recast_x(CONSTANT,15)
    assign c_i8_012_recast_x_q = $unsigned(8'b00000000);

    // i_cmp220_cesarcipher4(LOGICAL,7)@8
    assign i_cmp220_cesarcipher4_q = $unsigned(i_llvm_fpga_mem_unnamed_cesarcipher3_cesarcipher3_out_o_readdata == c_i8_012_recast_x_q ? 1'b1 : 1'b0);

    // i_llvm_fpga_ffwd_source_i1_unnamed_cesarcipher5_cesarcipher7(BLACKBOX,8)@8
    // out out_intel_reserved_ffwd_1_0@20000000
    cesarcipher_i_llvm_fpga_ffwd_source_i1_unnamed_5_cesarcipher0 thei_llvm_fpga_ffwd_source_i1_unnamed_cesarcipher5_cesarcipher7 (
        .in_predicate_in(GND_q),
        .in_src_data_in_1_0(i_cmp220_cesarcipher4_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_intel_reserved_ffwd_1_0(i_llvm_fpga_ffwd_source_i1_unnamed_cesarcipher5_cesarcipher7_out_intel_reserved_ffwd_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_1_0 = i_llvm_fpga_ffwd_source_i1_unnamed_cesarcipher5_cesarcipher7_out_intel_reserved_ffwd_1_0;

    // valid_fanout_reg0(REG,19)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together14_aunroll_x_in_i_valid_5_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,17)@8
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_cesarcipher1 = GND_q;
    assign out_unnamed_cesarcipher6_0_tpl = GND_q;

endmodule
