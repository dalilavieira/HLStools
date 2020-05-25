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

// SystemVerilog created from emscripten_compute_dom_pk_code_function
// SystemVerilog created on Sun May 24 22:31:15 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module emscripten_compute_dom_pk_code_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_keyCodeString,
    input wire [63:0] in_arg_return1,
    input wire [9919:0] in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata,
    input wire [0:0] in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_emscripten_compute_dom_pk_code_i_fifoready,
    input wire [63:0] in_lm24714_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm24714_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm24714_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm24714_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm24845_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm24845_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm24845_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm24845_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm24966_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm24966_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm24966_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm24966_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm25087_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm25087_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm25087_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm25087_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm25208_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm25208_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm25208_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm25208_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm25329_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm25329_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm25329_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm25329_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm254410_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm254410_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm254410_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm254410_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm255611_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm255611_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm255611_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm255611_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm256812_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm256812_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm256812_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm256812_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm258113_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm258113_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm258113_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm258113_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm259314_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm259314_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm259314_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm259314_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm260515_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm260515_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm260515_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm260515_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm261816_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm261816_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm261816_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm261816_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm263017_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm263017_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm263017_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm263017_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm264218_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm264218_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm264218_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm264218_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm265519_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm265519_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm265519_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm265519_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm266720_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm266720_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm266720_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm266720_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm268021_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm268021_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm268021_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm268021_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm269222_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm269222_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm269222_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm269222_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm270523_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm270523_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm270523_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm270523_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm271824_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm271824_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm271824_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm271824_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm273125_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm273125_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm273125_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm273125_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm274326_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm274326_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm274326_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm274326_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm275527_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm275527_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm275527_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm275527_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm276728_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm276728_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm276728_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm276728_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm278029_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm278029_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm278029_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm278029_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm279230_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm279230_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm279230_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm279230_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm280531_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm280531_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm280531_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm280531_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm281732_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm281732_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm281732_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm281732_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm283033_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm283033_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm283033_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm283033_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm284334_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm284334_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm284334_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm284334_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm285535_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm285535_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm285535_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm285535_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm287936_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm287936_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm287936_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm287936_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm290337_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm290337_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm290337_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm290337_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm291538_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm291538_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm291538_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm291538_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm292739_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm292739_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm292739_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm292739_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm293940_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm293940_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm293940_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm293940_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm295141_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm295141_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm295141_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm295141_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm297642_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm297642_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm297642_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm297642_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm298843_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm298843_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm298843_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm298843_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm300144_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm300144_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm300144_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm300144_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm301345_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm301345_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm301345_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm301345_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm302646_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm302646_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm302646_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm302646_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm303947_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm303947_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm303947_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm303947_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm305148_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm305148_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm305148_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm305148_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm306449_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm306449_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm306449_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm306449_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm307750_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm307750_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm307750_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm307750_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm309051_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm309051_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm309051_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm309051_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm310252_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm310252_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm310252_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm310252_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm311553_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm311553_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm311553_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm311553_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm312854_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm312854_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm312854_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm312854_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm313955_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm313955_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm313955_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm313955_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm315256_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm315256_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm315256_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm315256_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm316457_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm316457_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm316457_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm316457_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm317658_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm317658_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm317658_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm317658_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm318759_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm318759_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm318759_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm318759_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm319860_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm319860_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm319860_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm319860_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm320961_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm320961_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm320961_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm320961_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm322262_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm322262_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm322262_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm322262_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm323463_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm323463_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm323463_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm323463_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm324564_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm324564_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm324564_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm324564_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm325665_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm325665_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm325665_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm325665_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm326766_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm326766_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm326766_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm326766_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm327967_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm327967_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm327967_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm327967_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm329168_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm329168_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm329168_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm329168_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm330369_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm330369_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm330369_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm330369_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm331470_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm331470_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm331470_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm331470_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm332571_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm332571_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm332571_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm332571_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm333872_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm333872_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm333872_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm333872_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm335073_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm335073_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm335073_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm335073_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm336374_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm336374_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm336374_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm336374_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm337475_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm337475_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm337475_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm337475_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm338676_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm338676_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm338676_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm338676_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm339777_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm339777_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm339777_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm339777_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm340878_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm340878_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm340878_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm340878_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm342179_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm342179_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm342179_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm342179_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm343280_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm343280_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm343280_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm343280_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm344381_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm344381_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm344381_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm344381_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm345582_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm345582_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm345582_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm345582_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm346783_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm346783_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm346783_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm346783_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm348084_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm348084_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm348084_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm348084_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm349285_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm349285_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm349285_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm349285_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm350486_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm350486_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm350486_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm350486_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm351687_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm351687_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm351687_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm351687_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm352888_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm352888_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm352888_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm352888_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm353989_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm353989_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm353989_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm353989_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm355190_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm355190_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm355190_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm355190_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm356291_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm356291_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm356291_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm356291_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm357592_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm357592_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm357592_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm357592_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm358693_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm358693_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm358693_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm358693_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm359794_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm359794_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm359794_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm359794_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm360895_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm360895_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm360895_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm360895_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm362096_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm362096_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm362096_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm362096_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm363297_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm363297_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm363297_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm363297_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm364398_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm364398_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm364398_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm364398_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm365699_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm365699_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm365699_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm365699_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3668100_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3668100_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3668100_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3668100_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3681101_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3681101_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3681101_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3681101_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3693102_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3693102_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3693102_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3693102_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3706103_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3706103_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3706103_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3706103_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3718104_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3718104_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3718104_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3718104_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3731105_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3731105_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3731105_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3731105_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3743106_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3743106_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3743106_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3743106_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3755107_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3755107_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3755107_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3755107_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3767108_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3767108_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3767108_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3767108_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3778109_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3778109_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3778109_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3778109_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3789110_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3789110_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3789110_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3789110_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3801111_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3801111_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3801111_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3801111_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3812112_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3812112_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3812112_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3812112_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3824113_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3824113_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3824113_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3824113_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3836114_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3836114_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3836114_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3836114_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3849115_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3849115_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3849115_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3849115_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3862116_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3862116_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3862116_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3862116_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3874117_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3874117_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3874117_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3874117_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3886118_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3886118_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3886118_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3886118_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3897119_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3897119_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3897119_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3897119_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3908120_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3908120_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3908120_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3908120_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3919121_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3919121_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3919121_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3919121_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3931122_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3931122_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3931122_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3931122_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3942123_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3942123_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3942123_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3942123_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3953124_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3953124_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3953124_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3953124_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3965125_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3965125_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3965125_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3965125_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3977126_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3977126_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3977126_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3977126_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3988127_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3988127_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3988127_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3988127_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm3_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm3_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm3_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm3_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4000128_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4000128_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4000128_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4000128_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4012129_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4012129_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4012129_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4012129_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4024130_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4024130_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4024130_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4024130_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4036131_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4036131_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4036131_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4036131_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4047132_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4047132_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4047132_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4047132_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4058133_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4058133_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4058133_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4058133_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4070134_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4070134_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4070134_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4070134_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4081135_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4081135_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4081135_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4081135_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4092136_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4092136_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4092136_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4092136_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4103137_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4103137_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4103137_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4103137_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4115138_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4115138_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4115138_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4115138_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4126139_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4126139_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4126139_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4126139_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4137140_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4137140_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4137140_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4137140_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4148141_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4148141_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4148141_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4148141_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4160142_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4160142_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4160142_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4160142_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4172143_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4172143_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4172143_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4172143_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4185144_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4185144_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4185144_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4185144_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4198145_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4198145_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4198145_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4198145_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4210146_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4210146_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4210146_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4210146_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4221147_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4221147_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4221147_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4221147_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4233148_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4233148_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4233148_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4233148_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4245149_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4245149_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4245149_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4245149_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4257150_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4257150_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4257150_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4257150_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4268151_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4268151_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4268151_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4268151_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4279152_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4279152_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4279152_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4279152_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4290153_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4290153_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4290153_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4290153_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4302154_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4302154_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4302154_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4302154_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4314155_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4314155_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4314155_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4314155_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm4326156_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm4326156_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm4326156_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm4326156_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm58771_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [63:0] in_lm58812_emscripten_compute_dom_pk_code_avm_readdata,
    input wire [0:0] in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid,
    input wire [0:0] in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest,
    input wire [0:0] in_lm58812_emscripten_compute_dom_pk_code_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready,
    output wire [31:0] out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata,
    output wire [0:0] out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid,
    output wire [63:0] out_lm24714_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm24714_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm24714_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm24714_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm24714_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm24845_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm24845_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm24845_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm24845_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm24845_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm24966_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm24966_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm24966_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm24966_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm24966_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm25087_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm25087_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm25087_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm25087_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm25087_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm25208_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm25208_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm25208_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm25208_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm25208_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm25329_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm25329_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm25329_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm25329_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm25329_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm254410_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm254410_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm254410_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm254410_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm254410_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm255611_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm255611_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm255611_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm255611_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm255611_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm256812_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm256812_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm256812_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm256812_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm256812_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm258113_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm258113_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm258113_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm258113_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm258113_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm259314_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm259314_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm259314_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm259314_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm259314_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm260515_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm260515_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm260515_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm260515_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm260515_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm261816_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm261816_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm261816_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm261816_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm261816_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm263017_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm263017_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm263017_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm263017_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm263017_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm264218_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm264218_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm264218_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm264218_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm264218_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm265519_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm265519_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm265519_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm265519_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm265519_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm266720_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm266720_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm266720_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm266720_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm266720_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm268021_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm268021_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm268021_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm268021_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm268021_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm269222_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm269222_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm269222_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm269222_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm269222_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm270523_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm270523_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm270523_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm270523_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm270523_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm271824_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm271824_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm271824_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm271824_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm271824_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm273125_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm273125_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm273125_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm273125_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm273125_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm274326_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm274326_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm274326_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm274326_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm274326_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm275527_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm275527_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm275527_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm275527_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm275527_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm276728_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm276728_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm276728_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm276728_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm276728_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm278029_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm278029_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm278029_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm278029_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm278029_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm279230_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm279230_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm279230_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm279230_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm279230_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm280531_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm280531_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm280531_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm280531_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm280531_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm281732_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm281732_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm281732_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm281732_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm281732_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm283033_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm283033_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm283033_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm283033_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm283033_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm284334_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm284334_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm284334_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm284334_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm284334_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm285535_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm285535_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm285535_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm285535_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm285535_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm287936_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm287936_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm287936_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm287936_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm287936_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm290337_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm290337_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm290337_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm290337_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm290337_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm291538_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm291538_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm291538_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm291538_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm291538_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm292739_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm292739_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm292739_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm292739_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm292739_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm293940_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm293940_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm293940_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm293940_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm293940_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm295141_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm295141_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm295141_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm295141_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm295141_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm297642_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm297642_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm297642_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm297642_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm297642_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm298843_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm298843_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm298843_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm298843_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm298843_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm300144_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm300144_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm300144_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm300144_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm300144_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm301345_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm301345_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm301345_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm301345_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm301345_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm302646_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm302646_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm302646_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm302646_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm302646_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm303947_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm303947_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm303947_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm303947_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm303947_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm305148_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm305148_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm305148_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm305148_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm305148_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm306449_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm306449_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm306449_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm306449_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm306449_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm307750_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm307750_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm307750_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm307750_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm307750_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm309051_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm309051_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm309051_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm309051_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm309051_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm310252_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm310252_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm310252_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm310252_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm310252_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm311553_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm311553_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm311553_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm311553_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm311553_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm312854_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm312854_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm312854_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm312854_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm312854_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm313955_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm313955_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm313955_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm313955_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm313955_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm315256_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm315256_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm315256_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm315256_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm315256_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm316457_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm316457_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm316457_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm316457_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm316457_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm317658_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm317658_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm317658_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm317658_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm317658_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm318759_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm318759_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm318759_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm318759_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm318759_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm319860_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm319860_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm319860_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm319860_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm319860_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm320961_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm320961_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm320961_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm320961_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm320961_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm322262_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm322262_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm322262_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm322262_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm322262_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm323463_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm323463_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm323463_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm323463_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm323463_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm324564_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm324564_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm324564_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm324564_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm324564_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm325665_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm325665_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm325665_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm325665_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm325665_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm326766_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm326766_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm326766_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm326766_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm326766_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm327967_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm327967_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm327967_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm327967_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm327967_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm329168_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm329168_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm329168_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm329168_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm329168_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm330369_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm330369_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm330369_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm330369_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm330369_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm331470_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm331470_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm331470_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm331470_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm331470_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm332571_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm332571_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm332571_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm332571_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm332571_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm333872_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm333872_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm333872_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm333872_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm333872_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm335073_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm335073_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm335073_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm335073_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm335073_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm336374_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm336374_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm336374_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm336374_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm336374_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm337475_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm337475_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm337475_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm337475_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm337475_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm338676_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm338676_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm338676_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm338676_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm338676_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm339777_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm339777_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm339777_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm339777_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm339777_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm340878_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm340878_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm340878_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm340878_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm340878_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm342179_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm342179_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm342179_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm342179_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm342179_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm343280_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm343280_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm343280_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm343280_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm343280_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm344381_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm344381_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm344381_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm344381_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm344381_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm345582_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm345582_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm345582_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm345582_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm345582_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm346783_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm346783_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm346783_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm346783_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm346783_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm348084_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm348084_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm348084_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm348084_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm348084_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm349285_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm349285_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm349285_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm349285_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm349285_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm350486_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm350486_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm350486_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm350486_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm350486_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm351687_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm351687_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm351687_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm351687_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm351687_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm352888_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm352888_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm352888_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm352888_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm352888_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm353989_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm353989_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm353989_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm353989_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm353989_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm355190_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm355190_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm355190_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm355190_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm355190_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm356291_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm356291_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm356291_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm356291_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm356291_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm357592_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm357592_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm357592_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm357592_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm357592_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm358693_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm358693_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm358693_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm358693_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm358693_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm359794_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm359794_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm359794_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm359794_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm359794_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm360895_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm360895_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm360895_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm360895_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm360895_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm362096_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm362096_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm362096_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm362096_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm362096_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm363297_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm363297_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm363297_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm363297_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm363297_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm364398_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm364398_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm364398_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm364398_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm364398_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm365699_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm365699_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm365699_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm365699_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm365699_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm3_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm3_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm3_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm3_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm3_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm3_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm3_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm58771_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm58771_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [63:0] out_lm58812_emscripten_compute_dom_pk_code_avm_address,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount,
    output wire [7:0] out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_enable,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_read,
    output wire [0:0] out_lm58812_emscripten_compute_dom_pk_code_avm_write,
    output wire [63:0] out_lm58812_emscripten_compute_dom_pk_code_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_100_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_101_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_102_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_103_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_104_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_105_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_106_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_107_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_108_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_109_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_10_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_110_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_111_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_112_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_113_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_114_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_115_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_116_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_117_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_118_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_119_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_11_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_120_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_121_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_122_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_123_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_124_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_125_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_126_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_127_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_128_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_129_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_12_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_130_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_131_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_132_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_133_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_134_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_135_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_136_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_137_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_138_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_139_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_13_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_140_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_141_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_142_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_143_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_144_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_145_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_146_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_147_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_148_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_149_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_14_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_150_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_151_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_152_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_153_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_154_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_155_0;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_156_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_157_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_158_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_15_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_16_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_17_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_18_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_19_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_20_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_21_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_22_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_23_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_24_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_25_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_26_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_27_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_28_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_29_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_30_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_31_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_32_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_33_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_34_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_35_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_36_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_37_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_38_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_39_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_40_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_41_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_42_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_43_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_44_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_45_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_46_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_47_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_48_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_49_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_50_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_51_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_52_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_53_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_54_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_55_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_56_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_57_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_58_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_59_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_60_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_61_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_62_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_63_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_64_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_65_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_66_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_67_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_68_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_69_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_6_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_70_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_71_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_72_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_73_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_74_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_75_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_76_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_77_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_78_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_79_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_7_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_80_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_81_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_82_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_83_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_84_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_85_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_86_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_87_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_88_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_89_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_8_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_90_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_91_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_92_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_93_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_94_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_95_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_96_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_97_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_98_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_99_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_9_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_stall_out_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B1_start_out_valid_out_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_exiting_stall_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_exiting_valid_out;
    wire [31:0] bb_emscripten_compute_dom_pk_code_B2_out_intel_reserved_ffwd_159_0;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_pipeline_valid_out;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_stall_out_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_stall_out_1;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_out_valid_out_0;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_feedback_out_1;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_feedback_valid_out_1;
    wire [31:0] bb_emscripten_compute_dom_pk_code_B3_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_address;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount;
    wire [7:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_enable;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_read;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_write;
    wire [63:0] bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_out_stall_out_0;
    wire [1:0] c_i2_011_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_emscripten_compute_dom_pk_code0_out_o_stall;
    wire [0:0] loop_limiter_emscripten_compute_dom_pk_code0_out_o_valid;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x_out_o_valid;


    // c_i2_011(CONSTANT,14)
    assign c_i2_011_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo(BLACKBOX,18)
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zoing319_1_valid_fifo thei_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo (
        .in_data_in(c_i2_011_q),
        .in_stall_in(bb_emscripten_compute_dom_pk_code_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo(BLACKBOX,20)
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Zp_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo (
        .in_data_in(c_i2_011_q),
        .in_stall_in(bb_emscripten_compute_dom_pk_code_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x(BLACKBOX,1753)
    emscripten_compute_dom_pk_code_bb_B3_sr_0 thebb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x (
        .in_i_stall(bb_emscripten_compute_dom_pk_code_B3_out_stall_out_0),
        .in_i_valid(bb_emscripten_compute_dom_pk_code_B2_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr(BLACKBOX,19)
    emscripten_compute_dom_pk_code_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo_out_stall_out),
        .in_i_valid(bb_emscripten_compute_dom_pk_code_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_emscripten_compute_dom_pk_code_B2(BLACKBOX,4)
    emscripten_compute_dom_pk_code_bb_B2 thebb_emscripten_compute_dom_pk_code_B2 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_156_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_156_0),
        .in_intel_reserved_ffwd_158_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_158_0),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_readdata(in_lm58812_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm58812_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm58812_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm58812_emscripten_compute_dom_pk_code_avm_writeack(in_lm58812_emscripten_compute_dom_pk_code_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_sr_out_o_stall),
        .in_stall_in_0(bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_emscripten_compute_dom_pk_code6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_emscripten_compute_dom_pk_code_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_emscripten_compute_dom_pk_code_B2_out_exiting_valid_out),
        .out_intel_reserved_ffwd_159_0(bb_emscripten_compute_dom_pk_code_B2_out_intel_reserved_ffwd_159_0),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58812_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata),
        .out_pipeline_valid_out(bb_emscripten_compute_dom_pk_code_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_emscripten_compute_dom_pk_code_B2_out_stall_out_0),
        .out_stall_out_1(bb_emscripten_compute_dom_pk_code_B2_out_stall_out_1),
        .out_valid_out_0(bb_emscripten_compute_dom_pk_code_B2_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x(BLACKBOX,1752)
    emscripten_compute_dom_pk_code_bb_B2_sr_1 thebb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x (
        .in_i_stall(bb_emscripten_compute_dom_pk_code_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_emscripten_compute_dom_pk_code0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_emscripten_compute_dom_pk_code0(BLACKBOX,654)
    emscripten_compute_dom_pk_code_loop_limiter_0 theloop_limiter_emscripten_compute_dom_pk_code0 (
        .in_i_stall(bb_emscripten_compute_dom_pk_code_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_emscripten_compute_dom_pk_code_B2_out_exiting_stall_out),
        .in_i_valid(bb_emscripten_compute_dom_pk_code_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_emscripten_compute_dom_pk_code_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_emscripten_compute_dom_pk_code0_out_o_stall),
        .out_o_valid(loop_limiter_emscripten_compute_dom_pk_code0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr(BLACKBOX,17)
    emscripten_compute_dom_pk_code_i_llvm_fpA000000Ze_keep_going319_1_sr thei_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo_out_stall_out),
        .in_i_valid(bb_emscripten_compute_dom_pk_code_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_emscripten_compute_dom_pk_code_B3(BLACKBOX,5)
    emscripten_compute_dom_pk_code_bb_B3 thebb_emscripten_compute_dom_pk_code_B3 (
        .in_feedback_stall_in_1(bb_emscripten_compute_dom_pk_code_B1_start_out_feedback_stall_out_1),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_100_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_100_0),
        .in_intel_reserved_ffwd_101_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_101_0),
        .in_intel_reserved_ffwd_102_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_102_0),
        .in_intel_reserved_ffwd_103_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_103_0),
        .in_intel_reserved_ffwd_104_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_104_0),
        .in_intel_reserved_ffwd_105_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_105_0),
        .in_intel_reserved_ffwd_106_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_106_0),
        .in_intel_reserved_ffwd_107_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_107_0),
        .in_intel_reserved_ffwd_108_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_108_0),
        .in_intel_reserved_ffwd_109_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_109_0),
        .in_intel_reserved_ffwd_10_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_10_0),
        .in_intel_reserved_ffwd_110_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_110_0),
        .in_intel_reserved_ffwd_111_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_111_0),
        .in_intel_reserved_ffwd_112_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_112_0),
        .in_intel_reserved_ffwd_113_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_113_0),
        .in_intel_reserved_ffwd_114_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_114_0),
        .in_intel_reserved_ffwd_115_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_115_0),
        .in_intel_reserved_ffwd_116_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_116_0),
        .in_intel_reserved_ffwd_117_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_117_0),
        .in_intel_reserved_ffwd_118_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_118_0),
        .in_intel_reserved_ffwd_119_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_119_0),
        .in_intel_reserved_ffwd_11_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_11_0),
        .in_intel_reserved_ffwd_120_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_120_0),
        .in_intel_reserved_ffwd_121_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_121_0),
        .in_intel_reserved_ffwd_122_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_122_0),
        .in_intel_reserved_ffwd_123_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_123_0),
        .in_intel_reserved_ffwd_124_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_124_0),
        .in_intel_reserved_ffwd_125_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_125_0),
        .in_intel_reserved_ffwd_126_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_126_0),
        .in_intel_reserved_ffwd_127_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_127_0),
        .in_intel_reserved_ffwd_128_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_128_0),
        .in_intel_reserved_ffwd_129_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_129_0),
        .in_intel_reserved_ffwd_12_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_12_0),
        .in_intel_reserved_ffwd_130_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_130_0),
        .in_intel_reserved_ffwd_131_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_131_0),
        .in_intel_reserved_ffwd_132_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_132_0),
        .in_intel_reserved_ffwd_133_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_133_0),
        .in_intel_reserved_ffwd_134_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_134_0),
        .in_intel_reserved_ffwd_135_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_135_0),
        .in_intel_reserved_ffwd_136_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_136_0),
        .in_intel_reserved_ffwd_137_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_137_0),
        .in_intel_reserved_ffwd_138_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_138_0),
        .in_intel_reserved_ffwd_139_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_139_0),
        .in_intel_reserved_ffwd_13_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_13_0),
        .in_intel_reserved_ffwd_140_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_140_0),
        .in_intel_reserved_ffwd_141_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_141_0),
        .in_intel_reserved_ffwd_142_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_142_0),
        .in_intel_reserved_ffwd_143_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_143_0),
        .in_intel_reserved_ffwd_144_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_144_0),
        .in_intel_reserved_ffwd_145_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_145_0),
        .in_intel_reserved_ffwd_146_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_146_0),
        .in_intel_reserved_ffwd_147_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_147_0),
        .in_intel_reserved_ffwd_148_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_148_0),
        .in_intel_reserved_ffwd_149_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_149_0),
        .in_intel_reserved_ffwd_14_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_14_0),
        .in_intel_reserved_ffwd_150_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_150_0),
        .in_intel_reserved_ffwd_151_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_151_0),
        .in_intel_reserved_ffwd_152_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_152_0),
        .in_intel_reserved_ffwd_153_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_153_0),
        .in_intel_reserved_ffwd_154_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_154_0),
        .in_intel_reserved_ffwd_155_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_155_0),
        .in_intel_reserved_ffwd_157_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_157_0),
        .in_intel_reserved_ffwd_158_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_158_0),
        .in_intel_reserved_ffwd_159_0(bb_emscripten_compute_dom_pk_code_B2_out_intel_reserved_ffwd_159_0),
        .in_intel_reserved_ffwd_15_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_15_0),
        .in_intel_reserved_ffwd_16_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_16_0),
        .in_intel_reserved_ffwd_17_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_17_0),
        .in_intel_reserved_ffwd_18_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_18_0),
        .in_intel_reserved_ffwd_19_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_19_0),
        .in_intel_reserved_ffwd_1_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_20_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_20_0),
        .in_intel_reserved_ffwd_21_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_21_0),
        .in_intel_reserved_ffwd_22_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_22_0),
        .in_intel_reserved_ffwd_23_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_23_0),
        .in_intel_reserved_ffwd_24_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_24_0),
        .in_intel_reserved_ffwd_25_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_25_0),
        .in_intel_reserved_ffwd_26_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_26_0),
        .in_intel_reserved_ffwd_27_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_27_0),
        .in_intel_reserved_ffwd_28_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_28_0),
        .in_intel_reserved_ffwd_29_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_29_0),
        .in_intel_reserved_ffwd_2_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_30_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_30_0),
        .in_intel_reserved_ffwd_31_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_31_0),
        .in_intel_reserved_ffwd_32_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_32_0),
        .in_intel_reserved_ffwd_33_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_33_0),
        .in_intel_reserved_ffwd_34_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_34_0),
        .in_intel_reserved_ffwd_35_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_35_0),
        .in_intel_reserved_ffwd_36_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_36_0),
        .in_intel_reserved_ffwd_37_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_37_0),
        .in_intel_reserved_ffwd_38_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_38_0),
        .in_intel_reserved_ffwd_39_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_39_0),
        .in_intel_reserved_ffwd_3_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_40_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_40_0),
        .in_intel_reserved_ffwd_41_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_41_0),
        .in_intel_reserved_ffwd_42_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_42_0),
        .in_intel_reserved_ffwd_43_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_43_0),
        .in_intel_reserved_ffwd_44_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_44_0),
        .in_intel_reserved_ffwd_45_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_45_0),
        .in_intel_reserved_ffwd_46_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_46_0),
        .in_intel_reserved_ffwd_47_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_47_0),
        .in_intel_reserved_ffwd_48_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_48_0),
        .in_intel_reserved_ffwd_49_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_49_0),
        .in_intel_reserved_ffwd_4_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_50_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_50_0),
        .in_intel_reserved_ffwd_51_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_51_0),
        .in_intel_reserved_ffwd_52_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_52_0),
        .in_intel_reserved_ffwd_53_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_53_0),
        .in_intel_reserved_ffwd_54_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_54_0),
        .in_intel_reserved_ffwd_55_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_55_0),
        .in_intel_reserved_ffwd_56_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_56_0),
        .in_intel_reserved_ffwd_57_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_57_0),
        .in_intel_reserved_ffwd_58_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_58_0),
        .in_intel_reserved_ffwd_59_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_59_0),
        .in_intel_reserved_ffwd_5_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_60_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_60_0),
        .in_intel_reserved_ffwd_61_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_61_0),
        .in_intel_reserved_ffwd_62_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_62_0),
        .in_intel_reserved_ffwd_63_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_63_0),
        .in_intel_reserved_ffwd_64_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_64_0),
        .in_intel_reserved_ffwd_65_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_65_0),
        .in_intel_reserved_ffwd_66_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_66_0),
        .in_intel_reserved_ffwd_67_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_67_0),
        .in_intel_reserved_ffwd_68_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_68_0),
        .in_intel_reserved_ffwd_69_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_69_0),
        .in_intel_reserved_ffwd_6_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_70_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_70_0),
        .in_intel_reserved_ffwd_71_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_71_0),
        .in_intel_reserved_ffwd_72_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_72_0),
        .in_intel_reserved_ffwd_73_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_73_0),
        .in_intel_reserved_ffwd_74_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_74_0),
        .in_intel_reserved_ffwd_75_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_75_0),
        .in_intel_reserved_ffwd_76_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_76_0),
        .in_intel_reserved_ffwd_77_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_77_0),
        .in_intel_reserved_ffwd_78_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_78_0),
        .in_intel_reserved_ffwd_79_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_79_0),
        .in_intel_reserved_ffwd_7_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_80_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_80_0),
        .in_intel_reserved_ffwd_81_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_81_0),
        .in_intel_reserved_ffwd_82_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_82_0),
        .in_intel_reserved_ffwd_83_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_83_0),
        .in_intel_reserved_ffwd_84_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_84_0),
        .in_intel_reserved_ffwd_85_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_85_0),
        .in_intel_reserved_ffwd_86_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_86_0),
        .in_intel_reserved_ffwd_87_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_87_0),
        .in_intel_reserved_ffwd_88_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_88_0),
        .in_intel_reserved_ffwd_89_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_89_0),
        .in_intel_reserved_ffwd_8_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_8_0),
        .in_intel_reserved_ffwd_90_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_90_0),
        .in_intel_reserved_ffwd_91_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_91_0),
        .in_intel_reserved_ffwd_92_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_92_0),
        .in_intel_reserved_ffwd_93_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_93_0),
        .in_intel_reserved_ffwd_94_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_94_0),
        .in_intel_reserved_ffwd_95_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_95_0),
        .in_intel_reserved_ffwd_96_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_96_0),
        .in_intel_reserved_ffwd_97_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_97_0),
        .in_intel_reserved_ffwd_98_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_98_0),
        .in_intel_reserved_ffwd_99_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_99_0),
        .in_intel_reserved_ffwd_9_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_9_0),
        .in_iowr_bl_return_emscripten_compute_dom_pk_code_i_fifoready(in_iowr_bl_return_emscripten_compute_dom_pk_code_i_fifoready),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_readdata(in_lm24714_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm24714_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm24714_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm24714_emscripten_compute_dom_pk_code_avm_writeack(in_lm24714_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_readdata(in_lm24845_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm24845_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm24845_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm24845_emscripten_compute_dom_pk_code_avm_writeack(in_lm24845_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_readdata(in_lm24966_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm24966_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm24966_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm24966_emscripten_compute_dom_pk_code_avm_writeack(in_lm24966_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_readdata(in_lm25087_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm25087_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm25087_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm25087_emscripten_compute_dom_pk_code_avm_writeack(in_lm25087_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_readdata(in_lm25208_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm25208_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm25208_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm25208_emscripten_compute_dom_pk_code_avm_writeack(in_lm25208_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_readdata(in_lm25329_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm25329_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm25329_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm25329_emscripten_compute_dom_pk_code_avm_writeack(in_lm25329_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_readdata(in_lm254410_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm254410_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm254410_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm254410_emscripten_compute_dom_pk_code_avm_writeack(in_lm254410_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_readdata(in_lm255611_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm255611_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm255611_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm255611_emscripten_compute_dom_pk_code_avm_writeack(in_lm255611_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_readdata(in_lm256812_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm256812_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm256812_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm256812_emscripten_compute_dom_pk_code_avm_writeack(in_lm256812_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_readdata(in_lm258113_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm258113_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm258113_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm258113_emscripten_compute_dom_pk_code_avm_writeack(in_lm258113_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_readdata(in_lm259314_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm259314_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm259314_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm259314_emscripten_compute_dom_pk_code_avm_writeack(in_lm259314_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_readdata(in_lm260515_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm260515_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm260515_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm260515_emscripten_compute_dom_pk_code_avm_writeack(in_lm260515_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_readdata(in_lm261816_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm261816_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm261816_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm261816_emscripten_compute_dom_pk_code_avm_writeack(in_lm261816_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_readdata(in_lm263017_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm263017_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm263017_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm263017_emscripten_compute_dom_pk_code_avm_writeack(in_lm263017_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_readdata(in_lm264218_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm264218_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm264218_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm264218_emscripten_compute_dom_pk_code_avm_writeack(in_lm264218_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_readdata(in_lm265519_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm265519_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm265519_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm265519_emscripten_compute_dom_pk_code_avm_writeack(in_lm265519_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_readdata(in_lm266720_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm266720_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm266720_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm266720_emscripten_compute_dom_pk_code_avm_writeack(in_lm266720_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_readdata(in_lm268021_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm268021_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm268021_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm268021_emscripten_compute_dom_pk_code_avm_writeack(in_lm268021_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_readdata(in_lm269222_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm269222_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm269222_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm269222_emscripten_compute_dom_pk_code_avm_writeack(in_lm269222_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_readdata(in_lm270523_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm270523_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm270523_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm270523_emscripten_compute_dom_pk_code_avm_writeack(in_lm270523_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_readdata(in_lm271824_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm271824_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm271824_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm271824_emscripten_compute_dom_pk_code_avm_writeack(in_lm271824_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_readdata(in_lm273125_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm273125_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm273125_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm273125_emscripten_compute_dom_pk_code_avm_writeack(in_lm273125_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_readdata(in_lm274326_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm274326_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm274326_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm274326_emscripten_compute_dom_pk_code_avm_writeack(in_lm274326_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_readdata(in_lm275527_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm275527_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm275527_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm275527_emscripten_compute_dom_pk_code_avm_writeack(in_lm275527_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_readdata(in_lm276728_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm276728_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm276728_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm276728_emscripten_compute_dom_pk_code_avm_writeack(in_lm276728_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_readdata(in_lm278029_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm278029_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm278029_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm278029_emscripten_compute_dom_pk_code_avm_writeack(in_lm278029_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_readdata(in_lm279230_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm279230_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm279230_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm279230_emscripten_compute_dom_pk_code_avm_writeack(in_lm279230_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_readdata(in_lm280531_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm280531_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm280531_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm280531_emscripten_compute_dom_pk_code_avm_writeack(in_lm280531_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_readdata(in_lm281732_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm281732_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm281732_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm281732_emscripten_compute_dom_pk_code_avm_writeack(in_lm281732_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_readdata(in_lm283033_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm283033_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm283033_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm283033_emscripten_compute_dom_pk_code_avm_writeack(in_lm283033_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_readdata(in_lm284334_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm284334_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm284334_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm284334_emscripten_compute_dom_pk_code_avm_writeack(in_lm284334_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_readdata(in_lm285535_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm285535_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm285535_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm285535_emscripten_compute_dom_pk_code_avm_writeack(in_lm285535_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_readdata(in_lm287936_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm287936_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm287936_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm287936_emscripten_compute_dom_pk_code_avm_writeack(in_lm287936_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_readdata(in_lm290337_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm290337_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm290337_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm290337_emscripten_compute_dom_pk_code_avm_writeack(in_lm290337_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_readdata(in_lm291538_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm291538_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm291538_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm291538_emscripten_compute_dom_pk_code_avm_writeack(in_lm291538_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_readdata(in_lm292739_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm292739_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm292739_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm292739_emscripten_compute_dom_pk_code_avm_writeack(in_lm292739_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_readdata(in_lm293940_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm293940_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm293940_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm293940_emscripten_compute_dom_pk_code_avm_writeack(in_lm293940_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_readdata(in_lm295141_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm295141_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm295141_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm295141_emscripten_compute_dom_pk_code_avm_writeack(in_lm295141_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_readdata(in_lm297642_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm297642_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm297642_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm297642_emscripten_compute_dom_pk_code_avm_writeack(in_lm297642_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_readdata(in_lm298843_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm298843_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm298843_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm298843_emscripten_compute_dom_pk_code_avm_writeack(in_lm298843_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_readdata(in_lm300144_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm300144_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm300144_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm300144_emscripten_compute_dom_pk_code_avm_writeack(in_lm300144_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_readdata(in_lm301345_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm301345_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm301345_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm301345_emscripten_compute_dom_pk_code_avm_writeack(in_lm301345_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_readdata(in_lm302646_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm302646_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm302646_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm302646_emscripten_compute_dom_pk_code_avm_writeack(in_lm302646_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_readdata(in_lm303947_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm303947_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm303947_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm303947_emscripten_compute_dom_pk_code_avm_writeack(in_lm303947_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_readdata(in_lm305148_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm305148_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm305148_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm305148_emscripten_compute_dom_pk_code_avm_writeack(in_lm305148_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_readdata(in_lm306449_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm306449_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm306449_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm306449_emscripten_compute_dom_pk_code_avm_writeack(in_lm306449_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_readdata(in_lm307750_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm307750_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm307750_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm307750_emscripten_compute_dom_pk_code_avm_writeack(in_lm307750_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_readdata(in_lm309051_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm309051_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm309051_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm309051_emscripten_compute_dom_pk_code_avm_writeack(in_lm309051_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_readdata(in_lm310252_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm310252_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm310252_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm310252_emscripten_compute_dom_pk_code_avm_writeack(in_lm310252_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_readdata(in_lm311553_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm311553_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm311553_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm311553_emscripten_compute_dom_pk_code_avm_writeack(in_lm311553_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_readdata(in_lm312854_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm312854_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm312854_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm312854_emscripten_compute_dom_pk_code_avm_writeack(in_lm312854_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_readdata(in_lm313955_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm313955_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm313955_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm313955_emscripten_compute_dom_pk_code_avm_writeack(in_lm313955_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_readdata(in_lm315256_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm315256_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm315256_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm315256_emscripten_compute_dom_pk_code_avm_writeack(in_lm315256_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_readdata(in_lm316457_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm316457_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm316457_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm316457_emscripten_compute_dom_pk_code_avm_writeack(in_lm316457_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_readdata(in_lm317658_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm317658_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm317658_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm317658_emscripten_compute_dom_pk_code_avm_writeack(in_lm317658_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_readdata(in_lm318759_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm318759_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm318759_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm318759_emscripten_compute_dom_pk_code_avm_writeack(in_lm318759_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_readdata(in_lm319860_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm319860_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm319860_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm319860_emscripten_compute_dom_pk_code_avm_writeack(in_lm319860_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_readdata(in_lm320961_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm320961_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm320961_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm320961_emscripten_compute_dom_pk_code_avm_writeack(in_lm320961_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_readdata(in_lm322262_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm322262_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm322262_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm322262_emscripten_compute_dom_pk_code_avm_writeack(in_lm322262_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_readdata(in_lm323463_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm323463_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm323463_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm323463_emscripten_compute_dom_pk_code_avm_writeack(in_lm323463_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_readdata(in_lm324564_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm324564_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm324564_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm324564_emscripten_compute_dom_pk_code_avm_writeack(in_lm324564_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_readdata(in_lm325665_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm325665_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm325665_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm325665_emscripten_compute_dom_pk_code_avm_writeack(in_lm325665_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_readdata(in_lm326766_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm326766_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm326766_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm326766_emscripten_compute_dom_pk_code_avm_writeack(in_lm326766_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_readdata(in_lm327967_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm327967_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm327967_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm327967_emscripten_compute_dom_pk_code_avm_writeack(in_lm327967_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_readdata(in_lm329168_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm329168_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm329168_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm329168_emscripten_compute_dom_pk_code_avm_writeack(in_lm329168_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_readdata(in_lm330369_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm330369_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm330369_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm330369_emscripten_compute_dom_pk_code_avm_writeack(in_lm330369_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_readdata(in_lm331470_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm331470_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm331470_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm331470_emscripten_compute_dom_pk_code_avm_writeack(in_lm331470_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_readdata(in_lm332571_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm332571_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm332571_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm332571_emscripten_compute_dom_pk_code_avm_writeack(in_lm332571_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_readdata(in_lm333872_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm333872_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm333872_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm333872_emscripten_compute_dom_pk_code_avm_writeack(in_lm333872_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_readdata(in_lm335073_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm335073_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm335073_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm335073_emscripten_compute_dom_pk_code_avm_writeack(in_lm335073_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_readdata(in_lm336374_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm336374_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm336374_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm336374_emscripten_compute_dom_pk_code_avm_writeack(in_lm336374_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_readdata(in_lm337475_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm337475_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm337475_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm337475_emscripten_compute_dom_pk_code_avm_writeack(in_lm337475_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_readdata(in_lm338676_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm338676_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm338676_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm338676_emscripten_compute_dom_pk_code_avm_writeack(in_lm338676_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_readdata(in_lm339777_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm339777_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm339777_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm339777_emscripten_compute_dom_pk_code_avm_writeack(in_lm339777_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_readdata(in_lm340878_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm340878_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm340878_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm340878_emscripten_compute_dom_pk_code_avm_writeack(in_lm340878_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_readdata(in_lm342179_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm342179_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm342179_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm342179_emscripten_compute_dom_pk_code_avm_writeack(in_lm342179_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_readdata(in_lm343280_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm343280_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm343280_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm343280_emscripten_compute_dom_pk_code_avm_writeack(in_lm343280_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_readdata(in_lm344381_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm344381_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm344381_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm344381_emscripten_compute_dom_pk_code_avm_writeack(in_lm344381_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_readdata(in_lm345582_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm345582_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm345582_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm345582_emscripten_compute_dom_pk_code_avm_writeack(in_lm345582_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_readdata(in_lm346783_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm346783_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm346783_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm346783_emscripten_compute_dom_pk_code_avm_writeack(in_lm346783_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_readdata(in_lm348084_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm348084_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm348084_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm348084_emscripten_compute_dom_pk_code_avm_writeack(in_lm348084_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_readdata(in_lm349285_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm349285_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm349285_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm349285_emscripten_compute_dom_pk_code_avm_writeack(in_lm349285_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_readdata(in_lm350486_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm350486_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm350486_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm350486_emscripten_compute_dom_pk_code_avm_writeack(in_lm350486_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_readdata(in_lm351687_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm351687_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm351687_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm351687_emscripten_compute_dom_pk_code_avm_writeack(in_lm351687_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_readdata(in_lm352888_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm352888_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm352888_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm352888_emscripten_compute_dom_pk_code_avm_writeack(in_lm352888_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_readdata(in_lm353989_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm353989_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm353989_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm353989_emscripten_compute_dom_pk_code_avm_writeack(in_lm353989_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_readdata(in_lm355190_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm355190_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm355190_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm355190_emscripten_compute_dom_pk_code_avm_writeack(in_lm355190_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_readdata(in_lm356291_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm356291_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm356291_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm356291_emscripten_compute_dom_pk_code_avm_writeack(in_lm356291_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_readdata(in_lm357592_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm357592_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm357592_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm357592_emscripten_compute_dom_pk_code_avm_writeack(in_lm357592_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_readdata(in_lm358693_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm358693_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm358693_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm358693_emscripten_compute_dom_pk_code_avm_writeack(in_lm358693_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_readdata(in_lm359794_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm359794_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm359794_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm359794_emscripten_compute_dom_pk_code_avm_writeack(in_lm359794_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_readdata(in_lm360895_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm360895_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm360895_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm360895_emscripten_compute_dom_pk_code_avm_writeack(in_lm360895_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_readdata(in_lm362096_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm362096_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm362096_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm362096_emscripten_compute_dom_pk_code_avm_writeack(in_lm362096_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_readdata(in_lm363297_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm363297_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm363297_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm363297_emscripten_compute_dom_pk_code_avm_writeack(in_lm363297_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_readdata(in_lm364398_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm364398_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm364398_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm364398_emscripten_compute_dom_pk_code_avm_writeack(in_lm364398_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_readdata(in_lm365699_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm365699_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm365699_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm365699_emscripten_compute_dom_pk_code_avm_writeack(in_lm365699_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_readdata(in_lm3668100_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3668100_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3668100_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3668100_emscripten_compute_dom_pk_code_avm_writeack(in_lm3668100_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_readdata(in_lm3681101_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3681101_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3681101_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3681101_emscripten_compute_dom_pk_code_avm_writeack(in_lm3681101_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_readdata(in_lm3693102_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3693102_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3693102_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3693102_emscripten_compute_dom_pk_code_avm_writeack(in_lm3693102_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_readdata(in_lm3706103_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3706103_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3706103_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3706103_emscripten_compute_dom_pk_code_avm_writeack(in_lm3706103_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_readdata(in_lm3718104_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3718104_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3718104_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3718104_emscripten_compute_dom_pk_code_avm_writeack(in_lm3718104_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_readdata(in_lm3731105_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3731105_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3731105_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3731105_emscripten_compute_dom_pk_code_avm_writeack(in_lm3731105_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_readdata(in_lm3743106_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3743106_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3743106_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3743106_emscripten_compute_dom_pk_code_avm_writeack(in_lm3743106_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_readdata(in_lm3755107_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3755107_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3755107_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3755107_emscripten_compute_dom_pk_code_avm_writeack(in_lm3755107_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_readdata(in_lm3767108_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3767108_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3767108_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3767108_emscripten_compute_dom_pk_code_avm_writeack(in_lm3767108_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_readdata(in_lm3778109_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3778109_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3778109_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3778109_emscripten_compute_dom_pk_code_avm_writeack(in_lm3778109_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_readdata(in_lm3789110_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3789110_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3789110_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3789110_emscripten_compute_dom_pk_code_avm_writeack(in_lm3789110_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_readdata(in_lm3801111_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3801111_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3801111_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3801111_emscripten_compute_dom_pk_code_avm_writeack(in_lm3801111_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_readdata(in_lm3812112_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3812112_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3812112_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3812112_emscripten_compute_dom_pk_code_avm_writeack(in_lm3812112_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_readdata(in_lm3824113_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3824113_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3824113_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3824113_emscripten_compute_dom_pk_code_avm_writeack(in_lm3824113_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_readdata(in_lm3836114_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3836114_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3836114_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3836114_emscripten_compute_dom_pk_code_avm_writeack(in_lm3836114_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_readdata(in_lm3849115_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3849115_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3849115_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3849115_emscripten_compute_dom_pk_code_avm_writeack(in_lm3849115_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_readdata(in_lm3862116_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3862116_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3862116_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3862116_emscripten_compute_dom_pk_code_avm_writeack(in_lm3862116_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_readdata(in_lm3874117_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3874117_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3874117_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3874117_emscripten_compute_dom_pk_code_avm_writeack(in_lm3874117_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_readdata(in_lm3886118_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3886118_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3886118_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3886118_emscripten_compute_dom_pk_code_avm_writeack(in_lm3886118_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_readdata(in_lm3897119_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3897119_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3897119_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3897119_emscripten_compute_dom_pk_code_avm_writeack(in_lm3897119_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_readdata(in_lm3908120_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3908120_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3908120_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3908120_emscripten_compute_dom_pk_code_avm_writeack(in_lm3908120_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_readdata(in_lm3919121_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3919121_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3919121_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3919121_emscripten_compute_dom_pk_code_avm_writeack(in_lm3919121_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_readdata(in_lm3931122_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3931122_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3931122_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3931122_emscripten_compute_dom_pk_code_avm_writeack(in_lm3931122_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_readdata(in_lm3942123_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3942123_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3942123_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3942123_emscripten_compute_dom_pk_code_avm_writeack(in_lm3942123_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_readdata(in_lm3953124_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3953124_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3953124_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3953124_emscripten_compute_dom_pk_code_avm_writeack(in_lm3953124_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_readdata(in_lm3965125_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3965125_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3965125_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3965125_emscripten_compute_dom_pk_code_avm_writeack(in_lm3965125_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_readdata(in_lm3977126_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3977126_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3977126_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3977126_emscripten_compute_dom_pk_code_avm_writeack(in_lm3977126_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_readdata(in_lm3988127_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3988127_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3988127_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3988127_emscripten_compute_dom_pk_code_avm_writeack(in_lm3988127_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm3_emscripten_compute_dom_pk_code_avm_readdata(in_lm3_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm3_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm3_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm3_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm3_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm3_emscripten_compute_dom_pk_code_avm_writeack(in_lm3_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_readdata(in_lm4000128_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4000128_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4000128_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4000128_emscripten_compute_dom_pk_code_avm_writeack(in_lm4000128_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_readdata(in_lm4012129_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4012129_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4012129_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4012129_emscripten_compute_dom_pk_code_avm_writeack(in_lm4012129_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_readdata(in_lm4024130_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4024130_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4024130_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4024130_emscripten_compute_dom_pk_code_avm_writeack(in_lm4024130_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_readdata(in_lm4036131_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4036131_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4036131_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4036131_emscripten_compute_dom_pk_code_avm_writeack(in_lm4036131_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_readdata(in_lm4047132_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4047132_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4047132_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4047132_emscripten_compute_dom_pk_code_avm_writeack(in_lm4047132_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_readdata(in_lm4058133_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4058133_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4058133_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4058133_emscripten_compute_dom_pk_code_avm_writeack(in_lm4058133_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_readdata(in_lm4070134_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4070134_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4070134_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4070134_emscripten_compute_dom_pk_code_avm_writeack(in_lm4070134_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_readdata(in_lm4081135_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4081135_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4081135_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4081135_emscripten_compute_dom_pk_code_avm_writeack(in_lm4081135_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_readdata(in_lm4092136_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4092136_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4092136_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4092136_emscripten_compute_dom_pk_code_avm_writeack(in_lm4092136_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_readdata(in_lm4103137_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4103137_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4103137_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4103137_emscripten_compute_dom_pk_code_avm_writeack(in_lm4103137_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_readdata(in_lm4115138_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4115138_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4115138_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4115138_emscripten_compute_dom_pk_code_avm_writeack(in_lm4115138_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_readdata(in_lm4126139_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4126139_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4126139_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4126139_emscripten_compute_dom_pk_code_avm_writeack(in_lm4126139_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_readdata(in_lm4137140_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4137140_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4137140_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4137140_emscripten_compute_dom_pk_code_avm_writeack(in_lm4137140_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_readdata(in_lm4148141_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4148141_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4148141_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4148141_emscripten_compute_dom_pk_code_avm_writeack(in_lm4148141_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_readdata(in_lm4160142_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4160142_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4160142_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4160142_emscripten_compute_dom_pk_code_avm_writeack(in_lm4160142_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_readdata(in_lm4172143_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4172143_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4172143_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4172143_emscripten_compute_dom_pk_code_avm_writeack(in_lm4172143_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_readdata(in_lm4185144_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4185144_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4185144_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4185144_emscripten_compute_dom_pk_code_avm_writeack(in_lm4185144_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_readdata(in_lm4198145_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4198145_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4198145_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4198145_emscripten_compute_dom_pk_code_avm_writeack(in_lm4198145_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_readdata(in_lm4210146_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4210146_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4210146_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4210146_emscripten_compute_dom_pk_code_avm_writeack(in_lm4210146_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_readdata(in_lm4221147_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4221147_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4221147_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4221147_emscripten_compute_dom_pk_code_avm_writeack(in_lm4221147_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_readdata(in_lm4233148_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4233148_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4233148_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4233148_emscripten_compute_dom_pk_code_avm_writeack(in_lm4233148_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_readdata(in_lm4245149_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4245149_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4245149_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4245149_emscripten_compute_dom_pk_code_avm_writeack(in_lm4245149_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_readdata(in_lm4257150_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4257150_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4257150_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4257150_emscripten_compute_dom_pk_code_avm_writeack(in_lm4257150_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_readdata(in_lm4268151_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4268151_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4268151_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4268151_emscripten_compute_dom_pk_code_avm_writeack(in_lm4268151_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_readdata(in_lm4279152_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4279152_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4279152_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4279152_emscripten_compute_dom_pk_code_avm_writeack(in_lm4279152_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_readdata(in_lm4290153_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4290153_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4290153_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4290153_emscripten_compute_dom_pk_code_avm_writeack(in_lm4290153_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_readdata(in_lm4302154_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4302154_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4302154_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4302154_emscripten_compute_dom_pk_code_avm_writeack(in_lm4302154_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_readdata(in_lm4314155_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4314155_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4314155_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4314155_emscripten_compute_dom_pk_code_avm_writeack(in_lm4314155_emscripten_compute_dom_pk_code_avm_writeack),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_readdata(in_lm4326156_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm4326156_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm4326156_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm4326156_emscripten_compute_dom_pk_code_avm_writeack(in_lm4326156_emscripten_compute_dom_pk_code_avm_writeack),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_emscripten_compute_dom_pk_code_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_emscripten_compute_dom_pk_code_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_emscripten_compute_dom_pk_code_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata(bb_emscripten_compute_dom_pk_code_B3_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata),
        .out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid(bb_emscripten_compute_dom_pk_code_B3_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_address),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_read),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_write),
        .out_lm24714_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_address),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_read),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_write),
        .out_lm24845_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_address),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_read),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_write),
        .out_lm24966_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_address),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_read),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_write),
        .out_lm25087_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_address),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_read),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_write),
        .out_lm25208_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_address),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_read),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_write),
        .out_lm25329_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_address),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_read),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_write),
        .out_lm254410_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_address),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_read),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_write),
        .out_lm255611_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_address),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_read),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_write),
        .out_lm256812_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_address),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_read),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_write),
        .out_lm258113_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_address),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_read),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_write),
        .out_lm259314_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_address),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_read),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_write),
        .out_lm260515_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_address),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_read),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_write),
        .out_lm261816_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_address),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_read),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_write),
        .out_lm263017_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_address),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_read),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_write),
        .out_lm264218_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_address),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_read),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_write),
        .out_lm265519_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_address),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_read),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_write),
        .out_lm266720_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_address),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_read),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_write),
        .out_lm268021_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_address),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_read),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_write),
        .out_lm269222_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_address),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_read),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_write),
        .out_lm270523_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_address),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_read),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_write),
        .out_lm271824_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_address),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_read),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_write),
        .out_lm273125_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_address),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_read),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_write),
        .out_lm274326_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_address),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_read),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_write),
        .out_lm275527_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_address),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_read),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_write),
        .out_lm276728_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_address),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_read),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_write),
        .out_lm278029_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_address),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_read),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_write),
        .out_lm279230_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_address),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_read),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_write),
        .out_lm280531_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_address),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_read),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_write),
        .out_lm281732_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_address),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_read),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_write),
        .out_lm283033_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_address),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_read),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_write),
        .out_lm284334_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_address),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_read),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_write),
        .out_lm285535_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_address),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_read),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_write),
        .out_lm287936_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_address),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_read),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_write),
        .out_lm290337_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_address),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_read),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_write),
        .out_lm291538_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_address),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_read),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_write),
        .out_lm292739_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_address),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_read),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_write),
        .out_lm293940_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_address),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_read),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_write),
        .out_lm295141_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_address),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_read),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_write),
        .out_lm297642_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_address),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_read),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_write),
        .out_lm298843_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_address),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_read),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_write),
        .out_lm300144_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_address),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_read),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_write),
        .out_lm301345_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_address),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_read),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_write),
        .out_lm302646_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_address),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_read),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_write),
        .out_lm303947_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_address),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_read),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_write),
        .out_lm305148_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_address),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_read),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_write),
        .out_lm306449_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_address),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_read),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_write),
        .out_lm307750_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_address),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_read),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_write),
        .out_lm309051_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_address),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_read),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_write),
        .out_lm310252_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_address),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_read),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_write),
        .out_lm311553_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_address),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_read),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_write),
        .out_lm312854_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_address),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_read),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_write),
        .out_lm313955_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_address),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_read),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_write),
        .out_lm315256_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_address),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_read),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_write),
        .out_lm316457_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_address),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_read),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_write),
        .out_lm317658_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_address),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_read),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_write),
        .out_lm318759_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_address),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_read),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_write),
        .out_lm319860_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_address),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_read),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_write),
        .out_lm320961_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_address),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_read),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_write),
        .out_lm322262_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_address),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_read),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_write),
        .out_lm323463_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_address),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_read),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_write),
        .out_lm324564_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_address),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_read),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_write),
        .out_lm325665_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_address),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_read),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_write),
        .out_lm326766_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_address),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_read),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_write),
        .out_lm327967_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_address),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_read),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_write),
        .out_lm329168_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_address),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_read),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_write),
        .out_lm330369_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_address),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_read),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_write),
        .out_lm331470_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_address),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_read),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_write),
        .out_lm332571_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_address),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_read),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_write),
        .out_lm333872_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_address),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_read),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_write),
        .out_lm335073_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_address),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_read),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_write),
        .out_lm336374_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_address),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_read),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_write),
        .out_lm337475_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_address),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_read),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_write),
        .out_lm338676_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_address),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_read),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_write),
        .out_lm339777_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_address),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_read),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_write),
        .out_lm340878_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_address),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_read),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_write),
        .out_lm342179_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_address),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_read),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_write),
        .out_lm343280_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_address),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_read),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_write),
        .out_lm344381_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_address),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_read),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_write),
        .out_lm345582_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_address),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_read),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_write),
        .out_lm346783_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_address),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_read),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_write),
        .out_lm348084_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_address),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_read),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_write),
        .out_lm349285_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_address),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_read),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_write),
        .out_lm350486_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_address),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_read),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_write),
        .out_lm351687_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_address),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_read),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_write),
        .out_lm352888_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_address),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_read),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_write),
        .out_lm353989_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_address),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_read),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_write),
        .out_lm355190_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_address),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_read),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_write),
        .out_lm356291_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_address),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_read),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_write),
        .out_lm357592_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_address),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_read),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_write),
        .out_lm358693_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_address),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_read),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_write),
        .out_lm359794_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_address),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_read),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_write),
        .out_lm360895_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_address),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_read),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_write),
        .out_lm362096_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_address),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_read),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_write),
        .out_lm363297_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_address),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_read),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_write),
        .out_lm364398_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_address),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_read),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_write),
        .out_lm365699_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm3_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_address),
        .out_lm3_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm3_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm3_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm3_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_read),
        .out_lm3_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_write),
        .out_lm3_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_address),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_read),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_write),
        .out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata),
        .out_stall_out_0(bb_emscripten_compute_dom_pk_code_B3_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_emscripten_compute_dom_pk_code_B1_start(BLACKBOX,3)
    emscripten_compute_dom_pk_code_bb_B1_start thebb_emscripten_compute_dom_pk_code_B1_start (
        .in_feedback_in_1(bb_emscripten_compute_dom_pk_code_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_emscripten_compute_dom_pk_code_B3_out_feedback_valid_out_1),
        .in_flush(in_start),
        .in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata(in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifodata),
        .in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid(in_iord_bl_call_emscripten_compute_dom_pk_code_i_fifovalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdata(in_lm58771_emscripten_compute_dom_pk_code_avm_readdata),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid(in_lm58771_emscripten_compute_dom_pk_code_avm_readdatavalid),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest(in_lm58771_emscripten_compute_dom_pk_code_avm_waitrequest),
        .in_lm58771_emscripten_compute_dom_pk_code_avm_writeack(in_lm58771_emscripten_compute_dom_pk_code_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_emscripten_compute_dom_pk_code0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going319_emscripten_compute_dom_pk_code1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_emscripten_compute_dom_pk_code_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_100_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_100_0),
        .out_intel_reserved_ffwd_101_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_101_0),
        .out_intel_reserved_ffwd_102_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_102_0),
        .out_intel_reserved_ffwd_103_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_103_0),
        .out_intel_reserved_ffwd_104_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_104_0),
        .out_intel_reserved_ffwd_105_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_105_0),
        .out_intel_reserved_ffwd_106_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_106_0),
        .out_intel_reserved_ffwd_107_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_107_0),
        .out_intel_reserved_ffwd_108_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_108_0),
        .out_intel_reserved_ffwd_109_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_109_0),
        .out_intel_reserved_ffwd_10_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_10_0),
        .out_intel_reserved_ffwd_110_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_110_0),
        .out_intel_reserved_ffwd_111_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_111_0),
        .out_intel_reserved_ffwd_112_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_112_0),
        .out_intel_reserved_ffwd_113_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_113_0),
        .out_intel_reserved_ffwd_114_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_114_0),
        .out_intel_reserved_ffwd_115_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_115_0),
        .out_intel_reserved_ffwd_116_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_116_0),
        .out_intel_reserved_ffwd_117_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_117_0),
        .out_intel_reserved_ffwd_118_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_118_0),
        .out_intel_reserved_ffwd_119_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_119_0),
        .out_intel_reserved_ffwd_11_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_11_0),
        .out_intel_reserved_ffwd_120_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_120_0),
        .out_intel_reserved_ffwd_121_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_121_0),
        .out_intel_reserved_ffwd_122_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_122_0),
        .out_intel_reserved_ffwd_123_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_123_0),
        .out_intel_reserved_ffwd_124_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_124_0),
        .out_intel_reserved_ffwd_125_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_125_0),
        .out_intel_reserved_ffwd_126_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_126_0),
        .out_intel_reserved_ffwd_127_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_127_0),
        .out_intel_reserved_ffwd_128_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_128_0),
        .out_intel_reserved_ffwd_129_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_129_0),
        .out_intel_reserved_ffwd_12_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_12_0),
        .out_intel_reserved_ffwd_130_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_130_0),
        .out_intel_reserved_ffwd_131_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_131_0),
        .out_intel_reserved_ffwd_132_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_132_0),
        .out_intel_reserved_ffwd_133_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_133_0),
        .out_intel_reserved_ffwd_134_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_134_0),
        .out_intel_reserved_ffwd_135_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_135_0),
        .out_intel_reserved_ffwd_136_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_136_0),
        .out_intel_reserved_ffwd_137_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_137_0),
        .out_intel_reserved_ffwd_138_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_138_0),
        .out_intel_reserved_ffwd_139_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_139_0),
        .out_intel_reserved_ffwd_13_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_13_0),
        .out_intel_reserved_ffwd_140_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_140_0),
        .out_intel_reserved_ffwd_141_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_141_0),
        .out_intel_reserved_ffwd_142_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_142_0),
        .out_intel_reserved_ffwd_143_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_143_0),
        .out_intel_reserved_ffwd_144_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_144_0),
        .out_intel_reserved_ffwd_145_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_145_0),
        .out_intel_reserved_ffwd_146_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_146_0),
        .out_intel_reserved_ffwd_147_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_147_0),
        .out_intel_reserved_ffwd_148_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_148_0),
        .out_intel_reserved_ffwd_149_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_149_0),
        .out_intel_reserved_ffwd_14_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_14_0),
        .out_intel_reserved_ffwd_150_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_150_0),
        .out_intel_reserved_ffwd_151_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_151_0),
        .out_intel_reserved_ffwd_152_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_152_0),
        .out_intel_reserved_ffwd_153_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_153_0),
        .out_intel_reserved_ffwd_154_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_154_0),
        .out_intel_reserved_ffwd_155_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_155_0),
        .out_intel_reserved_ffwd_156_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_156_0),
        .out_intel_reserved_ffwd_157_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_157_0),
        .out_intel_reserved_ffwd_158_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_158_0),
        .out_intel_reserved_ffwd_15_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_15_0),
        .out_intel_reserved_ffwd_16_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_16_0),
        .out_intel_reserved_ffwd_17_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_17_0),
        .out_intel_reserved_ffwd_18_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_18_0),
        .out_intel_reserved_ffwd_19_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_19_0),
        .out_intel_reserved_ffwd_1_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_20_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_20_0),
        .out_intel_reserved_ffwd_21_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_21_0),
        .out_intel_reserved_ffwd_22_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_22_0),
        .out_intel_reserved_ffwd_23_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_23_0),
        .out_intel_reserved_ffwd_24_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_24_0),
        .out_intel_reserved_ffwd_25_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_25_0),
        .out_intel_reserved_ffwd_26_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_26_0),
        .out_intel_reserved_ffwd_27_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_27_0),
        .out_intel_reserved_ffwd_28_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_28_0),
        .out_intel_reserved_ffwd_29_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_29_0),
        .out_intel_reserved_ffwd_2_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_30_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_30_0),
        .out_intel_reserved_ffwd_31_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_31_0),
        .out_intel_reserved_ffwd_32_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_32_0),
        .out_intel_reserved_ffwd_33_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_33_0),
        .out_intel_reserved_ffwd_34_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_34_0),
        .out_intel_reserved_ffwd_35_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_35_0),
        .out_intel_reserved_ffwd_36_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_36_0),
        .out_intel_reserved_ffwd_37_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_37_0),
        .out_intel_reserved_ffwd_38_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_38_0),
        .out_intel_reserved_ffwd_39_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_39_0),
        .out_intel_reserved_ffwd_3_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_40_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_40_0),
        .out_intel_reserved_ffwd_41_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_41_0),
        .out_intel_reserved_ffwd_42_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_42_0),
        .out_intel_reserved_ffwd_43_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_43_0),
        .out_intel_reserved_ffwd_44_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_44_0),
        .out_intel_reserved_ffwd_45_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_45_0),
        .out_intel_reserved_ffwd_46_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_46_0),
        .out_intel_reserved_ffwd_47_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_47_0),
        .out_intel_reserved_ffwd_48_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_48_0),
        .out_intel_reserved_ffwd_49_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_49_0),
        .out_intel_reserved_ffwd_4_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_50_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_50_0),
        .out_intel_reserved_ffwd_51_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_51_0),
        .out_intel_reserved_ffwd_52_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_52_0),
        .out_intel_reserved_ffwd_53_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_53_0),
        .out_intel_reserved_ffwd_54_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_54_0),
        .out_intel_reserved_ffwd_55_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_55_0),
        .out_intel_reserved_ffwd_56_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_56_0),
        .out_intel_reserved_ffwd_57_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_57_0),
        .out_intel_reserved_ffwd_58_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_58_0),
        .out_intel_reserved_ffwd_59_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_59_0),
        .out_intel_reserved_ffwd_5_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_60_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_60_0),
        .out_intel_reserved_ffwd_61_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_61_0),
        .out_intel_reserved_ffwd_62_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_62_0),
        .out_intel_reserved_ffwd_63_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_63_0),
        .out_intel_reserved_ffwd_64_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_64_0),
        .out_intel_reserved_ffwd_65_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_65_0),
        .out_intel_reserved_ffwd_66_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_66_0),
        .out_intel_reserved_ffwd_67_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_67_0),
        .out_intel_reserved_ffwd_68_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_68_0),
        .out_intel_reserved_ffwd_69_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_69_0),
        .out_intel_reserved_ffwd_6_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_70_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_70_0),
        .out_intel_reserved_ffwd_71_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_71_0),
        .out_intel_reserved_ffwd_72_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_72_0),
        .out_intel_reserved_ffwd_73_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_73_0),
        .out_intel_reserved_ffwd_74_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_74_0),
        .out_intel_reserved_ffwd_75_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_75_0),
        .out_intel_reserved_ffwd_76_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_76_0),
        .out_intel_reserved_ffwd_77_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_77_0),
        .out_intel_reserved_ffwd_78_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_78_0),
        .out_intel_reserved_ffwd_79_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_79_0),
        .out_intel_reserved_ffwd_7_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_80_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_80_0),
        .out_intel_reserved_ffwd_81_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_81_0),
        .out_intel_reserved_ffwd_82_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_82_0),
        .out_intel_reserved_ffwd_83_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_83_0),
        .out_intel_reserved_ffwd_84_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_84_0),
        .out_intel_reserved_ffwd_85_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_85_0),
        .out_intel_reserved_ffwd_86_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_86_0),
        .out_intel_reserved_ffwd_87_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_87_0),
        .out_intel_reserved_ffwd_88_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_88_0),
        .out_intel_reserved_ffwd_89_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_89_0),
        .out_intel_reserved_ffwd_8_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_8_0),
        .out_intel_reserved_ffwd_90_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_90_0),
        .out_intel_reserved_ffwd_91_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_91_0),
        .out_intel_reserved_ffwd_92_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_92_0),
        .out_intel_reserved_ffwd_93_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_93_0),
        .out_intel_reserved_ffwd_94_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_94_0),
        .out_intel_reserved_ffwd_95_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_95_0),
        .out_intel_reserved_ffwd_96_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_96_0),
        .out_intel_reserved_ffwd_97_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_97_0),
        .out_intel_reserved_ffwd_98_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_98_0),
        .out_intel_reserved_ffwd_99_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_99_0),
        .out_intel_reserved_ffwd_9_0(bb_emscripten_compute_dom_pk_code_B1_start_out_intel_reserved_ffwd_9_0),
        .out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready(bb_emscripten_compute_dom_pk_code_B1_start_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_address(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_address),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_enable(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_enable),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_read(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_read),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_write(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_write),
        .out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata),
        .out_pipeline_valid_out(bb_emscripten_compute_dom_pk_code_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_emscripten_compute_dom_pk_code_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_out_0(bb_emscripten_compute_dom_pk_code_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready(GPOUT,655)
    assign out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready = bb_emscripten_compute_dom_pk_code_B1_start_out_iord_bl_call_emscripten_compute_dom_pk_code_o_fifoready;

    // out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata(GPOUT,656)
    assign out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata = bb_emscripten_compute_dom_pk_code_B3_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifodata;

    // out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid(GPOUT,657)
    assign out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid = bb_emscripten_compute_dom_pk_code_B3_out_iowr_bl_return_emscripten_compute_dom_pk_code_o_fifovalid;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_address(GPOUT,658)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_address;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,659)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,660)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_enable(GPOUT,661)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_read(GPOUT,662)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_read;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_write(GPOUT,663)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_write;

    // out_lm24714_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,664)
    assign out_lm24714_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm24714_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_address(GPOUT,665)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_address;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,666)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,667)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_enable(GPOUT,668)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_read(GPOUT,669)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_read;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_write(GPOUT,670)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_write;

    // out_lm24845_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,671)
    assign out_lm24845_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm24845_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_address(GPOUT,672)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_address;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,673)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,674)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_enable(GPOUT,675)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_read(GPOUT,676)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_read;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_write(GPOUT,677)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_write;

    // out_lm24966_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,678)
    assign out_lm24966_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm24966_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_address(GPOUT,679)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_address;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,680)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,681)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_enable(GPOUT,682)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_read(GPOUT,683)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_read;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_write(GPOUT,684)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_write;

    // out_lm25087_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,685)
    assign out_lm25087_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm25087_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_address(GPOUT,686)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_address;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,687)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,688)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_enable(GPOUT,689)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_read(GPOUT,690)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_read;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_write(GPOUT,691)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_write;

    // out_lm25208_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,692)
    assign out_lm25208_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm25208_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_address(GPOUT,693)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_address;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,694)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,695)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_enable(GPOUT,696)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_read(GPOUT,697)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_read;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_write(GPOUT,698)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_write;

    // out_lm25329_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,699)
    assign out_lm25329_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm25329_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_address(GPOUT,700)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_address;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,701)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,702)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_enable(GPOUT,703)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_read(GPOUT,704)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_read;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_write(GPOUT,705)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_write;

    // out_lm254410_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,706)
    assign out_lm254410_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm254410_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_address(GPOUT,707)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_address;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,708)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,709)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_enable(GPOUT,710)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_read(GPOUT,711)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_read;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_write(GPOUT,712)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_write;

    // out_lm255611_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,713)
    assign out_lm255611_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm255611_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_address(GPOUT,714)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_address;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,715)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,716)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_enable(GPOUT,717)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_read(GPOUT,718)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_read;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_write(GPOUT,719)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_write;

    // out_lm256812_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,720)
    assign out_lm256812_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm256812_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_address(GPOUT,721)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_address;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,722)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,723)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_enable(GPOUT,724)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_read(GPOUT,725)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_read;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_write(GPOUT,726)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_write;

    // out_lm258113_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,727)
    assign out_lm258113_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm258113_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_address(GPOUT,728)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_address;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,729)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,730)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_enable(GPOUT,731)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_read(GPOUT,732)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_read;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_write(GPOUT,733)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_write;

    // out_lm259314_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,734)
    assign out_lm259314_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm259314_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_address(GPOUT,735)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_address;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,736)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,737)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_enable(GPOUT,738)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_read(GPOUT,739)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_read;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_write(GPOUT,740)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_write;

    // out_lm260515_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,741)
    assign out_lm260515_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm260515_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_address(GPOUT,742)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_address;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,743)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,744)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_enable(GPOUT,745)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_read(GPOUT,746)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_read;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_write(GPOUT,747)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_write;

    // out_lm261816_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,748)
    assign out_lm261816_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm261816_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_address(GPOUT,749)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_address;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,750)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,751)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_enable(GPOUT,752)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_read(GPOUT,753)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_read;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_write(GPOUT,754)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_write;

    // out_lm263017_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,755)
    assign out_lm263017_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm263017_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_address(GPOUT,756)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_address;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,757)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,758)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_enable(GPOUT,759)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_read(GPOUT,760)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_read;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_write(GPOUT,761)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_write;

    // out_lm264218_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,762)
    assign out_lm264218_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm264218_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_address(GPOUT,763)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_address;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,764)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,765)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_enable(GPOUT,766)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_read(GPOUT,767)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_read;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_write(GPOUT,768)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_write;

    // out_lm265519_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,769)
    assign out_lm265519_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm265519_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_address(GPOUT,770)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_address;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,771)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,772)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_enable(GPOUT,773)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_read(GPOUT,774)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_read;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_write(GPOUT,775)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_write;

    // out_lm266720_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,776)
    assign out_lm266720_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm266720_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_address(GPOUT,777)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_address;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,778)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,779)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_enable(GPOUT,780)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_read(GPOUT,781)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_read;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_write(GPOUT,782)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_write;

    // out_lm268021_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,783)
    assign out_lm268021_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm268021_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_address(GPOUT,784)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_address;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,785)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,786)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_enable(GPOUT,787)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_read(GPOUT,788)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_read;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_write(GPOUT,789)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_write;

    // out_lm269222_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,790)
    assign out_lm269222_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm269222_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_address(GPOUT,791)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_address;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,792)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,793)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_enable(GPOUT,794)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_read(GPOUT,795)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_read;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_write(GPOUT,796)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_write;

    // out_lm270523_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,797)
    assign out_lm270523_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm270523_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_address(GPOUT,798)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_address;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,799)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,800)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_enable(GPOUT,801)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_read(GPOUT,802)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_read;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_write(GPOUT,803)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_write;

    // out_lm271824_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,804)
    assign out_lm271824_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm271824_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_address(GPOUT,805)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_address;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,806)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,807)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_enable(GPOUT,808)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_read(GPOUT,809)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_read;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_write(GPOUT,810)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_write;

    // out_lm273125_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,811)
    assign out_lm273125_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm273125_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_address(GPOUT,812)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_address;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,813)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,814)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_enable(GPOUT,815)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_read(GPOUT,816)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_read;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_write(GPOUT,817)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_write;

    // out_lm274326_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,818)
    assign out_lm274326_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm274326_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_address(GPOUT,819)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_address;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,820)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,821)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_enable(GPOUT,822)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_read(GPOUT,823)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_read;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_write(GPOUT,824)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_write;

    // out_lm275527_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,825)
    assign out_lm275527_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm275527_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_address(GPOUT,826)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_address;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,827)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,828)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_enable(GPOUT,829)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_read(GPOUT,830)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_read;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_write(GPOUT,831)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_write;

    // out_lm276728_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,832)
    assign out_lm276728_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm276728_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_address(GPOUT,833)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_address;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,834)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,835)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_enable(GPOUT,836)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_read(GPOUT,837)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_read;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_write(GPOUT,838)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_write;

    // out_lm278029_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,839)
    assign out_lm278029_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm278029_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_address(GPOUT,840)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_address;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,841)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,842)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_enable(GPOUT,843)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_read(GPOUT,844)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_read;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_write(GPOUT,845)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_write;

    // out_lm279230_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,846)
    assign out_lm279230_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm279230_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_address(GPOUT,847)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_address;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,848)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,849)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_enable(GPOUT,850)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_read(GPOUT,851)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_read;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_write(GPOUT,852)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_write;

    // out_lm280531_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,853)
    assign out_lm280531_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm280531_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_address(GPOUT,854)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_address;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,855)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,856)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_enable(GPOUT,857)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_read(GPOUT,858)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_read;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_write(GPOUT,859)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_write;

    // out_lm281732_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,860)
    assign out_lm281732_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm281732_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_address(GPOUT,861)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_address;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,862)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,863)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_enable(GPOUT,864)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_read(GPOUT,865)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_read;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_write(GPOUT,866)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_write;

    // out_lm283033_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,867)
    assign out_lm283033_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm283033_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_address(GPOUT,868)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_address;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,869)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,870)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_enable(GPOUT,871)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_read(GPOUT,872)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_read;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_write(GPOUT,873)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_write;

    // out_lm284334_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,874)
    assign out_lm284334_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm284334_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_address(GPOUT,875)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_address;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,876)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,877)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_enable(GPOUT,878)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_read(GPOUT,879)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_read;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_write(GPOUT,880)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_write;

    // out_lm285535_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,881)
    assign out_lm285535_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm285535_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_address(GPOUT,882)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_address;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,883)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,884)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_enable(GPOUT,885)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_read(GPOUT,886)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_read;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_write(GPOUT,887)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_write;

    // out_lm287936_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,888)
    assign out_lm287936_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm287936_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_address(GPOUT,889)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_address;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,890)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,891)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_enable(GPOUT,892)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_read(GPOUT,893)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_read;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_write(GPOUT,894)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_write;

    // out_lm290337_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,895)
    assign out_lm290337_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm290337_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_address(GPOUT,896)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_address;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,897)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,898)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_enable(GPOUT,899)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_read(GPOUT,900)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_read;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_write(GPOUT,901)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_write;

    // out_lm291538_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,902)
    assign out_lm291538_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm291538_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_address(GPOUT,903)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_address;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,904)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,905)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_enable(GPOUT,906)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_read(GPOUT,907)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_read;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_write(GPOUT,908)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_write;

    // out_lm292739_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,909)
    assign out_lm292739_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm292739_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_address(GPOUT,910)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_address;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,911)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,912)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_enable(GPOUT,913)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_read(GPOUT,914)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_read;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_write(GPOUT,915)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_write;

    // out_lm293940_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,916)
    assign out_lm293940_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm293940_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_address(GPOUT,917)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_address;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,918)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,919)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_enable(GPOUT,920)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_read(GPOUT,921)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_read;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_write(GPOUT,922)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_write;

    // out_lm295141_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,923)
    assign out_lm295141_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm295141_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_address(GPOUT,924)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_address;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,925)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,926)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_enable(GPOUT,927)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_read(GPOUT,928)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_read;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_write(GPOUT,929)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_write;

    // out_lm297642_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,930)
    assign out_lm297642_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm297642_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_address(GPOUT,931)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_address;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,932)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,933)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_enable(GPOUT,934)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_read(GPOUT,935)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_read;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_write(GPOUT,936)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_write;

    // out_lm298843_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,937)
    assign out_lm298843_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm298843_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_address(GPOUT,938)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_address;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,939)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,940)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_enable(GPOUT,941)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_read(GPOUT,942)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_read;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_write(GPOUT,943)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_write;

    // out_lm300144_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,944)
    assign out_lm300144_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm300144_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_address(GPOUT,945)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_address;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,946)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,947)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_enable(GPOUT,948)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_read(GPOUT,949)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_read;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_write(GPOUT,950)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_write;

    // out_lm301345_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,951)
    assign out_lm301345_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm301345_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_address(GPOUT,952)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_address;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,953)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,954)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_enable(GPOUT,955)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_read(GPOUT,956)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_read;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_write(GPOUT,957)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_write;

    // out_lm302646_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,958)
    assign out_lm302646_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm302646_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_address(GPOUT,959)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_address;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,960)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,961)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_enable(GPOUT,962)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_read(GPOUT,963)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_read;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_write(GPOUT,964)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_write;

    // out_lm303947_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,965)
    assign out_lm303947_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm303947_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_address(GPOUT,966)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_address;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,967)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,968)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_enable(GPOUT,969)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_read(GPOUT,970)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_read;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_write(GPOUT,971)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_write;

    // out_lm305148_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,972)
    assign out_lm305148_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm305148_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_address(GPOUT,973)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_address;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,974)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,975)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_enable(GPOUT,976)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_read(GPOUT,977)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_read;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_write(GPOUT,978)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_write;

    // out_lm306449_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,979)
    assign out_lm306449_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm306449_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_address(GPOUT,980)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_address;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,981)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,982)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_enable(GPOUT,983)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_read(GPOUT,984)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_read;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_write(GPOUT,985)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_write;

    // out_lm307750_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,986)
    assign out_lm307750_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm307750_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_address(GPOUT,987)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_address;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,988)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,989)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_enable(GPOUT,990)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_read(GPOUT,991)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_read;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_write(GPOUT,992)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_write;

    // out_lm309051_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,993)
    assign out_lm309051_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm309051_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_address(GPOUT,994)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_address;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,995)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,996)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_enable(GPOUT,997)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_read(GPOUT,998)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_read;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_write(GPOUT,999)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_write;

    // out_lm310252_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1000)
    assign out_lm310252_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm310252_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_address(GPOUT,1001)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_address;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1002)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1003)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1004)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_read(GPOUT,1005)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_read;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_write(GPOUT,1006)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_write;

    // out_lm311553_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1007)
    assign out_lm311553_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm311553_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_address(GPOUT,1008)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_address;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1009)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1010)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1011)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_read(GPOUT,1012)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_read;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_write(GPOUT,1013)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_write;

    // out_lm312854_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1014)
    assign out_lm312854_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm312854_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_address(GPOUT,1015)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_address;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1016)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1017)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1018)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_read(GPOUT,1019)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_read;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_write(GPOUT,1020)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_write;

    // out_lm313955_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1021)
    assign out_lm313955_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm313955_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_address(GPOUT,1022)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_address;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1023)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1024)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1025)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_read(GPOUT,1026)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_read;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_write(GPOUT,1027)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_write;

    // out_lm315256_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1028)
    assign out_lm315256_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm315256_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_address(GPOUT,1029)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_address;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1030)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1031)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1032)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_read(GPOUT,1033)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_read;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_write(GPOUT,1034)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_write;

    // out_lm316457_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1035)
    assign out_lm316457_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm316457_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_address(GPOUT,1036)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_address;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1037)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1038)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1039)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_read(GPOUT,1040)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_read;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_write(GPOUT,1041)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_write;

    // out_lm317658_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1042)
    assign out_lm317658_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm317658_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_address(GPOUT,1043)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_address;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1044)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1045)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1046)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_read(GPOUT,1047)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_read;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_write(GPOUT,1048)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_write;

    // out_lm318759_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1049)
    assign out_lm318759_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm318759_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_address(GPOUT,1050)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_address;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1051)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1052)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1053)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_read(GPOUT,1054)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_read;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_write(GPOUT,1055)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_write;

    // out_lm319860_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1056)
    assign out_lm319860_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm319860_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_address(GPOUT,1057)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_address;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1058)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1059)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1060)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_read(GPOUT,1061)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_read;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_write(GPOUT,1062)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_write;

    // out_lm320961_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1063)
    assign out_lm320961_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm320961_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_address(GPOUT,1064)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_address;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1065)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1066)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1067)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_read(GPOUT,1068)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_read;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_write(GPOUT,1069)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_write;

    // out_lm322262_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1070)
    assign out_lm322262_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm322262_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_address(GPOUT,1071)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_address;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1072)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1073)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1074)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_read(GPOUT,1075)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_read;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_write(GPOUT,1076)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_write;

    // out_lm323463_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1077)
    assign out_lm323463_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm323463_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_address(GPOUT,1078)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_address;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1079)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1080)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1081)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_read(GPOUT,1082)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_read;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_write(GPOUT,1083)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_write;

    // out_lm324564_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1084)
    assign out_lm324564_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm324564_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_address(GPOUT,1085)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_address;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1086)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1087)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1088)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_read(GPOUT,1089)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_read;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_write(GPOUT,1090)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_write;

    // out_lm325665_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1091)
    assign out_lm325665_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm325665_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_address(GPOUT,1092)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_address;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1093)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1094)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1095)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_read(GPOUT,1096)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_read;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_write(GPOUT,1097)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_write;

    // out_lm326766_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1098)
    assign out_lm326766_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm326766_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_address(GPOUT,1099)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_address;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1100)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1101)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1102)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_read(GPOUT,1103)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_read;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_write(GPOUT,1104)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_write;

    // out_lm327967_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1105)
    assign out_lm327967_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm327967_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_address(GPOUT,1106)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_address;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1107)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1108)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1109)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_read(GPOUT,1110)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_read;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_write(GPOUT,1111)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_write;

    // out_lm329168_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1112)
    assign out_lm329168_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm329168_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_address(GPOUT,1113)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_address;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1114)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1115)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1116)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_read(GPOUT,1117)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_read;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_write(GPOUT,1118)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_write;

    // out_lm330369_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1119)
    assign out_lm330369_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm330369_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_address(GPOUT,1120)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_address;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1121)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1122)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1123)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_read(GPOUT,1124)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_read;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_write(GPOUT,1125)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_write;

    // out_lm331470_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1126)
    assign out_lm331470_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm331470_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_address(GPOUT,1127)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_address;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1128)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1129)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1130)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_read(GPOUT,1131)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_read;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_write(GPOUT,1132)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_write;

    // out_lm332571_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1133)
    assign out_lm332571_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm332571_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_address(GPOUT,1134)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_address;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1135)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1136)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1137)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_read(GPOUT,1138)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_read;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_write(GPOUT,1139)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_write;

    // out_lm333872_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1140)
    assign out_lm333872_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm333872_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_address(GPOUT,1141)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_address;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1142)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1143)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1144)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_read(GPOUT,1145)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_read;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_write(GPOUT,1146)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_write;

    // out_lm335073_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1147)
    assign out_lm335073_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm335073_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_address(GPOUT,1148)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_address;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1149)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1150)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1151)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_read(GPOUT,1152)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_read;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_write(GPOUT,1153)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_write;

    // out_lm336374_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1154)
    assign out_lm336374_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm336374_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_address(GPOUT,1155)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_address;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1156)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1157)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1158)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_read(GPOUT,1159)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_read;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_write(GPOUT,1160)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_write;

    // out_lm337475_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1161)
    assign out_lm337475_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm337475_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_address(GPOUT,1162)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_address;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1163)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1164)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1165)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_read(GPOUT,1166)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_read;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_write(GPOUT,1167)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_write;

    // out_lm338676_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1168)
    assign out_lm338676_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm338676_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_address(GPOUT,1169)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_address;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1170)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1171)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1172)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_read(GPOUT,1173)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_read;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_write(GPOUT,1174)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_write;

    // out_lm339777_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1175)
    assign out_lm339777_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm339777_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_address(GPOUT,1176)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_address;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1177)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1178)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1179)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_read(GPOUT,1180)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_read;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_write(GPOUT,1181)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_write;

    // out_lm340878_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1182)
    assign out_lm340878_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm340878_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_address(GPOUT,1183)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_address;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1184)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1185)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1186)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_read(GPOUT,1187)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_read;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_write(GPOUT,1188)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_write;

    // out_lm342179_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1189)
    assign out_lm342179_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm342179_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_address(GPOUT,1190)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_address;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1191)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1192)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1193)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_read(GPOUT,1194)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_read;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_write(GPOUT,1195)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_write;

    // out_lm343280_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1196)
    assign out_lm343280_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm343280_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_address(GPOUT,1197)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_address;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1198)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1199)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1200)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_read(GPOUT,1201)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_read;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_write(GPOUT,1202)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_write;

    // out_lm344381_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1203)
    assign out_lm344381_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm344381_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_address(GPOUT,1204)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_address;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1205)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1206)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1207)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_read(GPOUT,1208)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_read;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_write(GPOUT,1209)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_write;

    // out_lm345582_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1210)
    assign out_lm345582_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm345582_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_address(GPOUT,1211)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_address;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1212)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1213)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1214)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_read(GPOUT,1215)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_read;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_write(GPOUT,1216)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_write;

    // out_lm346783_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1217)
    assign out_lm346783_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm346783_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_address(GPOUT,1218)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_address;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1219)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1220)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1221)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_read(GPOUT,1222)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_read;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_write(GPOUT,1223)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_write;

    // out_lm348084_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1224)
    assign out_lm348084_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm348084_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_address(GPOUT,1225)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_address;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1226)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1227)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1228)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_read(GPOUT,1229)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_read;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_write(GPOUT,1230)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_write;

    // out_lm349285_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1231)
    assign out_lm349285_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm349285_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_address(GPOUT,1232)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_address;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1233)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1234)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1235)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_read(GPOUT,1236)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_read;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_write(GPOUT,1237)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_write;

    // out_lm350486_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1238)
    assign out_lm350486_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm350486_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_address(GPOUT,1239)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_address;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1240)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1241)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1242)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_read(GPOUT,1243)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_read;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_write(GPOUT,1244)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_write;

    // out_lm351687_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1245)
    assign out_lm351687_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm351687_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_address(GPOUT,1246)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_address;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1247)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1248)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1249)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_read(GPOUT,1250)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_read;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_write(GPOUT,1251)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_write;

    // out_lm352888_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1252)
    assign out_lm352888_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm352888_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_address(GPOUT,1253)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_address;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1254)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1255)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1256)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_read(GPOUT,1257)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_read;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_write(GPOUT,1258)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_write;

    // out_lm353989_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1259)
    assign out_lm353989_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm353989_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_address(GPOUT,1260)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_address;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1261)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1262)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1263)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_read(GPOUT,1264)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_read;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_write(GPOUT,1265)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_write;

    // out_lm355190_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1266)
    assign out_lm355190_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm355190_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_address(GPOUT,1267)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_address;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1268)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1269)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1270)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_read(GPOUT,1271)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_read;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_write(GPOUT,1272)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_write;

    // out_lm356291_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1273)
    assign out_lm356291_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm356291_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_address(GPOUT,1274)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_address;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1275)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1276)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1277)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_read(GPOUT,1278)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_read;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_write(GPOUT,1279)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_write;

    // out_lm357592_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1280)
    assign out_lm357592_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm357592_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_address(GPOUT,1281)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_address;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1282)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1283)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1284)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_read(GPOUT,1285)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_read;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_write(GPOUT,1286)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_write;

    // out_lm358693_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1287)
    assign out_lm358693_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm358693_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_address(GPOUT,1288)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_address;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1289)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1290)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1291)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_read(GPOUT,1292)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_read;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_write(GPOUT,1293)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_write;

    // out_lm359794_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1294)
    assign out_lm359794_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm359794_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_address(GPOUT,1295)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_address;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1296)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1297)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1298)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_read(GPOUT,1299)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_read;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_write(GPOUT,1300)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_write;

    // out_lm360895_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1301)
    assign out_lm360895_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm360895_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_address(GPOUT,1302)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_address;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1303)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1304)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1305)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_read(GPOUT,1306)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_read;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_write(GPOUT,1307)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_write;

    // out_lm362096_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1308)
    assign out_lm362096_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm362096_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_address(GPOUT,1309)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_address;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1310)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1311)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1312)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_read(GPOUT,1313)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_read;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_write(GPOUT,1314)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_write;

    // out_lm363297_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1315)
    assign out_lm363297_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm363297_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_address(GPOUT,1316)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_address;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1317)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1318)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1319)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_read(GPOUT,1320)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_read;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_write(GPOUT,1321)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_write;

    // out_lm364398_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1322)
    assign out_lm364398_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm364398_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_address(GPOUT,1323)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_address;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1324)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1325)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1326)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_read(GPOUT,1327)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_read;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_write(GPOUT,1328)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_write;

    // out_lm365699_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1329)
    assign out_lm365699_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm365699_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_address(GPOUT,1330)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1331)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1332)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1333)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_read(GPOUT,1334)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_write(GPOUT,1335)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1336)
    assign out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3668100_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_address(GPOUT,1337)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1338)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1339)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1340)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_read(GPOUT,1341)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_write(GPOUT,1342)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1343)
    assign out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3681101_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_address(GPOUT,1344)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1345)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1346)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1347)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_read(GPOUT,1348)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_write(GPOUT,1349)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1350)
    assign out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3693102_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_address(GPOUT,1351)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1352)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1353)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1354)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_read(GPOUT,1355)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_write(GPOUT,1356)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1357)
    assign out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3706103_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_address(GPOUT,1358)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1359)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1360)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1361)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_read(GPOUT,1362)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_write(GPOUT,1363)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1364)
    assign out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3718104_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_address(GPOUT,1365)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1366)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1367)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1368)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_read(GPOUT,1369)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_write(GPOUT,1370)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1371)
    assign out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3731105_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_address(GPOUT,1372)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1373)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1374)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1375)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_read(GPOUT,1376)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_write(GPOUT,1377)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1378)
    assign out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3743106_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_address(GPOUT,1379)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1380)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1381)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1382)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_read(GPOUT,1383)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_write(GPOUT,1384)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1385)
    assign out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3755107_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_address(GPOUT,1386)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1387)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1388)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1389)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_read(GPOUT,1390)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_write(GPOUT,1391)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1392)
    assign out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3767108_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_address(GPOUT,1393)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1394)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1395)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1396)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_read(GPOUT,1397)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_write(GPOUT,1398)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1399)
    assign out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3778109_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_address(GPOUT,1400)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1401)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1402)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1403)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_read(GPOUT,1404)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_write(GPOUT,1405)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1406)
    assign out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3789110_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_address(GPOUT,1407)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1408)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1409)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1410)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_read(GPOUT,1411)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_write(GPOUT,1412)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1413)
    assign out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3801111_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_address(GPOUT,1414)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1415)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1416)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1417)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_read(GPOUT,1418)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_write(GPOUT,1419)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1420)
    assign out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3812112_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_address(GPOUT,1421)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1422)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1423)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1424)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_read(GPOUT,1425)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_write(GPOUT,1426)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1427)
    assign out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3824113_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_address(GPOUT,1428)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1429)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1430)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1431)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_read(GPOUT,1432)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_write(GPOUT,1433)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1434)
    assign out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3836114_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_address(GPOUT,1435)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1436)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1437)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1438)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_read(GPOUT,1439)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_write(GPOUT,1440)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1441)
    assign out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3849115_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_address(GPOUT,1442)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1443)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1444)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1445)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_read(GPOUT,1446)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_write(GPOUT,1447)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1448)
    assign out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3862116_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_address(GPOUT,1449)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1450)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1451)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1452)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_read(GPOUT,1453)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_write(GPOUT,1454)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1455)
    assign out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3874117_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_address(GPOUT,1456)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1457)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1458)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1459)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_read(GPOUT,1460)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_write(GPOUT,1461)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1462)
    assign out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3886118_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_address(GPOUT,1463)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1464)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1465)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1466)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_read(GPOUT,1467)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_write(GPOUT,1468)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1469)
    assign out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3897119_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_address(GPOUT,1470)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1471)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1472)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1473)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_read(GPOUT,1474)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_write(GPOUT,1475)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1476)
    assign out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3908120_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_address(GPOUT,1477)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1478)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1479)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1480)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_read(GPOUT,1481)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_write(GPOUT,1482)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1483)
    assign out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3919121_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_address(GPOUT,1484)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1485)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1486)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1487)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_read(GPOUT,1488)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_write(GPOUT,1489)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1490)
    assign out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3931122_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_address(GPOUT,1491)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1492)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1493)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1494)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_read(GPOUT,1495)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_write(GPOUT,1496)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1497)
    assign out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3942123_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_address(GPOUT,1498)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1499)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1500)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1501)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_read(GPOUT,1502)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_write(GPOUT,1503)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1504)
    assign out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3953124_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_address(GPOUT,1505)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1506)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1507)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1508)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_read(GPOUT,1509)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_write(GPOUT,1510)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1511)
    assign out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3965125_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_address(GPOUT,1512)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1513)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1514)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1515)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_read(GPOUT,1516)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_write(GPOUT,1517)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1518)
    assign out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3977126_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_address(GPOUT,1519)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1520)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1521)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1522)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_read(GPOUT,1523)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_write(GPOUT,1524)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1525)
    assign out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3988127_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm3_emscripten_compute_dom_pk_code_avm_address(GPOUT,1526)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_address;

    // out_lm3_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1527)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm3_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1528)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm3_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1529)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm3_emscripten_compute_dom_pk_code_avm_read(GPOUT,1530)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_read;

    // out_lm3_emscripten_compute_dom_pk_code_avm_write(GPOUT,1531)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_write;

    // out_lm3_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1532)
    assign out_lm3_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm3_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_address(GPOUT,1533)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1534)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1535)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1536)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_read(GPOUT,1537)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_write(GPOUT,1538)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1539)
    assign out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4000128_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_address(GPOUT,1540)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1541)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1542)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1543)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_read(GPOUT,1544)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_write(GPOUT,1545)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1546)
    assign out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4012129_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_address(GPOUT,1547)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1548)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1549)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1550)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_read(GPOUT,1551)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_write(GPOUT,1552)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1553)
    assign out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4024130_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_address(GPOUT,1554)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1555)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1556)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1557)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_read(GPOUT,1558)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_write(GPOUT,1559)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1560)
    assign out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4036131_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_address(GPOUT,1561)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1562)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1563)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1564)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_read(GPOUT,1565)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_write(GPOUT,1566)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1567)
    assign out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4047132_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_address(GPOUT,1568)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1569)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1570)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1571)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_read(GPOUT,1572)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_write(GPOUT,1573)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1574)
    assign out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4058133_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_address(GPOUT,1575)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1576)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1577)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1578)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_read(GPOUT,1579)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_write(GPOUT,1580)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1581)
    assign out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4070134_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_address(GPOUT,1582)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1583)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1584)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1585)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_read(GPOUT,1586)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_write(GPOUT,1587)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1588)
    assign out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4081135_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_address(GPOUT,1589)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1590)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1591)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1592)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_read(GPOUT,1593)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_write(GPOUT,1594)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1595)
    assign out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4092136_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_address(GPOUT,1596)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1597)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1598)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1599)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_read(GPOUT,1600)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_write(GPOUT,1601)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1602)
    assign out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4103137_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_address(GPOUT,1603)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1604)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1605)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1606)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_read(GPOUT,1607)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_write(GPOUT,1608)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1609)
    assign out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4115138_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_address(GPOUT,1610)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1611)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1612)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1613)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_read(GPOUT,1614)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_write(GPOUT,1615)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1616)
    assign out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4126139_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_address(GPOUT,1617)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1618)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1619)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1620)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_read(GPOUT,1621)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_write(GPOUT,1622)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1623)
    assign out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4137140_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_address(GPOUT,1624)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1625)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1626)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1627)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_read(GPOUT,1628)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_write(GPOUT,1629)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1630)
    assign out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4148141_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_address(GPOUT,1631)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1632)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1633)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1634)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_read(GPOUT,1635)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_write(GPOUT,1636)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1637)
    assign out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4160142_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_address(GPOUT,1638)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1639)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1640)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1641)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_read(GPOUT,1642)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_write(GPOUT,1643)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1644)
    assign out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4172143_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_address(GPOUT,1645)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1646)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1647)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1648)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_read(GPOUT,1649)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_write(GPOUT,1650)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1651)
    assign out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4185144_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_address(GPOUT,1652)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1653)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1654)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1655)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_read(GPOUT,1656)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_write(GPOUT,1657)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1658)
    assign out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4198145_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_address(GPOUT,1659)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1660)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1661)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1662)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_read(GPOUT,1663)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_write(GPOUT,1664)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1665)
    assign out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4210146_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_address(GPOUT,1666)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1667)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1668)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1669)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_read(GPOUT,1670)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_write(GPOUT,1671)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1672)
    assign out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4221147_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_address(GPOUT,1673)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1674)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1675)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1676)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_read(GPOUT,1677)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_write(GPOUT,1678)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1679)
    assign out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4233148_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_address(GPOUT,1680)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1681)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1682)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1683)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_read(GPOUT,1684)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_write(GPOUT,1685)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1686)
    assign out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4245149_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_address(GPOUT,1687)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1688)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1689)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1690)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_read(GPOUT,1691)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_write(GPOUT,1692)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1693)
    assign out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4257150_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_address(GPOUT,1694)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1695)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1696)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1697)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_read(GPOUT,1698)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_write(GPOUT,1699)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1700)
    assign out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4268151_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_address(GPOUT,1701)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1702)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1703)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1704)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_read(GPOUT,1705)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_write(GPOUT,1706)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1707)
    assign out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4279152_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_address(GPOUT,1708)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1709)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1710)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1711)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_read(GPOUT,1712)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_write(GPOUT,1713)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1714)
    assign out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4290153_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_address(GPOUT,1715)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1716)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1717)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1718)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_read(GPOUT,1719)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_write(GPOUT,1720)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1721)
    assign out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4302154_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_address(GPOUT,1722)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1723)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1724)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1725)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_read(GPOUT,1726)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_write(GPOUT,1727)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1728)
    assign out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4314155_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_address(GPOUT,1729)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_address;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1730)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1731)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1732)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_read(GPOUT,1733)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_read;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_write(GPOUT,1734)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_write;

    // out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1735)
    assign out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B3_out_lm4326156_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_address(GPOUT,1736)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_address;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1737)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1738)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1739)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_read(GPOUT,1740)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_read;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_write(GPOUT,1741)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_write;

    // out_lm58771_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1742)
    assign out_lm58771_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B1_start_out_lm58771_emscripten_compute_dom_pk_code_avm_writedata;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_address(GPOUT,1743)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_address = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_address;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount(GPOUT,1744)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_burstcount;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable(GPOUT,1745)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_byteenable;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_enable(GPOUT,1746)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_enable = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_enable;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_read(GPOUT,1747)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_read = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_read;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_write(GPOUT,1748)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_write = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_write;

    // out_lm58812_emscripten_compute_dom_pk_code_avm_writedata(GPOUT,1749)
    assign out_lm58812_emscripten_compute_dom_pk_code_avm_writedata = bb_emscripten_compute_dom_pk_code_B2_out_lm58812_emscripten_compute_dom_pk_code_avm_writedata;

    // bb_emscripten_compute_dom_pk_code_B0_runOnce(BLACKBOX,2)
    emscripten_compute_dom_pk_code_bb_B0_runOnce thebb_emscripten_compute_dom_pk_code_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_emscripten_compute_dom_pk_code_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,1750)
    assign out_stall_out = bb_emscripten_compute_dom_pk_code_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,1751)
    assign out_valid_out = GND_q;

endmodule
