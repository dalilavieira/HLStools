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

// SystemVerilog created from sobel_filter_function_wrapper
// SystemVerilog created on Mon Apr 27 09:59:23 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module sobel_filter_function_wrapper (
    input wire [31:0] avm_lm1202_sobel_filter_readdata,
    input wire [0:0] avm_lm1202_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1202_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1202_sobel_filter_writeack,
    input wire [31:0] avm_lm1223_sobel_filter_readdata,
    input wire [0:0] avm_lm1223_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1223_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1223_sobel_filter_writeack,
    input wire [31:0] avm_lm1244_sobel_filter_readdata,
    input wire [0:0] avm_lm1244_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1244_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1244_sobel_filter_writeack,
    input wire [31:0] avm_lm1265_sobel_filter_readdata,
    input wire [0:0] avm_lm1265_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1265_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1265_sobel_filter_writeack,
    input wire [31:0] avm_lm1286_sobel_filter_readdata,
    input wire [0:0] avm_lm1286_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1286_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1286_sobel_filter_writeack,
    input wire [31:0] avm_lm1307_sobel_filter_readdata,
    input wire [0:0] avm_lm1307_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1307_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1307_sobel_filter_writeack,
    input wire [31:0] avm_lm1328_sobel_filter_readdata,
    input wire [0:0] avm_lm1328_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1328_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1328_sobel_filter_writeack,
    input wire [31:0] avm_lm1479_sobel_filter_readdata,
    input wire [0:0] avm_lm1479_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1479_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1479_sobel_filter_writeack,
    input wire [31:0] avm_lm14910_sobel_filter_readdata,
    input wire [0:0] avm_lm14910_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm14910_sobel_filter_waitrequest,
    input wire [0:0] avm_lm14910_sobel_filter_writeack,
    input wire [31:0] avm_lm15111_sobel_filter_readdata,
    input wire [0:0] avm_lm15111_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm15111_sobel_filter_waitrequest,
    input wire [0:0] avm_lm15111_sobel_filter_writeack,
    input wire [31:0] avm_lm15312_sobel_filter_readdata,
    input wire [0:0] avm_lm15312_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm15312_sobel_filter_waitrequest,
    input wire [0:0] avm_lm15312_sobel_filter_writeack,
    input wire [31:0] avm_lm15513_sobel_filter_readdata,
    input wire [0:0] avm_lm15513_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm15513_sobel_filter_waitrequest,
    input wire [0:0] avm_lm15513_sobel_filter_writeack,
    input wire [31:0] avm_lm15714_sobel_filter_readdata,
    input wire [0:0] avm_lm15714_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm15714_sobel_filter_waitrequest,
    input wire [0:0] avm_lm15714_sobel_filter_writeack,
    input wire [31:0] avm_lm15915_sobel_filter_readdata,
    input wire [0:0] avm_lm15915_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm15915_sobel_filter_waitrequest,
    input wire [0:0] avm_lm15915_sobel_filter_writeack,
    input wire [31:0] avm_lm16116_sobel_filter_readdata,
    input wire [0:0] avm_lm16116_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm16116_sobel_filter_waitrequest,
    input wire [0:0] avm_lm16116_sobel_filter_writeack,
    input wire [31:0] avm_lm1_sobel_filter_readdata,
    input wire [0:0] avm_lm1_sobel_filter_readdatavalid,
    input wire [0:0] avm_lm1_sobel_filter_waitrequest,
    input wire [0:0] avm_lm1_sobel_filter_writeack,
    input wire [31:0] avm_memdep_19_sobel_filter_readdata,
    input wire [0:0] avm_memdep_19_sobel_filter_readdatavalid,
    input wire [0:0] avm_memdep_19_sobel_filter_waitrequest,
    input wire [0:0] avm_memdep_19_sobel_filter_writeack,
    input wire [31:0] avm_memdep_20_sobel_filter_readdata,
    input wire [0:0] avm_memdep_20_sobel_filter_readdatavalid,
    input wire [0:0] avm_memdep_20_sobel_filter_waitrequest,
    input wire [0:0] avm_memdep_20_sobel_filter_writeack,
    input wire [31:0] avm_memdep_21_sobel_filter_readdata,
    input wire [0:0] avm_memdep_21_sobel_filter_readdatavalid,
    input wire [0:0] avm_memdep_21_sobel_filter_waitrequest,
    input wire [0:0] avm_memdep_21_sobel_filter_writeack,
    input wire [31:0] avm_memdep_sobel_filter_readdata,
    input wire [0:0] avm_memdep_sobel_filter_readdatavalid,
    input wire [0:0] avm_memdep_sobel_filter_waitrequest,
    input wire [0:0] avm_memdep_sobel_filter_writeack,
    input wire [31:0] avm_unnamed_sobel_filter10_sobel_filter_readdata,
    input wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_readdatavalid,
    input wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_waitrequest,
    input wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_writeack,
    input wire [31:0] avm_unnamed_sobel_filter12_sobel_filter_readdata,
    input wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_readdatavalid,
    input wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_waitrequest,
    input wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_writeack,
    input wire [31:0] avm_unnamed_sobel_filter14_sobel_filter_readdata,
    input wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_readdatavalid,
    input wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_waitrequest,
    input wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_writeack,
    input wire [31:0] avm_unnamed_sobel_filter15_sobel_filter_readdata,
    input wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_readdatavalid,
    input wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_waitrequest,
    input wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_writeack,
    input wire [31:0] avm_unnamed_sobel_filter8_sobel_filter_readdata,
    input wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_readdatavalid,
    input wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_waitrequest,
    input wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_writeack,
    input wire [31:0] avst_iord_bl_call_sobel_filter_data,
    input wire [0:0] avst_iord_bl_call_sobel_filter_valid,
    input wire [0:0] avst_iowr_bl_return_sobel_filter_almostfull,
    input wire [0:0] avst_iowr_bl_return_sobel_filter_ready,
    input wire [0:0] clock2x,
    input wire [31:0] idx,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_lm1202_sobel_filter_address,
    output wire [0:0] avm_lm1202_sobel_filter_burstcount,
    output wire [3:0] avm_lm1202_sobel_filter_byteenable,
    output wire [0:0] avm_lm1202_sobel_filter_enable,
    output wire [0:0] avm_lm1202_sobel_filter_read,
    output wire [0:0] avm_lm1202_sobel_filter_write,
    output wire [31:0] avm_lm1202_sobel_filter_writedata,
    output wire [31:0] avm_lm1223_sobel_filter_address,
    output wire [0:0] avm_lm1223_sobel_filter_burstcount,
    output wire [3:0] avm_lm1223_sobel_filter_byteenable,
    output wire [0:0] avm_lm1223_sobel_filter_enable,
    output wire [0:0] avm_lm1223_sobel_filter_read,
    output wire [0:0] avm_lm1223_sobel_filter_write,
    output wire [31:0] avm_lm1223_sobel_filter_writedata,
    output wire [31:0] avm_lm1244_sobel_filter_address,
    output wire [0:0] avm_lm1244_sobel_filter_burstcount,
    output wire [3:0] avm_lm1244_sobel_filter_byteenable,
    output wire [0:0] avm_lm1244_sobel_filter_enable,
    output wire [0:0] avm_lm1244_sobel_filter_read,
    output wire [0:0] avm_lm1244_sobel_filter_write,
    output wire [31:0] avm_lm1244_sobel_filter_writedata,
    output wire [31:0] avm_lm1265_sobel_filter_address,
    output wire [0:0] avm_lm1265_sobel_filter_burstcount,
    output wire [3:0] avm_lm1265_sobel_filter_byteenable,
    output wire [0:0] avm_lm1265_sobel_filter_enable,
    output wire [0:0] avm_lm1265_sobel_filter_read,
    output wire [0:0] avm_lm1265_sobel_filter_write,
    output wire [31:0] avm_lm1265_sobel_filter_writedata,
    output wire [31:0] avm_lm1286_sobel_filter_address,
    output wire [0:0] avm_lm1286_sobel_filter_burstcount,
    output wire [3:0] avm_lm1286_sobel_filter_byteenable,
    output wire [0:0] avm_lm1286_sobel_filter_enable,
    output wire [0:0] avm_lm1286_sobel_filter_read,
    output wire [0:0] avm_lm1286_sobel_filter_write,
    output wire [31:0] avm_lm1286_sobel_filter_writedata,
    output wire [31:0] avm_lm1307_sobel_filter_address,
    output wire [0:0] avm_lm1307_sobel_filter_burstcount,
    output wire [3:0] avm_lm1307_sobel_filter_byteenable,
    output wire [0:0] avm_lm1307_sobel_filter_enable,
    output wire [0:0] avm_lm1307_sobel_filter_read,
    output wire [0:0] avm_lm1307_sobel_filter_write,
    output wire [31:0] avm_lm1307_sobel_filter_writedata,
    output wire [31:0] avm_lm1328_sobel_filter_address,
    output wire [0:0] avm_lm1328_sobel_filter_burstcount,
    output wire [3:0] avm_lm1328_sobel_filter_byteenable,
    output wire [0:0] avm_lm1328_sobel_filter_enable,
    output wire [0:0] avm_lm1328_sobel_filter_read,
    output wire [0:0] avm_lm1328_sobel_filter_write,
    output wire [31:0] avm_lm1328_sobel_filter_writedata,
    output wire [31:0] avm_lm1479_sobel_filter_address,
    output wire [0:0] avm_lm1479_sobel_filter_burstcount,
    output wire [3:0] avm_lm1479_sobel_filter_byteenable,
    output wire [0:0] avm_lm1479_sobel_filter_enable,
    output wire [0:0] avm_lm1479_sobel_filter_read,
    output wire [0:0] avm_lm1479_sobel_filter_write,
    output wire [31:0] avm_lm1479_sobel_filter_writedata,
    output wire [31:0] avm_lm14910_sobel_filter_address,
    output wire [0:0] avm_lm14910_sobel_filter_burstcount,
    output wire [3:0] avm_lm14910_sobel_filter_byteenable,
    output wire [0:0] avm_lm14910_sobel_filter_enable,
    output wire [0:0] avm_lm14910_sobel_filter_read,
    output wire [0:0] avm_lm14910_sobel_filter_write,
    output wire [31:0] avm_lm14910_sobel_filter_writedata,
    output wire [31:0] avm_lm15111_sobel_filter_address,
    output wire [0:0] avm_lm15111_sobel_filter_burstcount,
    output wire [3:0] avm_lm15111_sobel_filter_byteenable,
    output wire [0:0] avm_lm15111_sobel_filter_enable,
    output wire [0:0] avm_lm15111_sobel_filter_read,
    output wire [0:0] avm_lm15111_sobel_filter_write,
    output wire [31:0] avm_lm15111_sobel_filter_writedata,
    output wire [31:0] avm_lm15312_sobel_filter_address,
    output wire [0:0] avm_lm15312_sobel_filter_burstcount,
    output wire [3:0] avm_lm15312_sobel_filter_byteenable,
    output wire [0:0] avm_lm15312_sobel_filter_enable,
    output wire [0:0] avm_lm15312_sobel_filter_read,
    output wire [0:0] avm_lm15312_sobel_filter_write,
    output wire [31:0] avm_lm15312_sobel_filter_writedata,
    output wire [31:0] avm_lm15513_sobel_filter_address,
    output wire [0:0] avm_lm15513_sobel_filter_burstcount,
    output wire [3:0] avm_lm15513_sobel_filter_byteenable,
    output wire [0:0] avm_lm15513_sobel_filter_enable,
    output wire [0:0] avm_lm15513_sobel_filter_read,
    output wire [0:0] avm_lm15513_sobel_filter_write,
    output wire [31:0] avm_lm15513_sobel_filter_writedata,
    output wire [31:0] avm_lm15714_sobel_filter_address,
    output wire [0:0] avm_lm15714_sobel_filter_burstcount,
    output wire [3:0] avm_lm15714_sobel_filter_byteenable,
    output wire [0:0] avm_lm15714_sobel_filter_enable,
    output wire [0:0] avm_lm15714_sobel_filter_read,
    output wire [0:0] avm_lm15714_sobel_filter_write,
    output wire [31:0] avm_lm15714_sobel_filter_writedata,
    output wire [31:0] avm_lm15915_sobel_filter_address,
    output wire [0:0] avm_lm15915_sobel_filter_burstcount,
    output wire [3:0] avm_lm15915_sobel_filter_byteenable,
    output wire [0:0] avm_lm15915_sobel_filter_enable,
    output wire [0:0] avm_lm15915_sobel_filter_read,
    output wire [0:0] avm_lm15915_sobel_filter_write,
    output wire [31:0] avm_lm15915_sobel_filter_writedata,
    output wire [31:0] avm_lm16116_sobel_filter_address,
    output wire [0:0] avm_lm16116_sobel_filter_burstcount,
    output wire [3:0] avm_lm16116_sobel_filter_byteenable,
    output wire [0:0] avm_lm16116_sobel_filter_enable,
    output wire [0:0] avm_lm16116_sobel_filter_read,
    output wire [0:0] avm_lm16116_sobel_filter_write,
    output wire [31:0] avm_lm16116_sobel_filter_writedata,
    output wire [31:0] avm_lm1_sobel_filter_address,
    output wire [0:0] avm_lm1_sobel_filter_burstcount,
    output wire [3:0] avm_lm1_sobel_filter_byteenable,
    output wire [0:0] avm_lm1_sobel_filter_enable,
    output wire [0:0] avm_lm1_sobel_filter_read,
    output wire [0:0] avm_lm1_sobel_filter_write,
    output wire [31:0] avm_lm1_sobel_filter_writedata,
    output wire [31:0] avm_memdep_19_sobel_filter_address,
    output wire [0:0] avm_memdep_19_sobel_filter_burstcount,
    output wire [3:0] avm_memdep_19_sobel_filter_byteenable,
    output wire [0:0] avm_memdep_19_sobel_filter_enable,
    output wire [0:0] avm_memdep_19_sobel_filter_read,
    output wire [0:0] avm_memdep_19_sobel_filter_write,
    output wire [31:0] avm_memdep_19_sobel_filter_writedata,
    output wire [31:0] avm_memdep_20_sobel_filter_address,
    output wire [0:0] avm_memdep_20_sobel_filter_burstcount,
    output wire [3:0] avm_memdep_20_sobel_filter_byteenable,
    output wire [0:0] avm_memdep_20_sobel_filter_enable,
    output wire [0:0] avm_memdep_20_sobel_filter_read,
    output wire [0:0] avm_memdep_20_sobel_filter_write,
    output wire [31:0] avm_memdep_20_sobel_filter_writedata,
    output wire [31:0] avm_memdep_21_sobel_filter_address,
    output wire [0:0] avm_memdep_21_sobel_filter_burstcount,
    output wire [3:0] avm_memdep_21_sobel_filter_byteenable,
    output wire [0:0] avm_memdep_21_sobel_filter_enable,
    output wire [0:0] avm_memdep_21_sobel_filter_read,
    output wire [0:0] avm_memdep_21_sobel_filter_write,
    output wire [31:0] avm_memdep_21_sobel_filter_writedata,
    output wire [31:0] avm_memdep_sobel_filter_address,
    output wire [0:0] avm_memdep_sobel_filter_burstcount,
    output wire [3:0] avm_memdep_sobel_filter_byteenable,
    output wire [0:0] avm_memdep_sobel_filter_enable,
    output wire [0:0] avm_memdep_sobel_filter_read,
    output wire [0:0] avm_memdep_sobel_filter_write,
    output wire [31:0] avm_memdep_sobel_filter_writedata,
    output wire [31:0] avm_unnamed_sobel_filter10_sobel_filter_address,
    output wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_burstcount,
    output wire [3:0] avm_unnamed_sobel_filter10_sobel_filter_byteenable,
    output wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_enable,
    output wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_read,
    output wire [0:0] avm_unnamed_sobel_filter10_sobel_filter_write,
    output wire [31:0] avm_unnamed_sobel_filter10_sobel_filter_writedata,
    output wire [31:0] avm_unnamed_sobel_filter12_sobel_filter_address,
    output wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_burstcount,
    output wire [3:0] avm_unnamed_sobel_filter12_sobel_filter_byteenable,
    output wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_enable,
    output wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_read,
    output wire [0:0] avm_unnamed_sobel_filter12_sobel_filter_write,
    output wire [31:0] avm_unnamed_sobel_filter12_sobel_filter_writedata,
    output wire [31:0] avm_unnamed_sobel_filter14_sobel_filter_address,
    output wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_burstcount,
    output wire [3:0] avm_unnamed_sobel_filter14_sobel_filter_byteenable,
    output wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_enable,
    output wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_read,
    output wire [0:0] avm_unnamed_sobel_filter14_sobel_filter_write,
    output wire [31:0] avm_unnamed_sobel_filter14_sobel_filter_writedata,
    output wire [31:0] avm_unnamed_sobel_filter15_sobel_filter_address,
    output wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_burstcount,
    output wire [3:0] avm_unnamed_sobel_filter15_sobel_filter_byteenable,
    output wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_enable,
    output wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_read,
    output wire [0:0] avm_unnamed_sobel_filter15_sobel_filter_write,
    output wire [31:0] avm_unnamed_sobel_filter15_sobel_filter_writedata,
    output wire [31:0] avm_unnamed_sobel_filter8_sobel_filter_address,
    output wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_burstcount,
    output wire [3:0] avm_unnamed_sobel_filter8_sobel_filter_byteenable,
    output wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_enable,
    output wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_read,
    output wire [0:0] avm_unnamed_sobel_filter8_sobel_filter_write,
    output wire [31:0] avm_unnamed_sobel_filter8_sobel_filter_writedata,
    output wire [0:0] avst_iord_bl_call_sobel_filter_ready,
    output wire [31:0] avst_iowr_bl_return_sobel_filter_data,
    output wire [0:0] avst_iowr_bl_return_sobel_filter_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    output wire [31:0] returndata,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [63:0] call_const_q;
    wire [31:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;
    wire [0:0] sobel_filter_function_out_iord_bl_call_sobel_filter_o_fifoready;
    wire [31:0] sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifodata;
    wire [0:0] sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifovalid;
    wire [31:0] sobel_filter_function_out_lm1202_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1202_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1202_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1202_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1202_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1202_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1202_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1223_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1223_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1223_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1223_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1223_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1223_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1223_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1244_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1244_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1244_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1244_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1244_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1244_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1244_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1265_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1265_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1265_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1265_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1265_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1265_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1265_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1286_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1286_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1286_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1286_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1286_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1286_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1286_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1307_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1307_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1307_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1307_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1307_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1307_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1307_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1328_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1328_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1328_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1328_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1328_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1328_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1328_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1479_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1479_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1479_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1479_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1479_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1479_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1479_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm14910_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm14910_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm14910_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm14910_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm14910_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm14910_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm14910_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm15111_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm15111_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm15111_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm15111_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm15111_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm15111_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm15111_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm15312_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm15312_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm15312_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm15312_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm15312_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm15312_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm15312_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm15513_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm15513_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm15513_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm15513_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm15513_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm15513_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm15513_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm15714_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm15714_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm15714_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm15714_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm15714_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm15714_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm15714_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm15915_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm15915_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm15915_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm15915_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm15915_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm15915_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm15915_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm16116_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm16116_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm16116_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm16116_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm16116_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm16116_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm16116_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_lm1_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_lm1_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_lm1_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_lm1_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_lm1_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_lm1_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_lm1_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_memdep_19_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_memdep_20_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_memdep_21_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_memdep_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_memdep_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_memdep_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_memdep_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_memdep_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_memdep_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_memdep_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_address;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_burstcount;
    wire [3:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_byteenable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_enable;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_read;
    wire [0:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_write;
    wire [31:0] sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_writedata;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,119)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,7)
    assign implicit_input_q = idx;

    // call_const(CONSTANT,4)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // sobel_filter_function(BLACKBOX,305)
    sobel_filter_function thesobel_filter_function (
        .in_arg_call(call_const_q),
        .in_arg_return(call_const_q),
        .in_iord_bl_call_sobel_filter_i_fifodata(implicit_input_q),
        .in_iord_bl_call_sobel_filter_i_fifovalid(start),
        .in_iowr_bl_return_sobel_filter_i_fifoready(not_stall_q),
        .in_lm1202_sobel_filter_avm_readdata(avm_lm1202_sobel_filter_readdata),
        .in_lm1202_sobel_filter_avm_readdatavalid(avm_lm1202_sobel_filter_readdatavalid),
        .in_lm1202_sobel_filter_avm_waitrequest(avm_lm1202_sobel_filter_waitrequest),
        .in_lm1202_sobel_filter_avm_writeack(avm_lm1202_sobel_filter_writeack),
        .in_lm1223_sobel_filter_avm_readdata(avm_lm1223_sobel_filter_readdata),
        .in_lm1223_sobel_filter_avm_readdatavalid(avm_lm1223_sobel_filter_readdatavalid),
        .in_lm1223_sobel_filter_avm_waitrequest(avm_lm1223_sobel_filter_waitrequest),
        .in_lm1223_sobel_filter_avm_writeack(avm_lm1223_sobel_filter_writeack),
        .in_lm1244_sobel_filter_avm_readdata(avm_lm1244_sobel_filter_readdata),
        .in_lm1244_sobel_filter_avm_readdatavalid(avm_lm1244_sobel_filter_readdatavalid),
        .in_lm1244_sobel_filter_avm_waitrequest(avm_lm1244_sobel_filter_waitrequest),
        .in_lm1244_sobel_filter_avm_writeack(avm_lm1244_sobel_filter_writeack),
        .in_lm1265_sobel_filter_avm_readdata(avm_lm1265_sobel_filter_readdata),
        .in_lm1265_sobel_filter_avm_readdatavalid(avm_lm1265_sobel_filter_readdatavalid),
        .in_lm1265_sobel_filter_avm_waitrequest(avm_lm1265_sobel_filter_waitrequest),
        .in_lm1265_sobel_filter_avm_writeack(avm_lm1265_sobel_filter_writeack),
        .in_lm1286_sobel_filter_avm_readdata(avm_lm1286_sobel_filter_readdata),
        .in_lm1286_sobel_filter_avm_readdatavalid(avm_lm1286_sobel_filter_readdatavalid),
        .in_lm1286_sobel_filter_avm_waitrequest(avm_lm1286_sobel_filter_waitrequest),
        .in_lm1286_sobel_filter_avm_writeack(avm_lm1286_sobel_filter_writeack),
        .in_lm1307_sobel_filter_avm_readdata(avm_lm1307_sobel_filter_readdata),
        .in_lm1307_sobel_filter_avm_readdatavalid(avm_lm1307_sobel_filter_readdatavalid),
        .in_lm1307_sobel_filter_avm_waitrequest(avm_lm1307_sobel_filter_waitrequest),
        .in_lm1307_sobel_filter_avm_writeack(avm_lm1307_sobel_filter_writeack),
        .in_lm1328_sobel_filter_avm_readdata(avm_lm1328_sobel_filter_readdata),
        .in_lm1328_sobel_filter_avm_readdatavalid(avm_lm1328_sobel_filter_readdatavalid),
        .in_lm1328_sobel_filter_avm_waitrequest(avm_lm1328_sobel_filter_waitrequest),
        .in_lm1328_sobel_filter_avm_writeack(avm_lm1328_sobel_filter_writeack),
        .in_lm1479_sobel_filter_avm_readdata(avm_lm1479_sobel_filter_readdata),
        .in_lm1479_sobel_filter_avm_readdatavalid(avm_lm1479_sobel_filter_readdatavalid),
        .in_lm1479_sobel_filter_avm_waitrequest(avm_lm1479_sobel_filter_waitrequest),
        .in_lm1479_sobel_filter_avm_writeack(avm_lm1479_sobel_filter_writeack),
        .in_lm14910_sobel_filter_avm_readdata(avm_lm14910_sobel_filter_readdata),
        .in_lm14910_sobel_filter_avm_readdatavalid(avm_lm14910_sobel_filter_readdatavalid),
        .in_lm14910_sobel_filter_avm_waitrequest(avm_lm14910_sobel_filter_waitrequest),
        .in_lm14910_sobel_filter_avm_writeack(avm_lm14910_sobel_filter_writeack),
        .in_lm15111_sobel_filter_avm_readdata(avm_lm15111_sobel_filter_readdata),
        .in_lm15111_sobel_filter_avm_readdatavalid(avm_lm15111_sobel_filter_readdatavalid),
        .in_lm15111_sobel_filter_avm_waitrequest(avm_lm15111_sobel_filter_waitrequest),
        .in_lm15111_sobel_filter_avm_writeack(avm_lm15111_sobel_filter_writeack),
        .in_lm15312_sobel_filter_avm_readdata(avm_lm15312_sobel_filter_readdata),
        .in_lm15312_sobel_filter_avm_readdatavalid(avm_lm15312_sobel_filter_readdatavalid),
        .in_lm15312_sobel_filter_avm_waitrequest(avm_lm15312_sobel_filter_waitrequest),
        .in_lm15312_sobel_filter_avm_writeack(avm_lm15312_sobel_filter_writeack),
        .in_lm15513_sobel_filter_avm_readdata(avm_lm15513_sobel_filter_readdata),
        .in_lm15513_sobel_filter_avm_readdatavalid(avm_lm15513_sobel_filter_readdatavalid),
        .in_lm15513_sobel_filter_avm_waitrequest(avm_lm15513_sobel_filter_waitrequest),
        .in_lm15513_sobel_filter_avm_writeack(avm_lm15513_sobel_filter_writeack),
        .in_lm15714_sobel_filter_avm_readdata(avm_lm15714_sobel_filter_readdata),
        .in_lm15714_sobel_filter_avm_readdatavalid(avm_lm15714_sobel_filter_readdatavalid),
        .in_lm15714_sobel_filter_avm_waitrequest(avm_lm15714_sobel_filter_waitrequest),
        .in_lm15714_sobel_filter_avm_writeack(avm_lm15714_sobel_filter_writeack),
        .in_lm15915_sobel_filter_avm_readdata(avm_lm15915_sobel_filter_readdata),
        .in_lm15915_sobel_filter_avm_readdatavalid(avm_lm15915_sobel_filter_readdatavalid),
        .in_lm15915_sobel_filter_avm_waitrequest(avm_lm15915_sobel_filter_waitrequest),
        .in_lm15915_sobel_filter_avm_writeack(avm_lm15915_sobel_filter_writeack),
        .in_lm16116_sobel_filter_avm_readdata(avm_lm16116_sobel_filter_readdata),
        .in_lm16116_sobel_filter_avm_readdatavalid(avm_lm16116_sobel_filter_readdatavalid),
        .in_lm16116_sobel_filter_avm_waitrequest(avm_lm16116_sobel_filter_waitrequest),
        .in_lm16116_sobel_filter_avm_writeack(avm_lm16116_sobel_filter_writeack),
        .in_lm1_sobel_filter_avm_readdata(avm_lm1_sobel_filter_readdata),
        .in_lm1_sobel_filter_avm_readdatavalid(avm_lm1_sobel_filter_readdatavalid),
        .in_lm1_sobel_filter_avm_waitrequest(avm_lm1_sobel_filter_waitrequest),
        .in_lm1_sobel_filter_avm_writeack(avm_lm1_sobel_filter_writeack),
        .in_memdep_19_sobel_filter_avm_readdata(avm_memdep_19_sobel_filter_readdata),
        .in_memdep_19_sobel_filter_avm_readdatavalid(avm_memdep_19_sobel_filter_readdatavalid),
        .in_memdep_19_sobel_filter_avm_waitrequest(avm_memdep_19_sobel_filter_waitrequest),
        .in_memdep_19_sobel_filter_avm_writeack(avm_memdep_19_sobel_filter_writeack),
        .in_memdep_20_sobel_filter_avm_readdata(avm_memdep_20_sobel_filter_readdata),
        .in_memdep_20_sobel_filter_avm_readdatavalid(avm_memdep_20_sobel_filter_readdatavalid),
        .in_memdep_20_sobel_filter_avm_waitrequest(avm_memdep_20_sobel_filter_waitrequest),
        .in_memdep_20_sobel_filter_avm_writeack(avm_memdep_20_sobel_filter_writeack),
        .in_memdep_21_sobel_filter_avm_readdata(avm_memdep_21_sobel_filter_readdata),
        .in_memdep_21_sobel_filter_avm_readdatavalid(avm_memdep_21_sobel_filter_readdatavalid),
        .in_memdep_21_sobel_filter_avm_waitrequest(avm_memdep_21_sobel_filter_waitrequest),
        .in_memdep_21_sobel_filter_avm_writeack(avm_memdep_21_sobel_filter_writeack),
        .in_memdep_sobel_filter_avm_readdata(avm_memdep_sobel_filter_readdata),
        .in_memdep_sobel_filter_avm_readdatavalid(avm_memdep_sobel_filter_readdatavalid),
        .in_memdep_sobel_filter_avm_waitrequest(avm_memdep_sobel_filter_waitrequest),
        .in_memdep_sobel_filter_avm_writeack(avm_memdep_sobel_filter_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdata(avm_unnamed_sobel_filter10_sobel_filter_readdata),
        .in_unnamed_sobel_filter10_sobel_filter_avm_readdatavalid(avm_unnamed_sobel_filter10_sobel_filter_readdatavalid),
        .in_unnamed_sobel_filter10_sobel_filter_avm_waitrequest(avm_unnamed_sobel_filter10_sobel_filter_waitrequest),
        .in_unnamed_sobel_filter10_sobel_filter_avm_writeack(avm_unnamed_sobel_filter10_sobel_filter_writeack),
        .in_unnamed_sobel_filter12_sobel_filter_avm_readdata(avm_unnamed_sobel_filter12_sobel_filter_readdata),
        .in_unnamed_sobel_filter12_sobel_filter_avm_readdatavalid(avm_unnamed_sobel_filter12_sobel_filter_readdatavalid),
        .in_unnamed_sobel_filter12_sobel_filter_avm_waitrequest(avm_unnamed_sobel_filter12_sobel_filter_waitrequest),
        .in_unnamed_sobel_filter12_sobel_filter_avm_writeack(avm_unnamed_sobel_filter12_sobel_filter_writeack),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdata(avm_unnamed_sobel_filter14_sobel_filter_readdata),
        .in_unnamed_sobel_filter14_sobel_filter_avm_readdatavalid(avm_unnamed_sobel_filter14_sobel_filter_readdatavalid),
        .in_unnamed_sobel_filter14_sobel_filter_avm_waitrequest(avm_unnamed_sobel_filter14_sobel_filter_waitrequest),
        .in_unnamed_sobel_filter14_sobel_filter_avm_writeack(avm_unnamed_sobel_filter14_sobel_filter_writeack),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdata(avm_unnamed_sobel_filter15_sobel_filter_readdata),
        .in_unnamed_sobel_filter15_sobel_filter_avm_readdatavalid(avm_unnamed_sobel_filter15_sobel_filter_readdatavalid),
        .in_unnamed_sobel_filter15_sobel_filter_avm_waitrequest(avm_unnamed_sobel_filter15_sobel_filter_waitrequest),
        .in_unnamed_sobel_filter15_sobel_filter_avm_writeack(avm_unnamed_sobel_filter15_sobel_filter_writeack),
        .in_unnamed_sobel_filter8_sobel_filter_avm_readdata(avm_unnamed_sobel_filter8_sobel_filter_readdata),
        .in_unnamed_sobel_filter8_sobel_filter_avm_readdatavalid(avm_unnamed_sobel_filter8_sobel_filter_readdatavalid),
        .in_unnamed_sobel_filter8_sobel_filter_avm_waitrequest(avm_unnamed_sobel_filter8_sobel_filter_waitrequest),
        .in_unnamed_sobel_filter8_sobel_filter_avm_writeack(avm_unnamed_sobel_filter8_sobel_filter_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_sobel_filter_o_fifoready(sobel_filter_function_out_iord_bl_call_sobel_filter_o_fifoready),
        .out_iowr_bl_return_sobel_filter_o_fifodata(sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifodata),
        .out_iowr_bl_return_sobel_filter_o_fifovalid(sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifovalid),
        .out_lm1202_sobel_filter_avm_address(sobel_filter_function_out_lm1202_sobel_filter_avm_address),
        .out_lm1202_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1202_sobel_filter_avm_burstcount),
        .out_lm1202_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1202_sobel_filter_avm_byteenable),
        .out_lm1202_sobel_filter_avm_enable(sobel_filter_function_out_lm1202_sobel_filter_avm_enable),
        .out_lm1202_sobel_filter_avm_read(sobel_filter_function_out_lm1202_sobel_filter_avm_read),
        .out_lm1202_sobel_filter_avm_write(sobel_filter_function_out_lm1202_sobel_filter_avm_write),
        .out_lm1202_sobel_filter_avm_writedata(sobel_filter_function_out_lm1202_sobel_filter_avm_writedata),
        .out_lm1223_sobel_filter_avm_address(sobel_filter_function_out_lm1223_sobel_filter_avm_address),
        .out_lm1223_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1223_sobel_filter_avm_burstcount),
        .out_lm1223_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1223_sobel_filter_avm_byteenable),
        .out_lm1223_sobel_filter_avm_enable(sobel_filter_function_out_lm1223_sobel_filter_avm_enable),
        .out_lm1223_sobel_filter_avm_read(sobel_filter_function_out_lm1223_sobel_filter_avm_read),
        .out_lm1223_sobel_filter_avm_write(sobel_filter_function_out_lm1223_sobel_filter_avm_write),
        .out_lm1223_sobel_filter_avm_writedata(sobel_filter_function_out_lm1223_sobel_filter_avm_writedata),
        .out_lm1244_sobel_filter_avm_address(sobel_filter_function_out_lm1244_sobel_filter_avm_address),
        .out_lm1244_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1244_sobel_filter_avm_burstcount),
        .out_lm1244_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1244_sobel_filter_avm_byteenable),
        .out_lm1244_sobel_filter_avm_enable(sobel_filter_function_out_lm1244_sobel_filter_avm_enable),
        .out_lm1244_sobel_filter_avm_read(sobel_filter_function_out_lm1244_sobel_filter_avm_read),
        .out_lm1244_sobel_filter_avm_write(sobel_filter_function_out_lm1244_sobel_filter_avm_write),
        .out_lm1244_sobel_filter_avm_writedata(sobel_filter_function_out_lm1244_sobel_filter_avm_writedata),
        .out_lm1265_sobel_filter_avm_address(sobel_filter_function_out_lm1265_sobel_filter_avm_address),
        .out_lm1265_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1265_sobel_filter_avm_burstcount),
        .out_lm1265_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1265_sobel_filter_avm_byteenable),
        .out_lm1265_sobel_filter_avm_enable(sobel_filter_function_out_lm1265_sobel_filter_avm_enable),
        .out_lm1265_sobel_filter_avm_read(sobel_filter_function_out_lm1265_sobel_filter_avm_read),
        .out_lm1265_sobel_filter_avm_write(sobel_filter_function_out_lm1265_sobel_filter_avm_write),
        .out_lm1265_sobel_filter_avm_writedata(sobel_filter_function_out_lm1265_sobel_filter_avm_writedata),
        .out_lm1286_sobel_filter_avm_address(sobel_filter_function_out_lm1286_sobel_filter_avm_address),
        .out_lm1286_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1286_sobel_filter_avm_burstcount),
        .out_lm1286_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1286_sobel_filter_avm_byteenable),
        .out_lm1286_sobel_filter_avm_enable(sobel_filter_function_out_lm1286_sobel_filter_avm_enable),
        .out_lm1286_sobel_filter_avm_read(sobel_filter_function_out_lm1286_sobel_filter_avm_read),
        .out_lm1286_sobel_filter_avm_write(sobel_filter_function_out_lm1286_sobel_filter_avm_write),
        .out_lm1286_sobel_filter_avm_writedata(sobel_filter_function_out_lm1286_sobel_filter_avm_writedata),
        .out_lm1307_sobel_filter_avm_address(sobel_filter_function_out_lm1307_sobel_filter_avm_address),
        .out_lm1307_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1307_sobel_filter_avm_burstcount),
        .out_lm1307_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1307_sobel_filter_avm_byteenable),
        .out_lm1307_sobel_filter_avm_enable(sobel_filter_function_out_lm1307_sobel_filter_avm_enable),
        .out_lm1307_sobel_filter_avm_read(sobel_filter_function_out_lm1307_sobel_filter_avm_read),
        .out_lm1307_sobel_filter_avm_write(sobel_filter_function_out_lm1307_sobel_filter_avm_write),
        .out_lm1307_sobel_filter_avm_writedata(sobel_filter_function_out_lm1307_sobel_filter_avm_writedata),
        .out_lm1328_sobel_filter_avm_address(sobel_filter_function_out_lm1328_sobel_filter_avm_address),
        .out_lm1328_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1328_sobel_filter_avm_burstcount),
        .out_lm1328_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1328_sobel_filter_avm_byteenable),
        .out_lm1328_sobel_filter_avm_enable(sobel_filter_function_out_lm1328_sobel_filter_avm_enable),
        .out_lm1328_sobel_filter_avm_read(sobel_filter_function_out_lm1328_sobel_filter_avm_read),
        .out_lm1328_sobel_filter_avm_write(sobel_filter_function_out_lm1328_sobel_filter_avm_write),
        .out_lm1328_sobel_filter_avm_writedata(sobel_filter_function_out_lm1328_sobel_filter_avm_writedata),
        .out_lm1479_sobel_filter_avm_address(sobel_filter_function_out_lm1479_sobel_filter_avm_address),
        .out_lm1479_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1479_sobel_filter_avm_burstcount),
        .out_lm1479_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1479_sobel_filter_avm_byteenable),
        .out_lm1479_sobel_filter_avm_enable(sobel_filter_function_out_lm1479_sobel_filter_avm_enable),
        .out_lm1479_sobel_filter_avm_read(sobel_filter_function_out_lm1479_sobel_filter_avm_read),
        .out_lm1479_sobel_filter_avm_write(sobel_filter_function_out_lm1479_sobel_filter_avm_write),
        .out_lm1479_sobel_filter_avm_writedata(sobel_filter_function_out_lm1479_sobel_filter_avm_writedata),
        .out_lm14910_sobel_filter_avm_address(sobel_filter_function_out_lm14910_sobel_filter_avm_address),
        .out_lm14910_sobel_filter_avm_burstcount(sobel_filter_function_out_lm14910_sobel_filter_avm_burstcount),
        .out_lm14910_sobel_filter_avm_byteenable(sobel_filter_function_out_lm14910_sobel_filter_avm_byteenable),
        .out_lm14910_sobel_filter_avm_enable(sobel_filter_function_out_lm14910_sobel_filter_avm_enable),
        .out_lm14910_sobel_filter_avm_read(sobel_filter_function_out_lm14910_sobel_filter_avm_read),
        .out_lm14910_sobel_filter_avm_write(sobel_filter_function_out_lm14910_sobel_filter_avm_write),
        .out_lm14910_sobel_filter_avm_writedata(sobel_filter_function_out_lm14910_sobel_filter_avm_writedata),
        .out_lm15111_sobel_filter_avm_address(sobel_filter_function_out_lm15111_sobel_filter_avm_address),
        .out_lm15111_sobel_filter_avm_burstcount(sobel_filter_function_out_lm15111_sobel_filter_avm_burstcount),
        .out_lm15111_sobel_filter_avm_byteenable(sobel_filter_function_out_lm15111_sobel_filter_avm_byteenable),
        .out_lm15111_sobel_filter_avm_enable(sobel_filter_function_out_lm15111_sobel_filter_avm_enable),
        .out_lm15111_sobel_filter_avm_read(sobel_filter_function_out_lm15111_sobel_filter_avm_read),
        .out_lm15111_sobel_filter_avm_write(sobel_filter_function_out_lm15111_sobel_filter_avm_write),
        .out_lm15111_sobel_filter_avm_writedata(sobel_filter_function_out_lm15111_sobel_filter_avm_writedata),
        .out_lm15312_sobel_filter_avm_address(sobel_filter_function_out_lm15312_sobel_filter_avm_address),
        .out_lm15312_sobel_filter_avm_burstcount(sobel_filter_function_out_lm15312_sobel_filter_avm_burstcount),
        .out_lm15312_sobel_filter_avm_byteenable(sobel_filter_function_out_lm15312_sobel_filter_avm_byteenable),
        .out_lm15312_sobel_filter_avm_enable(sobel_filter_function_out_lm15312_sobel_filter_avm_enable),
        .out_lm15312_sobel_filter_avm_read(sobel_filter_function_out_lm15312_sobel_filter_avm_read),
        .out_lm15312_sobel_filter_avm_write(sobel_filter_function_out_lm15312_sobel_filter_avm_write),
        .out_lm15312_sobel_filter_avm_writedata(sobel_filter_function_out_lm15312_sobel_filter_avm_writedata),
        .out_lm15513_sobel_filter_avm_address(sobel_filter_function_out_lm15513_sobel_filter_avm_address),
        .out_lm15513_sobel_filter_avm_burstcount(sobel_filter_function_out_lm15513_sobel_filter_avm_burstcount),
        .out_lm15513_sobel_filter_avm_byteenable(sobel_filter_function_out_lm15513_sobel_filter_avm_byteenable),
        .out_lm15513_sobel_filter_avm_enable(sobel_filter_function_out_lm15513_sobel_filter_avm_enable),
        .out_lm15513_sobel_filter_avm_read(sobel_filter_function_out_lm15513_sobel_filter_avm_read),
        .out_lm15513_sobel_filter_avm_write(sobel_filter_function_out_lm15513_sobel_filter_avm_write),
        .out_lm15513_sobel_filter_avm_writedata(sobel_filter_function_out_lm15513_sobel_filter_avm_writedata),
        .out_lm15714_sobel_filter_avm_address(sobel_filter_function_out_lm15714_sobel_filter_avm_address),
        .out_lm15714_sobel_filter_avm_burstcount(sobel_filter_function_out_lm15714_sobel_filter_avm_burstcount),
        .out_lm15714_sobel_filter_avm_byteenable(sobel_filter_function_out_lm15714_sobel_filter_avm_byteenable),
        .out_lm15714_sobel_filter_avm_enable(sobel_filter_function_out_lm15714_sobel_filter_avm_enable),
        .out_lm15714_sobel_filter_avm_read(sobel_filter_function_out_lm15714_sobel_filter_avm_read),
        .out_lm15714_sobel_filter_avm_write(sobel_filter_function_out_lm15714_sobel_filter_avm_write),
        .out_lm15714_sobel_filter_avm_writedata(sobel_filter_function_out_lm15714_sobel_filter_avm_writedata),
        .out_lm15915_sobel_filter_avm_address(sobel_filter_function_out_lm15915_sobel_filter_avm_address),
        .out_lm15915_sobel_filter_avm_burstcount(sobel_filter_function_out_lm15915_sobel_filter_avm_burstcount),
        .out_lm15915_sobel_filter_avm_byteenable(sobel_filter_function_out_lm15915_sobel_filter_avm_byteenable),
        .out_lm15915_sobel_filter_avm_enable(sobel_filter_function_out_lm15915_sobel_filter_avm_enable),
        .out_lm15915_sobel_filter_avm_read(sobel_filter_function_out_lm15915_sobel_filter_avm_read),
        .out_lm15915_sobel_filter_avm_write(sobel_filter_function_out_lm15915_sobel_filter_avm_write),
        .out_lm15915_sobel_filter_avm_writedata(sobel_filter_function_out_lm15915_sobel_filter_avm_writedata),
        .out_lm16116_sobel_filter_avm_address(sobel_filter_function_out_lm16116_sobel_filter_avm_address),
        .out_lm16116_sobel_filter_avm_burstcount(sobel_filter_function_out_lm16116_sobel_filter_avm_burstcount),
        .out_lm16116_sobel_filter_avm_byteenable(sobel_filter_function_out_lm16116_sobel_filter_avm_byteenable),
        .out_lm16116_sobel_filter_avm_enable(sobel_filter_function_out_lm16116_sobel_filter_avm_enable),
        .out_lm16116_sobel_filter_avm_read(sobel_filter_function_out_lm16116_sobel_filter_avm_read),
        .out_lm16116_sobel_filter_avm_write(sobel_filter_function_out_lm16116_sobel_filter_avm_write),
        .out_lm16116_sobel_filter_avm_writedata(sobel_filter_function_out_lm16116_sobel_filter_avm_writedata),
        .out_lm1_sobel_filter_avm_address(sobel_filter_function_out_lm1_sobel_filter_avm_address),
        .out_lm1_sobel_filter_avm_burstcount(sobel_filter_function_out_lm1_sobel_filter_avm_burstcount),
        .out_lm1_sobel_filter_avm_byteenable(sobel_filter_function_out_lm1_sobel_filter_avm_byteenable),
        .out_lm1_sobel_filter_avm_enable(sobel_filter_function_out_lm1_sobel_filter_avm_enable),
        .out_lm1_sobel_filter_avm_read(sobel_filter_function_out_lm1_sobel_filter_avm_read),
        .out_lm1_sobel_filter_avm_write(sobel_filter_function_out_lm1_sobel_filter_avm_write),
        .out_lm1_sobel_filter_avm_writedata(sobel_filter_function_out_lm1_sobel_filter_avm_writedata),
        .out_memdep_19_sobel_filter_avm_address(sobel_filter_function_out_memdep_19_sobel_filter_avm_address),
        .out_memdep_19_sobel_filter_avm_burstcount(sobel_filter_function_out_memdep_19_sobel_filter_avm_burstcount),
        .out_memdep_19_sobel_filter_avm_byteenable(sobel_filter_function_out_memdep_19_sobel_filter_avm_byteenable),
        .out_memdep_19_sobel_filter_avm_enable(sobel_filter_function_out_memdep_19_sobel_filter_avm_enable),
        .out_memdep_19_sobel_filter_avm_read(sobel_filter_function_out_memdep_19_sobel_filter_avm_read),
        .out_memdep_19_sobel_filter_avm_write(sobel_filter_function_out_memdep_19_sobel_filter_avm_write),
        .out_memdep_19_sobel_filter_avm_writedata(sobel_filter_function_out_memdep_19_sobel_filter_avm_writedata),
        .out_memdep_20_sobel_filter_avm_address(sobel_filter_function_out_memdep_20_sobel_filter_avm_address),
        .out_memdep_20_sobel_filter_avm_burstcount(sobel_filter_function_out_memdep_20_sobel_filter_avm_burstcount),
        .out_memdep_20_sobel_filter_avm_byteenable(sobel_filter_function_out_memdep_20_sobel_filter_avm_byteenable),
        .out_memdep_20_sobel_filter_avm_enable(sobel_filter_function_out_memdep_20_sobel_filter_avm_enable),
        .out_memdep_20_sobel_filter_avm_read(sobel_filter_function_out_memdep_20_sobel_filter_avm_read),
        .out_memdep_20_sobel_filter_avm_write(sobel_filter_function_out_memdep_20_sobel_filter_avm_write),
        .out_memdep_20_sobel_filter_avm_writedata(sobel_filter_function_out_memdep_20_sobel_filter_avm_writedata),
        .out_memdep_21_sobel_filter_avm_address(sobel_filter_function_out_memdep_21_sobel_filter_avm_address),
        .out_memdep_21_sobel_filter_avm_burstcount(sobel_filter_function_out_memdep_21_sobel_filter_avm_burstcount),
        .out_memdep_21_sobel_filter_avm_byteenable(sobel_filter_function_out_memdep_21_sobel_filter_avm_byteenable),
        .out_memdep_21_sobel_filter_avm_enable(sobel_filter_function_out_memdep_21_sobel_filter_avm_enable),
        .out_memdep_21_sobel_filter_avm_read(sobel_filter_function_out_memdep_21_sobel_filter_avm_read),
        .out_memdep_21_sobel_filter_avm_write(sobel_filter_function_out_memdep_21_sobel_filter_avm_write),
        .out_memdep_21_sobel_filter_avm_writedata(sobel_filter_function_out_memdep_21_sobel_filter_avm_writedata),
        .out_memdep_sobel_filter_avm_address(sobel_filter_function_out_memdep_sobel_filter_avm_address),
        .out_memdep_sobel_filter_avm_burstcount(sobel_filter_function_out_memdep_sobel_filter_avm_burstcount),
        .out_memdep_sobel_filter_avm_byteenable(sobel_filter_function_out_memdep_sobel_filter_avm_byteenable),
        .out_memdep_sobel_filter_avm_enable(sobel_filter_function_out_memdep_sobel_filter_avm_enable),
        .out_memdep_sobel_filter_avm_read(sobel_filter_function_out_memdep_sobel_filter_avm_read),
        .out_memdep_sobel_filter_avm_write(sobel_filter_function_out_memdep_sobel_filter_avm_write),
        .out_memdep_sobel_filter_avm_writedata(sobel_filter_function_out_memdep_sobel_filter_avm_writedata),
        .out_stall_out(),
        .out_unnamed_sobel_filter10_sobel_filter_avm_address(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_address),
        .out_unnamed_sobel_filter10_sobel_filter_avm_burstcount(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter10_sobel_filter_avm_byteenable(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_enable(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter10_sobel_filter_avm_read(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_read),
        .out_unnamed_sobel_filter10_sobel_filter_avm_write(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_write),
        .out_unnamed_sobel_filter10_sobel_filter_avm_writedata(sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter12_sobel_filter_avm_address(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_address),
        .out_unnamed_sobel_filter12_sobel_filter_avm_burstcount(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter12_sobel_filter_avm_byteenable(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter12_sobel_filter_avm_enable(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter12_sobel_filter_avm_read(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_read),
        .out_unnamed_sobel_filter12_sobel_filter_avm_write(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_write),
        .out_unnamed_sobel_filter12_sobel_filter_avm_writedata(sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter14_sobel_filter_avm_address(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_address),
        .out_unnamed_sobel_filter14_sobel_filter_avm_burstcount(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter14_sobel_filter_avm_byteenable(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_enable(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter14_sobel_filter_avm_read(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_read),
        .out_unnamed_sobel_filter14_sobel_filter_avm_write(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_write),
        .out_unnamed_sobel_filter14_sobel_filter_avm_writedata(sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter15_sobel_filter_avm_address(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_address),
        .out_unnamed_sobel_filter15_sobel_filter_avm_burstcount(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter15_sobel_filter_avm_byteenable(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_enable(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter15_sobel_filter_avm_read(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_read),
        .out_unnamed_sobel_filter15_sobel_filter_avm_write(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_write),
        .out_unnamed_sobel_filter15_sobel_filter_avm_writedata(sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_writedata),
        .out_unnamed_sobel_filter8_sobel_filter_avm_address(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_address),
        .out_unnamed_sobel_filter8_sobel_filter_avm_burstcount(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_burstcount),
        .out_unnamed_sobel_filter8_sobel_filter_avm_byteenable(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_byteenable),
        .out_unnamed_sobel_filter8_sobel_filter_avm_enable(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_enable),
        .out_unnamed_sobel_filter8_sobel_filter_avm_read(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_read),
        .out_unnamed_sobel_filter8_sobel_filter_avm_write(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_write),
        .out_unnamed_sobel_filter8_sobel_filter_avm_writedata(sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm1202_sobel_filter_address(GPOUT,120)
    assign avm_lm1202_sobel_filter_address = sobel_filter_function_out_lm1202_sobel_filter_avm_address;

    // avm_lm1202_sobel_filter_burstcount(GPOUT,121)
    assign avm_lm1202_sobel_filter_burstcount = sobel_filter_function_out_lm1202_sobel_filter_avm_burstcount;

    // avm_lm1202_sobel_filter_byteenable(GPOUT,122)
    assign avm_lm1202_sobel_filter_byteenable = sobel_filter_function_out_lm1202_sobel_filter_avm_byteenable;

    // avm_lm1202_sobel_filter_enable(GPOUT,123)
    assign avm_lm1202_sobel_filter_enable = sobel_filter_function_out_lm1202_sobel_filter_avm_enable;

    // avm_lm1202_sobel_filter_read(GPOUT,124)
    assign avm_lm1202_sobel_filter_read = sobel_filter_function_out_lm1202_sobel_filter_avm_read;

    // avm_lm1202_sobel_filter_write(GPOUT,125)
    assign avm_lm1202_sobel_filter_write = sobel_filter_function_out_lm1202_sobel_filter_avm_write;

    // avm_lm1202_sobel_filter_writedata(GPOUT,126)
    assign avm_lm1202_sobel_filter_writedata = sobel_filter_function_out_lm1202_sobel_filter_avm_writedata;

    // avm_lm1223_sobel_filter_address(GPOUT,127)
    assign avm_lm1223_sobel_filter_address = sobel_filter_function_out_lm1223_sobel_filter_avm_address;

    // avm_lm1223_sobel_filter_burstcount(GPOUT,128)
    assign avm_lm1223_sobel_filter_burstcount = sobel_filter_function_out_lm1223_sobel_filter_avm_burstcount;

    // avm_lm1223_sobel_filter_byteenable(GPOUT,129)
    assign avm_lm1223_sobel_filter_byteenable = sobel_filter_function_out_lm1223_sobel_filter_avm_byteenable;

    // avm_lm1223_sobel_filter_enable(GPOUT,130)
    assign avm_lm1223_sobel_filter_enable = sobel_filter_function_out_lm1223_sobel_filter_avm_enable;

    // avm_lm1223_sobel_filter_read(GPOUT,131)
    assign avm_lm1223_sobel_filter_read = sobel_filter_function_out_lm1223_sobel_filter_avm_read;

    // avm_lm1223_sobel_filter_write(GPOUT,132)
    assign avm_lm1223_sobel_filter_write = sobel_filter_function_out_lm1223_sobel_filter_avm_write;

    // avm_lm1223_sobel_filter_writedata(GPOUT,133)
    assign avm_lm1223_sobel_filter_writedata = sobel_filter_function_out_lm1223_sobel_filter_avm_writedata;

    // avm_lm1244_sobel_filter_address(GPOUT,134)
    assign avm_lm1244_sobel_filter_address = sobel_filter_function_out_lm1244_sobel_filter_avm_address;

    // avm_lm1244_sobel_filter_burstcount(GPOUT,135)
    assign avm_lm1244_sobel_filter_burstcount = sobel_filter_function_out_lm1244_sobel_filter_avm_burstcount;

    // avm_lm1244_sobel_filter_byteenable(GPOUT,136)
    assign avm_lm1244_sobel_filter_byteenable = sobel_filter_function_out_lm1244_sobel_filter_avm_byteenable;

    // avm_lm1244_sobel_filter_enable(GPOUT,137)
    assign avm_lm1244_sobel_filter_enable = sobel_filter_function_out_lm1244_sobel_filter_avm_enable;

    // avm_lm1244_sobel_filter_read(GPOUT,138)
    assign avm_lm1244_sobel_filter_read = sobel_filter_function_out_lm1244_sobel_filter_avm_read;

    // avm_lm1244_sobel_filter_write(GPOUT,139)
    assign avm_lm1244_sobel_filter_write = sobel_filter_function_out_lm1244_sobel_filter_avm_write;

    // avm_lm1244_sobel_filter_writedata(GPOUT,140)
    assign avm_lm1244_sobel_filter_writedata = sobel_filter_function_out_lm1244_sobel_filter_avm_writedata;

    // avm_lm1265_sobel_filter_address(GPOUT,141)
    assign avm_lm1265_sobel_filter_address = sobel_filter_function_out_lm1265_sobel_filter_avm_address;

    // avm_lm1265_sobel_filter_burstcount(GPOUT,142)
    assign avm_lm1265_sobel_filter_burstcount = sobel_filter_function_out_lm1265_sobel_filter_avm_burstcount;

    // avm_lm1265_sobel_filter_byteenable(GPOUT,143)
    assign avm_lm1265_sobel_filter_byteenable = sobel_filter_function_out_lm1265_sobel_filter_avm_byteenable;

    // avm_lm1265_sobel_filter_enable(GPOUT,144)
    assign avm_lm1265_sobel_filter_enable = sobel_filter_function_out_lm1265_sobel_filter_avm_enable;

    // avm_lm1265_sobel_filter_read(GPOUT,145)
    assign avm_lm1265_sobel_filter_read = sobel_filter_function_out_lm1265_sobel_filter_avm_read;

    // avm_lm1265_sobel_filter_write(GPOUT,146)
    assign avm_lm1265_sobel_filter_write = sobel_filter_function_out_lm1265_sobel_filter_avm_write;

    // avm_lm1265_sobel_filter_writedata(GPOUT,147)
    assign avm_lm1265_sobel_filter_writedata = sobel_filter_function_out_lm1265_sobel_filter_avm_writedata;

    // avm_lm1286_sobel_filter_address(GPOUT,148)
    assign avm_lm1286_sobel_filter_address = sobel_filter_function_out_lm1286_sobel_filter_avm_address;

    // avm_lm1286_sobel_filter_burstcount(GPOUT,149)
    assign avm_lm1286_sobel_filter_burstcount = sobel_filter_function_out_lm1286_sobel_filter_avm_burstcount;

    // avm_lm1286_sobel_filter_byteenable(GPOUT,150)
    assign avm_lm1286_sobel_filter_byteenable = sobel_filter_function_out_lm1286_sobel_filter_avm_byteenable;

    // avm_lm1286_sobel_filter_enable(GPOUT,151)
    assign avm_lm1286_sobel_filter_enable = sobel_filter_function_out_lm1286_sobel_filter_avm_enable;

    // avm_lm1286_sobel_filter_read(GPOUT,152)
    assign avm_lm1286_sobel_filter_read = sobel_filter_function_out_lm1286_sobel_filter_avm_read;

    // avm_lm1286_sobel_filter_write(GPOUT,153)
    assign avm_lm1286_sobel_filter_write = sobel_filter_function_out_lm1286_sobel_filter_avm_write;

    // avm_lm1286_sobel_filter_writedata(GPOUT,154)
    assign avm_lm1286_sobel_filter_writedata = sobel_filter_function_out_lm1286_sobel_filter_avm_writedata;

    // avm_lm1307_sobel_filter_address(GPOUT,155)
    assign avm_lm1307_sobel_filter_address = sobel_filter_function_out_lm1307_sobel_filter_avm_address;

    // avm_lm1307_sobel_filter_burstcount(GPOUT,156)
    assign avm_lm1307_sobel_filter_burstcount = sobel_filter_function_out_lm1307_sobel_filter_avm_burstcount;

    // avm_lm1307_sobel_filter_byteenable(GPOUT,157)
    assign avm_lm1307_sobel_filter_byteenable = sobel_filter_function_out_lm1307_sobel_filter_avm_byteenable;

    // avm_lm1307_sobel_filter_enable(GPOUT,158)
    assign avm_lm1307_sobel_filter_enable = sobel_filter_function_out_lm1307_sobel_filter_avm_enable;

    // avm_lm1307_sobel_filter_read(GPOUT,159)
    assign avm_lm1307_sobel_filter_read = sobel_filter_function_out_lm1307_sobel_filter_avm_read;

    // avm_lm1307_sobel_filter_write(GPOUT,160)
    assign avm_lm1307_sobel_filter_write = sobel_filter_function_out_lm1307_sobel_filter_avm_write;

    // avm_lm1307_sobel_filter_writedata(GPOUT,161)
    assign avm_lm1307_sobel_filter_writedata = sobel_filter_function_out_lm1307_sobel_filter_avm_writedata;

    // avm_lm1328_sobel_filter_address(GPOUT,162)
    assign avm_lm1328_sobel_filter_address = sobel_filter_function_out_lm1328_sobel_filter_avm_address;

    // avm_lm1328_sobel_filter_burstcount(GPOUT,163)
    assign avm_lm1328_sobel_filter_burstcount = sobel_filter_function_out_lm1328_sobel_filter_avm_burstcount;

    // avm_lm1328_sobel_filter_byteenable(GPOUT,164)
    assign avm_lm1328_sobel_filter_byteenable = sobel_filter_function_out_lm1328_sobel_filter_avm_byteenable;

    // avm_lm1328_sobel_filter_enable(GPOUT,165)
    assign avm_lm1328_sobel_filter_enable = sobel_filter_function_out_lm1328_sobel_filter_avm_enable;

    // avm_lm1328_sobel_filter_read(GPOUT,166)
    assign avm_lm1328_sobel_filter_read = sobel_filter_function_out_lm1328_sobel_filter_avm_read;

    // avm_lm1328_sobel_filter_write(GPOUT,167)
    assign avm_lm1328_sobel_filter_write = sobel_filter_function_out_lm1328_sobel_filter_avm_write;

    // avm_lm1328_sobel_filter_writedata(GPOUT,168)
    assign avm_lm1328_sobel_filter_writedata = sobel_filter_function_out_lm1328_sobel_filter_avm_writedata;

    // avm_lm1479_sobel_filter_address(GPOUT,169)
    assign avm_lm1479_sobel_filter_address = sobel_filter_function_out_lm1479_sobel_filter_avm_address;

    // avm_lm1479_sobel_filter_burstcount(GPOUT,170)
    assign avm_lm1479_sobel_filter_burstcount = sobel_filter_function_out_lm1479_sobel_filter_avm_burstcount;

    // avm_lm1479_sobel_filter_byteenable(GPOUT,171)
    assign avm_lm1479_sobel_filter_byteenable = sobel_filter_function_out_lm1479_sobel_filter_avm_byteenable;

    // avm_lm1479_sobel_filter_enable(GPOUT,172)
    assign avm_lm1479_sobel_filter_enable = sobel_filter_function_out_lm1479_sobel_filter_avm_enable;

    // avm_lm1479_sobel_filter_read(GPOUT,173)
    assign avm_lm1479_sobel_filter_read = sobel_filter_function_out_lm1479_sobel_filter_avm_read;

    // avm_lm1479_sobel_filter_write(GPOUT,174)
    assign avm_lm1479_sobel_filter_write = sobel_filter_function_out_lm1479_sobel_filter_avm_write;

    // avm_lm1479_sobel_filter_writedata(GPOUT,175)
    assign avm_lm1479_sobel_filter_writedata = sobel_filter_function_out_lm1479_sobel_filter_avm_writedata;

    // avm_lm14910_sobel_filter_address(GPOUT,176)
    assign avm_lm14910_sobel_filter_address = sobel_filter_function_out_lm14910_sobel_filter_avm_address;

    // avm_lm14910_sobel_filter_burstcount(GPOUT,177)
    assign avm_lm14910_sobel_filter_burstcount = sobel_filter_function_out_lm14910_sobel_filter_avm_burstcount;

    // avm_lm14910_sobel_filter_byteenable(GPOUT,178)
    assign avm_lm14910_sobel_filter_byteenable = sobel_filter_function_out_lm14910_sobel_filter_avm_byteenable;

    // avm_lm14910_sobel_filter_enable(GPOUT,179)
    assign avm_lm14910_sobel_filter_enable = sobel_filter_function_out_lm14910_sobel_filter_avm_enable;

    // avm_lm14910_sobel_filter_read(GPOUT,180)
    assign avm_lm14910_sobel_filter_read = sobel_filter_function_out_lm14910_sobel_filter_avm_read;

    // avm_lm14910_sobel_filter_write(GPOUT,181)
    assign avm_lm14910_sobel_filter_write = sobel_filter_function_out_lm14910_sobel_filter_avm_write;

    // avm_lm14910_sobel_filter_writedata(GPOUT,182)
    assign avm_lm14910_sobel_filter_writedata = sobel_filter_function_out_lm14910_sobel_filter_avm_writedata;

    // avm_lm15111_sobel_filter_address(GPOUT,183)
    assign avm_lm15111_sobel_filter_address = sobel_filter_function_out_lm15111_sobel_filter_avm_address;

    // avm_lm15111_sobel_filter_burstcount(GPOUT,184)
    assign avm_lm15111_sobel_filter_burstcount = sobel_filter_function_out_lm15111_sobel_filter_avm_burstcount;

    // avm_lm15111_sobel_filter_byteenable(GPOUT,185)
    assign avm_lm15111_sobel_filter_byteenable = sobel_filter_function_out_lm15111_sobel_filter_avm_byteenable;

    // avm_lm15111_sobel_filter_enable(GPOUT,186)
    assign avm_lm15111_sobel_filter_enable = sobel_filter_function_out_lm15111_sobel_filter_avm_enable;

    // avm_lm15111_sobel_filter_read(GPOUT,187)
    assign avm_lm15111_sobel_filter_read = sobel_filter_function_out_lm15111_sobel_filter_avm_read;

    // avm_lm15111_sobel_filter_write(GPOUT,188)
    assign avm_lm15111_sobel_filter_write = sobel_filter_function_out_lm15111_sobel_filter_avm_write;

    // avm_lm15111_sobel_filter_writedata(GPOUT,189)
    assign avm_lm15111_sobel_filter_writedata = sobel_filter_function_out_lm15111_sobel_filter_avm_writedata;

    // avm_lm15312_sobel_filter_address(GPOUT,190)
    assign avm_lm15312_sobel_filter_address = sobel_filter_function_out_lm15312_sobel_filter_avm_address;

    // avm_lm15312_sobel_filter_burstcount(GPOUT,191)
    assign avm_lm15312_sobel_filter_burstcount = sobel_filter_function_out_lm15312_sobel_filter_avm_burstcount;

    // avm_lm15312_sobel_filter_byteenable(GPOUT,192)
    assign avm_lm15312_sobel_filter_byteenable = sobel_filter_function_out_lm15312_sobel_filter_avm_byteenable;

    // avm_lm15312_sobel_filter_enable(GPOUT,193)
    assign avm_lm15312_sobel_filter_enable = sobel_filter_function_out_lm15312_sobel_filter_avm_enable;

    // avm_lm15312_sobel_filter_read(GPOUT,194)
    assign avm_lm15312_sobel_filter_read = sobel_filter_function_out_lm15312_sobel_filter_avm_read;

    // avm_lm15312_sobel_filter_write(GPOUT,195)
    assign avm_lm15312_sobel_filter_write = sobel_filter_function_out_lm15312_sobel_filter_avm_write;

    // avm_lm15312_sobel_filter_writedata(GPOUT,196)
    assign avm_lm15312_sobel_filter_writedata = sobel_filter_function_out_lm15312_sobel_filter_avm_writedata;

    // avm_lm15513_sobel_filter_address(GPOUT,197)
    assign avm_lm15513_sobel_filter_address = sobel_filter_function_out_lm15513_sobel_filter_avm_address;

    // avm_lm15513_sobel_filter_burstcount(GPOUT,198)
    assign avm_lm15513_sobel_filter_burstcount = sobel_filter_function_out_lm15513_sobel_filter_avm_burstcount;

    // avm_lm15513_sobel_filter_byteenable(GPOUT,199)
    assign avm_lm15513_sobel_filter_byteenable = sobel_filter_function_out_lm15513_sobel_filter_avm_byteenable;

    // avm_lm15513_sobel_filter_enable(GPOUT,200)
    assign avm_lm15513_sobel_filter_enable = sobel_filter_function_out_lm15513_sobel_filter_avm_enable;

    // avm_lm15513_sobel_filter_read(GPOUT,201)
    assign avm_lm15513_sobel_filter_read = sobel_filter_function_out_lm15513_sobel_filter_avm_read;

    // avm_lm15513_sobel_filter_write(GPOUT,202)
    assign avm_lm15513_sobel_filter_write = sobel_filter_function_out_lm15513_sobel_filter_avm_write;

    // avm_lm15513_sobel_filter_writedata(GPOUT,203)
    assign avm_lm15513_sobel_filter_writedata = sobel_filter_function_out_lm15513_sobel_filter_avm_writedata;

    // avm_lm15714_sobel_filter_address(GPOUT,204)
    assign avm_lm15714_sobel_filter_address = sobel_filter_function_out_lm15714_sobel_filter_avm_address;

    // avm_lm15714_sobel_filter_burstcount(GPOUT,205)
    assign avm_lm15714_sobel_filter_burstcount = sobel_filter_function_out_lm15714_sobel_filter_avm_burstcount;

    // avm_lm15714_sobel_filter_byteenable(GPOUT,206)
    assign avm_lm15714_sobel_filter_byteenable = sobel_filter_function_out_lm15714_sobel_filter_avm_byteenable;

    // avm_lm15714_sobel_filter_enable(GPOUT,207)
    assign avm_lm15714_sobel_filter_enable = sobel_filter_function_out_lm15714_sobel_filter_avm_enable;

    // avm_lm15714_sobel_filter_read(GPOUT,208)
    assign avm_lm15714_sobel_filter_read = sobel_filter_function_out_lm15714_sobel_filter_avm_read;

    // avm_lm15714_sobel_filter_write(GPOUT,209)
    assign avm_lm15714_sobel_filter_write = sobel_filter_function_out_lm15714_sobel_filter_avm_write;

    // avm_lm15714_sobel_filter_writedata(GPOUT,210)
    assign avm_lm15714_sobel_filter_writedata = sobel_filter_function_out_lm15714_sobel_filter_avm_writedata;

    // avm_lm15915_sobel_filter_address(GPOUT,211)
    assign avm_lm15915_sobel_filter_address = sobel_filter_function_out_lm15915_sobel_filter_avm_address;

    // avm_lm15915_sobel_filter_burstcount(GPOUT,212)
    assign avm_lm15915_sobel_filter_burstcount = sobel_filter_function_out_lm15915_sobel_filter_avm_burstcount;

    // avm_lm15915_sobel_filter_byteenable(GPOUT,213)
    assign avm_lm15915_sobel_filter_byteenable = sobel_filter_function_out_lm15915_sobel_filter_avm_byteenable;

    // avm_lm15915_sobel_filter_enable(GPOUT,214)
    assign avm_lm15915_sobel_filter_enable = sobel_filter_function_out_lm15915_sobel_filter_avm_enable;

    // avm_lm15915_sobel_filter_read(GPOUT,215)
    assign avm_lm15915_sobel_filter_read = sobel_filter_function_out_lm15915_sobel_filter_avm_read;

    // avm_lm15915_sobel_filter_write(GPOUT,216)
    assign avm_lm15915_sobel_filter_write = sobel_filter_function_out_lm15915_sobel_filter_avm_write;

    // avm_lm15915_sobel_filter_writedata(GPOUT,217)
    assign avm_lm15915_sobel_filter_writedata = sobel_filter_function_out_lm15915_sobel_filter_avm_writedata;

    // avm_lm16116_sobel_filter_address(GPOUT,218)
    assign avm_lm16116_sobel_filter_address = sobel_filter_function_out_lm16116_sobel_filter_avm_address;

    // avm_lm16116_sobel_filter_burstcount(GPOUT,219)
    assign avm_lm16116_sobel_filter_burstcount = sobel_filter_function_out_lm16116_sobel_filter_avm_burstcount;

    // avm_lm16116_sobel_filter_byteenable(GPOUT,220)
    assign avm_lm16116_sobel_filter_byteenable = sobel_filter_function_out_lm16116_sobel_filter_avm_byteenable;

    // avm_lm16116_sobel_filter_enable(GPOUT,221)
    assign avm_lm16116_sobel_filter_enable = sobel_filter_function_out_lm16116_sobel_filter_avm_enable;

    // avm_lm16116_sobel_filter_read(GPOUT,222)
    assign avm_lm16116_sobel_filter_read = sobel_filter_function_out_lm16116_sobel_filter_avm_read;

    // avm_lm16116_sobel_filter_write(GPOUT,223)
    assign avm_lm16116_sobel_filter_write = sobel_filter_function_out_lm16116_sobel_filter_avm_write;

    // avm_lm16116_sobel_filter_writedata(GPOUT,224)
    assign avm_lm16116_sobel_filter_writedata = sobel_filter_function_out_lm16116_sobel_filter_avm_writedata;

    // avm_lm1_sobel_filter_address(GPOUT,225)
    assign avm_lm1_sobel_filter_address = sobel_filter_function_out_lm1_sobel_filter_avm_address;

    // avm_lm1_sobel_filter_burstcount(GPOUT,226)
    assign avm_lm1_sobel_filter_burstcount = sobel_filter_function_out_lm1_sobel_filter_avm_burstcount;

    // avm_lm1_sobel_filter_byteenable(GPOUT,227)
    assign avm_lm1_sobel_filter_byteenable = sobel_filter_function_out_lm1_sobel_filter_avm_byteenable;

    // avm_lm1_sobel_filter_enable(GPOUT,228)
    assign avm_lm1_sobel_filter_enable = sobel_filter_function_out_lm1_sobel_filter_avm_enable;

    // avm_lm1_sobel_filter_read(GPOUT,229)
    assign avm_lm1_sobel_filter_read = sobel_filter_function_out_lm1_sobel_filter_avm_read;

    // avm_lm1_sobel_filter_write(GPOUT,230)
    assign avm_lm1_sobel_filter_write = sobel_filter_function_out_lm1_sobel_filter_avm_write;

    // avm_lm1_sobel_filter_writedata(GPOUT,231)
    assign avm_lm1_sobel_filter_writedata = sobel_filter_function_out_lm1_sobel_filter_avm_writedata;

    // avm_memdep_19_sobel_filter_address(GPOUT,232)
    assign avm_memdep_19_sobel_filter_address = sobel_filter_function_out_memdep_19_sobel_filter_avm_address;

    // avm_memdep_19_sobel_filter_burstcount(GPOUT,233)
    assign avm_memdep_19_sobel_filter_burstcount = sobel_filter_function_out_memdep_19_sobel_filter_avm_burstcount;

    // avm_memdep_19_sobel_filter_byteenable(GPOUT,234)
    assign avm_memdep_19_sobel_filter_byteenable = sobel_filter_function_out_memdep_19_sobel_filter_avm_byteenable;

    // avm_memdep_19_sobel_filter_enable(GPOUT,235)
    assign avm_memdep_19_sobel_filter_enable = sobel_filter_function_out_memdep_19_sobel_filter_avm_enable;

    // avm_memdep_19_sobel_filter_read(GPOUT,236)
    assign avm_memdep_19_sobel_filter_read = sobel_filter_function_out_memdep_19_sobel_filter_avm_read;

    // avm_memdep_19_sobel_filter_write(GPOUT,237)
    assign avm_memdep_19_sobel_filter_write = sobel_filter_function_out_memdep_19_sobel_filter_avm_write;

    // avm_memdep_19_sobel_filter_writedata(GPOUT,238)
    assign avm_memdep_19_sobel_filter_writedata = sobel_filter_function_out_memdep_19_sobel_filter_avm_writedata;

    // avm_memdep_20_sobel_filter_address(GPOUT,239)
    assign avm_memdep_20_sobel_filter_address = sobel_filter_function_out_memdep_20_sobel_filter_avm_address;

    // avm_memdep_20_sobel_filter_burstcount(GPOUT,240)
    assign avm_memdep_20_sobel_filter_burstcount = sobel_filter_function_out_memdep_20_sobel_filter_avm_burstcount;

    // avm_memdep_20_sobel_filter_byteenable(GPOUT,241)
    assign avm_memdep_20_sobel_filter_byteenable = sobel_filter_function_out_memdep_20_sobel_filter_avm_byteenable;

    // avm_memdep_20_sobel_filter_enable(GPOUT,242)
    assign avm_memdep_20_sobel_filter_enable = sobel_filter_function_out_memdep_20_sobel_filter_avm_enable;

    // avm_memdep_20_sobel_filter_read(GPOUT,243)
    assign avm_memdep_20_sobel_filter_read = sobel_filter_function_out_memdep_20_sobel_filter_avm_read;

    // avm_memdep_20_sobel_filter_write(GPOUT,244)
    assign avm_memdep_20_sobel_filter_write = sobel_filter_function_out_memdep_20_sobel_filter_avm_write;

    // avm_memdep_20_sobel_filter_writedata(GPOUT,245)
    assign avm_memdep_20_sobel_filter_writedata = sobel_filter_function_out_memdep_20_sobel_filter_avm_writedata;

    // avm_memdep_21_sobel_filter_address(GPOUT,246)
    assign avm_memdep_21_sobel_filter_address = sobel_filter_function_out_memdep_21_sobel_filter_avm_address;

    // avm_memdep_21_sobel_filter_burstcount(GPOUT,247)
    assign avm_memdep_21_sobel_filter_burstcount = sobel_filter_function_out_memdep_21_sobel_filter_avm_burstcount;

    // avm_memdep_21_sobel_filter_byteenable(GPOUT,248)
    assign avm_memdep_21_sobel_filter_byteenable = sobel_filter_function_out_memdep_21_sobel_filter_avm_byteenable;

    // avm_memdep_21_sobel_filter_enable(GPOUT,249)
    assign avm_memdep_21_sobel_filter_enable = sobel_filter_function_out_memdep_21_sobel_filter_avm_enable;

    // avm_memdep_21_sobel_filter_read(GPOUT,250)
    assign avm_memdep_21_sobel_filter_read = sobel_filter_function_out_memdep_21_sobel_filter_avm_read;

    // avm_memdep_21_sobel_filter_write(GPOUT,251)
    assign avm_memdep_21_sobel_filter_write = sobel_filter_function_out_memdep_21_sobel_filter_avm_write;

    // avm_memdep_21_sobel_filter_writedata(GPOUT,252)
    assign avm_memdep_21_sobel_filter_writedata = sobel_filter_function_out_memdep_21_sobel_filter_avm_writedata;

    // avm_memdep_sobel_filter_address(GPOUT,253)
    assign avm_memdep_sobel_filter_address = sobel_filter_function_out_memdep_sobel_filter_avm_address;

    // avm_memdep_sobel_filter_burstcount(GPOUT,254)
    assign avm_memdep_sobel_filter_burstcount = sobel_filter_function_out_memdep_sobel_filter_avm_burstcount;

    // avm_memdep_sobel_filter_byteenable(GPOUT,255)
    assign avm_memdep_sobel_filter_byteenable = sobel_filter_function_out_memdep_sobel_filter_avm_byteenable;

    // avm_memdep_sobel_filter_enable(GPOUT,256)
    assign avm_memdep_sobel_filter_enable = sobel_filter_function_out_memdep_sobel_filter_avm_enable;

    // avm_memdep_sobel_filter_read(GPOUT,257)
    assign avm_memdep_sobel_filter_read = sobel_filter_function_out_memdep_sobel_filter_avm_read;

    // avm_memdep_sobel_filter_write(GPOUT,258)
    assign avm_memdep_sobel_filter_write = sobel_filter_function_out_memdep_sobel_filter_avm_write;

    // avm_memdep_sobel_filter_writedata(GPOUT,259)
    assign avm_memdep_sobel_filter_writedata = sobel_filter_function_out_memdep_sobel_filter_avm_writedata;

    // avm_unnamed_sobel_filter10_sobel_filter_address(GPOUT,260)
    assign avm_unnamed_sobel_filter10_sobel_filter_address = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_address;

    // avm_unnamed_sobel_filter10_sobel_filter_burstcount(GPOUT,261)
    assign avm_unnamed_sobel_filter10_sobel_filter_burstcount = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_burstcount;

    // avm_unnamed_sobel_filter10_sobel_filter_byteenable(GPOUT,262)
    assign avm_unnamed_sobel_filter10_sobel_filter_byteenable = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_byteenable;

    // avm_unnamed_sobel_filter10_sobel_filter_enable(GPOUT,263)
    assign avm_unnamed_sobel_filter10_sobel_filter_enable = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_enable;

    // avm_unnamed_sobel_filter10_sobel_filter_read(GPOUT,264)
    assign avm_unnamed_sobel_filter10_sobel_filter_read = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_read;

    // avm_unnamed_sobel_filter10_sobel_filter_write(GPOUT,265)
    assign avm_unnamed_sobel_filter10_sobel_filter_write = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_write;

    // avm_unnamed_sobel_filter10_sobel_filter_writedata(GPOUT,266)
    assign avm_unnamed_sobel_filter10_sobel_filter_writedata = sobel_filter_function_out_unnamed_sobel_filter10_sobel_filter_avm_writedata;

    // avm_unnamed_sobel_filter12_sobel_filter_address(GPOUT,267)
    assign avm_unnamed_sobel_filter12_sobel_filter_address = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_address;

    // avm_unnamed_sobel_filter12_sobel_filter_burstcount(GPOUT,268)
    assign avm_unnamed_sobel_filter12_sobel_filter_burstcount = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_burstcount;

    // avm_unnamed_sobel_filter12_sobel_filter_byteenable(GPOUT,269)
    assign avm_unnamed_sobel_filter12_sobel_filter_byteenable = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_byteenable;

    // avm_unnamed_sobel_filter12_sobel_filter_enable(GPOUT,270)
    assign avm_unnamed_sobel_filter12_sobel_filter_enable = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_enable;

    // avm_unnamed_sobel_filter12_sobel_filter_read(GPOUT,271)
    assign avm_unnamed_sobel_filter12_sobel_filter_read = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_read;

    // avm_unnamed_sobel_filter12_sobel_filter_write(GPOUT,272)
    assign avm_unnamed_sobel_filter12_sobel_filter_write = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_write;

    // avm_unnamed_sobel_filter12_sobel_filter_writedata(GPOUT,273)
    assign avm_unnamed_sobel_filter12_sobel_filter_writedata = sobel_filter_function_out_unnamed_sobel_filter12_sobel_filter_avm_writedata;

    // avm_unnamed_sobel_filter14_sobel_filter_address(GPOUT,274)
    assign avm_unnamed_sobel_filter14_sobel_filter_address = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_address;

    // avm_unnamed_sobel_filter14_sobel_filter_burstcount(GPOUT,275)
    assign avm_unnamed_sobel_filter14_sobel_filter_burstcount = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_burstcount;

    // avm_unnamed_sobel_filter14_sobel_filter_byteenable(GPOUT,276)
    assign avm_unnamed_sobel_filter14_sobel_filter_byteenable = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_byteenable;

    // avm_unnamed_sobel_filter14_sobel_filter_enable(GPOUT,277)
    assign avm_unnamed_sobel_filter14_sobel_filter_enable = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_enable;

    // avm_unnamed_sobel_filter14_sobel_filter_read(GPOUT,278)
    assign avm_unnamed_sobel_filter14_sobel_filter_read = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_read;

    // avm_unnamed_sobel_filter14_sobel_filter_write(GPOUT,279)
    assign avm_unnamed_sobel_filter14_sobel_filter_write = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_write;

    // avm_unnamed_sobel_filter14_sobel_filter_writedata(GPOUT,280)
    assign avm_unnamed_sobel_filter14_sobel_filter_writedata = sobel_filter_function_out_unnamed_sobel_filter14_sobel_filter_avm_writedata;

    // avm_unnamed_sobel_filter15_sobel_filter_address(GPOUT,281)
    assign avm_unnamed_sobel_filter15_sobel_filter_address = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_address;

    // avm_unnamed_sobel_filter15_sobel_filter_burstcount(GPOUT,282)
    assign avm_unnamed_sobel_filter15_sobel_filter_burstcount = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_burstcount;

    // avm_unnamed_sobel_filter15_sobel_filter_byteenable(GPOUT,283)
    assign avm_unnamed_sobel_filter15_sobel_filter_byteenable = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_byteenable;

    // avm_unnamed_sobel_filter15_sobel_filter_enable(GPOUT,284)
    assign avm_unnamed_sobel_filter15_sobel_filter_enable = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_enable;

    // avm_unnamed_sobel_filter15_sobel_filter_read(GPOUT,285)
    assign avm_unnamed_sobel_filter15_sobel_filter_read = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_read;

    // avm_unnamed_sobel_filter15_sobel_filter_write(GPOUT,286)
    assign avm_unnamed_sobel_filter15_sobel_filter_write = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_write;

    // avm_unnamed_sobel_filter15_sobel_filter_writedata(GPOUT,287)
    assign avm_unnamed_sobel_filter15_sobel_filter_writedata = sobel_filter_function_out_unnamed_sobel_filter15_sobel_filter_avm_writedata;

    // avm_unnamed_sobel_filter8_sobel_filter_address(GPOUT,288)
    assign avm_unnamed_sobel_filter8_sobel_filter_address = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_address;

    // avm_unnamed_sobel_filter8_sobel_filter_burstcount(GPOUT,289)
    assign avm_unnamed_sobel_filter8_sobel_filter_burstcount = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_burstcount;

    // avm_unnamed_sobel_filter8_sobel_filter_byteenable(GPOUT,290)
    assign avm_unnamed_sobel_filter8_sobel_filter_byteenable = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_byteenable;

    // avm_unnamed_sobel_filter8_sobel_filter_enable(GPOUT,291)
    assign avm_unnamed_sobel_filter8_sobel_filter_enable = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_enable;

    // avm_unnamed_sobel_filter8_sobel_filter_read(GPOUT,292)
    assign avm_unnamed_sobel_filter8_sobel_filter_read = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_read;

    // avm_unnamed_sobel_filter8_sobel_filter_write(GPOUT,293)
    assign avm_unnamed_sobel_filter8_sobel_filter_write = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_write;

    // avm_unnamed_sobel_filter8_sobel_filter_writedata(GPOUT,294)
    assign avm_unnamed_sobel_filter8_sobel_filter_writedata = sobel_filter_function_out_unnamed_sobel_filter8_sobel_filter_avm_writedata;

    // avst_iord_bl_call_sobel_filter_ready(GPOUT,295)
    assign avst_iord_bl_call_sobel_filter_ready = sobel_filter_function_out_iord_bl_call_sobel_filter_o_fifoready;

    // avst_iowr_bl_return_sobel_filter_data(GPOUT,296)
    assign avst_iowr_bl_return_sobel_filter_data = sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifodata;

    // avst_iowr_bl_return_sobel_filter_valid(GPOUT,297)
    assign avst_iowr_bl_return_sobel_filter_valid = sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifovalid;

    // not_ready(LOGICAL,118)
    assign not_ready_q = ~ (sobel_filter_function_out_iord_bl_call_sobel_filter_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,302)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,301)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,298)
    assign busy = busy_or_q;

    // done(GPOUT,299)
    assign done = sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifovalid;

    // returndata(GPOUT,300)
    assign returndata = sobel_filter_function_out_iowr_bl_return_sobel_filter_o_fifodata;

endmodule
