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

// SystemVerilog created from claswp_i_sfc_logic_s_c0_in_for_cond_unifA000000Z_c0_enter275_claswp0
// SystemVerilog created on Sun May 24 22:37:44 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module claswp_i_sfc_logic_s_c0_in_for_cond_unifA000000Z_c0_enter275_claswp0 (
    input wire [63:0] in_lm6118_claswp_avm_readdata,
    input wire [0:0] in_lm6118_claswp_avm_writeack,
    input wire [0:0] in_lm6118_claswp_avm_waitrequest,
    input wire [0:0] in_lm6118_claswp_avm_readdatavalid,
    output wire [63:0] out_lm6118_claswp_avm_address,
    output wire [0:0] out_lm6118_claswp_avm_enable,
    output wire [0:0] out_lm6118_claswp_avm_read,
    output wire [0:0] out_lm6118_claswp_avm_write,
    output wire [63:0] out_lm6118_claswp_avm_writedata,
    output wire [7:0] out_lm6118_claswp_avm_byteenable,
    output wire [0:0] out_lm6118_claswp_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [31:0] in_intel_reserved_ffwd_11_0,
    input wire [0:0] in_intel_reserved_ffwd_6_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_26_0,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_intel_reserved_ffwd_27_0,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_claswp13,
    output wire [0:0] out_unnamed_claswp53_0_tpl,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_124_q;
    wire [0:0] i_cmp59_claswp5_q;
    wire [31:0] i_inc61_claswp8_q;
    wire [31:0] i_inc61_claswp8_vt_join_q;
    wire [30:0] i_inc61_claswp8_vt_select_31_b;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_claswp49_claswp2_out_dest_data_out_8_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_unnamed_claswp50_claswp10_out_dest_data_out_6_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_shl159_claswp7_out_dest_data_out_11_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_shl160_claswp4_out_dest_data_out_11_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_n77140_claswp1_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_claswp52_claswp13_out_intel_reserved_ffwd_27_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_claswp51_claswp12_out_intel_reserved_ffwd_26_0;
    wire [63:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_write;
    wire [63:0] i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm6118_claswp3_out_o_readdata;
    wire [0:0] i_notlhs233_claswp9_q;
    wire [0:0] i_phi_decision209_xor_claswp11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    reg [0:0] redist0_sync_together31_in_i_valid_7_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg3(REG,44)@0 + 1
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

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // valid_fanout_reg2(REG,43)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_unnamed_claswp49_claswp2(BLACKBOX,19)@1
    claswp_i_llvm_fpga_ffwd_dest_i1_unnamed_49_claswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_claswp49_claswp2 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_unnamed_claswp49_claswp2_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,42)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i32_n77140_claswp1(BLACKBOX,23)@1
    claswp_i_llvm_fpga_ffwd_dest_p1024i32_n77140_0 thei_llvm_fpga_ffwd_dest_p1024i32_n77140_claswp1 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_n77140_claswp1_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm6118_claswp3(BLACKBOX,26)@1
    // in in_i_stall@20000000
    // out out_lm6118_claswp_avm_address@20000000
    // out out_lm6118_claswp_avm_burstcount@20000000
    // out out_lm6118_claswp_avm_byteenable@20000000
    // out out_lm6118_claswp_avm_enable@20000000
    // out out_lm6118_claswp_avm_read@20000000
    // out out_lm6118_claswp_avm_write@20000000
    // out out_lm6118_claswp_avm_writedata@20000000
    // out out_o_readdata@8
    // out out_o_stall@7
    // out out_o_valid@8
    claswp_i_llvm_fpga_mem_lm6118_0 thei_llvm_fpga_mem_lm6118_claswp3 (
        .in_flush(in_flush),
        .in_i_address(i_llvm_fpga_ffwd_dest_p1024i32_n77140_claswp1_out_dest_data_out_0_0),
        .in_i_predicate(i_llvm_fpga_ffwd_dest_i1_unnamed_claswp49_claswp2_out_dest_data_out_8_0),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg3_q),
        .in_lm6118_claswp_avm_readdata(in_lm6118_claswp_avm_readdata),
        .in_lm6118_claswp_avm_readdatavalid(in_lm6118_claswp_avm_readdatavalid),
        .in_lm6118_claswp_avm_waitrequest(in_lm6118_claswp_avm_waitrequest),
        .in_lm6118_claswp_avm_writeack(in_lm6118_claswp_avm_writeack),
        .out_lm6118_claswp_avm_address(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_address),
        .out_lm6118_claswp_avm_burstcount(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_burstcount),
        .out_lm6118_claswp_avm_byteenable(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_byteenable),
        .out_lm6118_claswp_avm_enable(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_enable),
        .out_lm6118_claswp_avm_read(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_read),
        .out_lm6118_claswp_avm_write(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_write),
        .out_lm6118_claswp_avm_writedata(i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm6118_claswp3_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,13)
    assign out_lm6118_claswp_avm_address = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_address;
    assign out_lm6118_claswp_avm_enable = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_enable;
    assign out_lm6118_claswp_avm_read = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_read;
    assign out_lm6118_claswp_avm_write = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_write;
    assign out_lm6118_claswp_avm_writedata = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_writedata;
    assign out_lm6118_claswp_avm_byteenable = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_byteenable;
    assign out_lm6118_claswp_avm_burstcount = i_llvm_fpga_mem_lm6118_claswp3_out_lm6118_claswp_avm_burstcount;

    // valid_fanout_reg7(REG,48)@0 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_124(CONSTANT,11)
    assign c_i32_124_q = $unsigned(32'b00000000000000000000000000000001);

    // valid_fanout_reg5(REG,46)@0 + 1
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

    // i_llvm_fpga_ffwd_dest_i32_shl159_claswp7(BLACKBOX,21)@1
    claswp_i_llvm_fpga_ffwd_dest_i32_shl159_0 thei_llvm_fpga_ffwd_dest_i32_shl159_claswp7 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_shl159_claswp7_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_inc61_claswp8(LOGICAL,15)@1
    assign i_inc61_claswp8_q = i_llvm_fpga_ffwd_dest_i32_shl159_claswp7_out_dest_data_out_11_0 | c_i32_124_q;

    // i_inc61_claswp8_vt_select_31(BITSELECT,18)@1
    assign i_inc61_claswp8_vt_select_31_b = i_inc61_claswp8_q[31:1];

    // i_inc61_claswp8_vt_join(BITJOIN,17)@1
    assign i_inc61_claswp8_vt_join_q = {i_inc61_claswp8_vt_select_31_b, VCC_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_claswp51_claswp12(BLACKBOX,25)@1
    // out out_intel_reserved_ffwd_26_0@20000000
    claswp_i_llvm_fpga_ffwd_source_i32_unnamed_51_claswp0 thei_llvm_fpga_ffwd_source_i32_unnamed_claswp51_claswp12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_26_0(i_inc61_claswp8_vt_join_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_intel_reserved_ffwd_26_0(i_llvm_fpga_ffwd_source_i32_unnamed_claswp51_claswp12_out_intel_reserved_ffwd_26_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,35)
    assign out_intel_reserved_ffwd_26_0 = i_llvm_fpga_ffwd_source_i32_unnamed_claswp51_claswp12_out_intel_reserved_ffwd_26_0;

    // redist0_sync_together31_in_i_valid_7(DELAY,50)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist0_sync_together31_in_i_valid_7 ( .xin(in_i_valid), .xout(redist0_sync_together31_in_i_valid_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg8(REG,49)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist0_sync_together31_in_i_valid_7_q);
        end
    end

    // valid_fanout_reg4(REG,45)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist0_sync_together31_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_shl160_claswp4(BLACKBOX,22)@8
    claswp_i_llvm_fpga_ffwd_dest_i32_shl160_0 thei_llvm_fpga_ffwd_dest_i32_shl160_claswp4 (
        .in_intel_reserved_ffwd_11_0(in_intel_reserved_ffwd_11_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_11_0(i_llvm_fpga_ffwd_dest_i32_shl160_claswp4_out_dest_data_out_11_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_cmp59_claswp5(LOGICAL,14)@8
    assign i_cmp59_claswp5_q = $unsigned(i_llvm_fpga_ffwd_dest_i32_shl160_claswp4_out_dest_data_out_11_0 == i_llvm_fpga_mem_lm6118_claswp3_out_o_readdata ? 1'b1 : 1'b0);

    // i_notlhs233_claswp9(LOGICAL,27)@8
    assign i_notlhs233_claswp9_q = i_cmp59_claswp5_q ^ VCC_q;

    // valid_fanout_reg6(REG,47)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist0_sync_together31_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_unnamed_claswp50_claswp10(BLACKBOX,20)@8
    claswp_i_llvm_fpga_ffwd_dest_i1_unnamed_50_claswp0 thei_llvm_fpga_ffwd_dest_i1_unnamed_claswp50_claswp10 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i1_unnamed_claswp50_claswp10_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_phi_decision209_xor_claswp11(LOGICAL,28)@8
    assign i_phi_decision209_xor_claswp11_q = i_llvm_fpga_ffwd_dest_i1_unnamed_claswp50_claswp10_out_dest_data_out_6_0 & i_notlhs233_claswp9_q;

    // i_llvm_fpga_ffwd_source_i1_unnamed_claswp52_claswp13(BLACKBOX,24)@8
    // out out_intel_reserved_ffwd_27_0@20000000
    claswp_i_llvm_fpga_ffwd_source_i1_unnamed_52_claswp0 thei_llvm_fpga_ffwd_source_i1_unnamed_claswp52_claswp13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_27_0(i_phi_decision209_xor_claswp11_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_intel_reserved_ffwd_27_0(i_llvm_fpga_ffwd_source_i1_unnamed_claswp52_claswp13_out_intel_reserved_ffwd_27_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,39)
    assign out_intel_reserved_ffwd_27_0 = i_llvm_fpga_ffwd_source_i1_unnamed_claswp52_claswp13_out_intel_reserved_ffwd_27_0;

    // valid_fanout_reg0(REG,41)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist0_sync_together31_in_i_valid_7_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,40)@8
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_claswp13 = GND_q;
    assign out_unnamed_claswp53_0_tpl = GND_q;

endmodule
