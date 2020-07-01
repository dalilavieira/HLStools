// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps

(* use_dsp = "yes" *) module rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1_DSP48_0(
    input  [9 - 1:0] in0,
    input  [9 - 1:0] in1,
    input  [18 - 1:0] in2,
    output [18 - 1:0]  dout);

wire signed [25 - 1:0]     a;
wire signed [18 - 1:0]     b;
wire signed [48 - 1:0]     c;
wire signed [43 - 1:0]     m;
wire signed [48 - 1:0]     p;

assign a  = $signed(in0);
assign b  = $signed(in1);
assign c  = $unsigned(in2);

assign m  = a * b;
assign p  = c - m;

assign dout = p;

endmodule
`timescale 1 ns / 1 ps
module rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1(
    din0,
    din1,
    din2,
    dout);

parameter ID = 32'd1;
parameter NUM_STAGE = 32'd1;
parameter din0_WIDTH = 32'd1;
parameter din1_WIDTH = 32'd1;
parameter din2_WIDTH = 32'd1;
parameter dout_WIDTH = 32'd1;
input[din0_WIDTH - 1:0] din0;
input[din1_WIDTH - 1:0] din1;
input[din2_WIDTH - 1:0] din2;
output[dout_WIDTH - 1:0] dout;



rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1_DSP48_0 rendering_sw_mac_mulsub_9s_9s_18ns_18_1_1_DSP48_0_U(
    .in0( din0 ),
    .in1( din1 ),
    .in2( din2 ),
    .dout( dout ));

endmodule

