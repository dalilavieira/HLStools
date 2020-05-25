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

// SystemVerilog created from c2c_decode_stats_function_wrapper
// SystemVerilog created on Sun May 24 22:37:22 2020


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module c2c_decode_stats_function_wrapper (
    input wire [63:0] PERF_MEM_LOCK_LOCKED,
    input wire [63:0] PERF_MEM_LVL_HIT,
    input wire [63:0] PERF_MEM_LVL_IO,
    input wire [63:0] PERF_MEM_LVL_L1,
    input wire [63:0] PERF_MEM_LVL_L2,
    input wire [63:0] PERF_MEM_LVL_L3,
    input wire [63:0] PERF_MEM_LVL_LFB,
    input wire [63:0] PERF_MEM_LVL_LOC_RAM,
    input wire [63:0] PERF_MEM_LVL_MISS,
    input wire [63:0] PERF_MEM_LVL_UNC,
    input wire [63:0] PERF_MEM_OP_LOAD,
    input wire [63:0] PERF_MEM_OP_STORE,
    input wire [63:0] PERF_MEM_SNOOP_HIT,
    input wire [63:0] PERF_MEM_SNOOP_HITM,
    input wire [63:0] avm_lm10432_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm10432_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm10432_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm10432_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm10633_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm10633_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm10633_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm10633_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm11134_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm11134_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm11134_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm11134_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm12335_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm12335_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm12335_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm12335_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm12737_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm12737_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm12737_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm12737_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm13238_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm13238_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm13238_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm13238_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm1521_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm1521_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm1521_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm1521_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm17044_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm17044_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm17044_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm17044_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm19750_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm19750_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm19750_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm19750_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm20351_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm20351_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm20351_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm20351_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm20_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm20_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm20_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm20_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm2722_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm2722_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm2722_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm2722_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm3923_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm3923_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm3923_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm3923_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm4924_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm4924_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm4924_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm4924_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm5725_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm5725_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm5725_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm5725_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm6426_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm6426_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm6426_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm6426_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm7227_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm7227_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm7227_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm7227_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm7928_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm7928_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm7928_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm7928_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm8629_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm8629_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm8629_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm8629_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm9730_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm9730_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm9730_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm9730_c2c_decode_stats_writeack,
    input wire [63:0] avm_lm9931_c2c_decode_stats_readdata,
    input wire [0:0] avm_lm9931_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_lm9931_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_lm9931_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_19_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_19_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_19_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_19_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_42818_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_42818_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_42818_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_42818_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_42917_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_42917_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_42917_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_42917_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43016_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43016_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43016_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43016_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43115_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43115_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43115_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43115_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43214_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43214_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43214_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43214_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43313_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43313_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43313_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43313_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43412_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43412_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43412_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43412_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43511_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43511_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43511_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43511_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_43610_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_43610_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_43610_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_43610_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4379_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4379_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4379_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4379_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4388_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4388_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4388_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4388_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4397_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4397_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4397_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4397_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4406_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4406_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4406_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4406_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4415_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4415_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4415_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4415_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4424_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4424_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4424_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4424_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4433_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4433_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4433_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4433_c2c_decode_stats_writeack,
    input wire [63:0] avm_memdep_4442_c2c_decode_stats_readdata,
    input wire [0:0] avm_memdep_4442_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_memdep_4442_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_memdep_4442_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml23049_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml23049_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml23049_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml23049_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml23348_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml23348_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml23348_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml23348_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml24247_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml24247_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml24247_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml24247_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml24846_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml24846_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml24846_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml24846_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml25145_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml25145_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml25145_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml25145_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml26343_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml26343_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml26343_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml26343_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml26642_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml26642_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml26642_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml26642_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml26941_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml26941_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml26941_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml26941_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml28140_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml28140_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml28140_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml28140_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml28439_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml28439_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml28439_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml28439_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml29036_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml29036_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml29036_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml29036_c2c_decode_stats_writeack,
    input wire [63:0] avm_ml52_c2c_decode_stats_readdata,
    input wire [0:0] avm_ml52_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_ml52_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_ml52_c2c_decode_stats_writeack,
    input wire [63:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_readdata,
    input wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_writeack,
    input wire [63:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_readdata,
    input wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_writeack,
    input wire [63:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_readdata,
    input wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_writeack,
    input wire [63:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_readdata,
    input wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_writeack,
    input wire [63:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_readdata,
    input wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_readdatavalid,
    input wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_waitrequest,
    input wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_writeack,
    input wire [1023:0] avst_iord_bl_call_c2c_decode_stats_data,
    input wire [0:0] avst_iord_bl_call_c2c_decode_stats_valid,
    input wire [0:0] avst_iowr_bl_return_c2c_decode_stats_almostfull,
    input wire [0:0] avst_iowr_bl_return_c2c_decode_stats_ready,
    input wire [63:0] mi,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [63:0] stats,
    input wire [0:0] valid_in,
    output wire [63:0] avm_lm10432_c2c_decode_stats_address,
    output wire [0:0] avm_lm10432_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm10432_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm10432_c2c_decode_stats_enable,
    output wire [0:0] avm_lm10432_c2c_decode_stats_read,
    output wire [0:0] avm_lm10432_c2c_decode_stats_write,
    output wire [63:0] avm_lm10432_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm10633_c2c_decode_stats_address,
    output wire [0:0] avm_lm10633_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm10633_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm10633_c2c_decode_stats_enable,
    output wire [0:0] avm_lm10633_c2c_decode_stats_read,
    output wire [0:0] avm_lm10633_c2c_decode_stats_write,
    output wire [63:0] avm_lm10633_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm11134_c2c_decode_stats_address,
    output wire [0:0] avm_lm11134_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm11134_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm11134_c2c_decode_stats_enable,
    output wire [0:0] avm_lm11134_c2c_decode_stats_read,
    output wire [0:0] avm_lm11134_c2c_decode_stats_write,
    output wire [63:0] avm_lm11134_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm12335_c2c_decode_stats_address,
    output wire [0:0] avm_lm12335_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm12335_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm12335_c2c_decode_stats_enable,
    output wire [0:0] avm_lm12335_c2c_decode_stats_read,
    output wire [0:0] avm_lm12335_c2c_decode_stats_write,
    output wire [63:0] avm_lm12335_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm12737_c2c_decode_stats_address,
    output wire [0:0] avm_lm12737_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm12737_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm12737_c2c_decode_stats_enable,
    output wire [0:0] avm_lm12737_c2c_decode_stats_read,
    output wire [0:0] avm_lm12737_c2c_decode_stats_write,
    output wire [63:0] avm_lm12737_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm13238_c2c_decode_stats_address,
    output wire [0:0] avm_lm13238_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm13238_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm13238_c2c_decode_stats_enable,
    output wire [0:0] avm_lm13238_c2c_decode_stats_read,
    output wire [0:0] avm_lm13238_c2c_decode_stats_write,
    output wire [63:0] avm_lm13238_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm1521_c2c_decode_stats_address,
    output wire [0:0] avm_lm1521_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm1521_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm1521_c2c_decode_stats_enable,
    output wire [0:0] avm_lm1521_c2c_decode_stats_read,
    output wire [0:0] avm_lm1521_c2c_decode_stats_write,
    output wire [63:0] avm_lm1521_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm17044_c2c_decode_stats_address,
    output wire [0:0] avm_lm17044_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm17044_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm17044_c2c_decode_stats_enable,
    output wire [0:0] avm_lm17044_c2c_decode_stats_read,
    output wire [0:0] avm_lm17044_c2c_decode_stats_write,
    output wire [63:0] avm_lm17044_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm19750_c2c_decode_stats_address,
    output wire [0:0] avm_lm19750_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm19750_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm19750_c2c_decode_stats_enable,
    output wire [0:0] avm_lm19750_c2c_decode_stats_read,
    output wire [0:0] avm_lm19750_c2c_decode_stats_write,
    output wire [63:0] avm_lm19750_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm20351_c2c_decode_stats_address,
    output wire [0:0] avm_lm20351_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm20351_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm20351_c2c_decode_stats_enable,
    output wire [0:0] avm_lm20351_c2c_decode_stats_read,
    output wire [0:0] avm_lm20351_c2c_decode_stats_write,
    output wire [63:0] avm_lm20351_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm20_c2c_decode_stats_address,
    output wire [0:0] avm_lm20_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm20_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm20_c2c_decode_stats_enable,
    output wire [0:0] avm_lm20_c2c_decode_stats_read,
    output wire [0:0] avm_lm20_c2c_decode_stats_write,
    output wire [63:0] avm_lm20_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm2722_c2c_decode_stats_address,
    output wire [0:0] avm_lm2722_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm2722_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm2722_c2c_decode_stats_enable,
    output wire [0:0] avm_lm2722_c2c_decode_stats_read,
    output wire [0:0] avm_lm2722_c2c_decode_stats_write,
    output wire [63:0] avm_lm2722_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm3923_c2c_decode_stats_address,
    output wire [0:0] avm_lm3923_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm3923_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm3923_c2c_decode_stats_enable,
    output wire [0:0] avm_lm3923_c2c_decode_stats_read,
    output wire [0:0] avm_lm3923_c2c_decode_stats_write,
    output wire [63:0] avm_lm3923_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm4924_c2c_decode_stats_address,
    output wire [0:0] avm_lm4924_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm4924_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm4924_c2c_decode_stats_enable,
    output wire [0:0] avm_lm4924_c2c_decode_stats_read,
    output wire [0:0] avm_lm4924_c2c_decode_stats_write,
    output wire [63:0] avm_lm4924_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm5725_c2c_decode_stats_address,
    output wire [0:0] avm_lm5725_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm5725_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm5725_c2c_decode_stats_enable,
    output wire [0:0] avm_lm5725_c2c_decode_stats_read,
    output wire [0:0] avm_lm5725_c2c_decode_stats_write,
    output wire [63:0] avm_lm5725_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm6426_c2c_decode_stats_address,
    output wire [0:0] avm_lm6426_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm6426_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm6426_c2c_decode_stats_enable,
    output wire [0:0] avm_lm6426_c2c_decode_stats_read,
    output wire [0:0] avm_lm6426_c2c_decode_stats_write,
    output wire [63:0] avm_lm6426_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm7227_c2c_decode_stats_address,
    output wire [0:0] avm_lm7227_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm7227_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm7227_c2c_decode_stats_enable,
    output wire [0:0] avm_lm7227_c2c_decode_stats_read,
    output wire [0:0] avm_lm7227_c2c_decode_stats_write,
    output wire [63:0] avm_lm7227_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm7928_c2c_decode_stats_address,
    output wire [0:0] avm_lm7928_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm7928_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm7928_c2c_decode_stats_enable,
    output wire [0:0] avm_lm7928_c2c_decode_stats_read,
    output wire [0:0] avm_lm7928_c2c_decode_stats_write,
    output wire [63:0] avm_lm7928_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm8629_c2c_decode_stats_address,
    output wire [0:0] avm_lm8629_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm8629_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm8629_c2c_decode_stats_enable,
    output wire [0:0] avm_lm8629_c2c_decode_stats_read,
    output wire [0:0] avm_lm8629_c2c_decode_stats_write,
    output wire [63:0] avm_lm8629_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm9730_c2c_decode_stats_address,
    output wire [0:0] avm_lm9730_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm9730_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm9730_c2c_decode_stats_enable,
    output wire [0:0] avm_lm9730_c2c_decode_stats_read,
    output wire [0:0] avm_lm9730_c2c_decode_stats_write,
    output wire [63:0] avm_lm9730_c2c_decode_stats_writedata,
    output wire [63:0] avm_lm9931_c2c_decode_stats_address,
    output wire [0:0] avm_lm9931_c2c_decode_stats_burstcount,
    output wire [7:0] avm_lm9931_c2c_decode_stats_byteenable,
    output wire [0:0] avm_lm9931_c2c_decode_stats_enable,
    output wire [0:0] avm_lm9931_c2c_decode_stats_read,
    output wire [0:0] avm_lm9931_c2c_decode_stats_write,
    output wire [63:0] avm_lm9931_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_19_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_19_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_19_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_19_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_19_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_19_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_19_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_42818_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_42818_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_42818_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_42818_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_42818_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_42818_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_42818_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_42917_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_42917_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_42917_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_42917_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_42917_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_42917_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_42917_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43016_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43016_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43016_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43016_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43016_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43016_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43016_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43115_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43115_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43115_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43115_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43115_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43115_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43115_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43214_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43214_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43214_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43214_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43214_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43214_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43214_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43313_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43313_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43313_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43313_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43313_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43313_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43313_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43412_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43412_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43412_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43412_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43412_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43412_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43412_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43511_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43511_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43511_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43511_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43511_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43511_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43511_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_43610_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_43610_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_43610_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_43610_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_43610_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_43610_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_43610_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4379_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4379_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4379_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4379_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4379_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4379_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4379_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4388_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4388_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4388_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4388_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4388_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4388_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4388_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4397_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4397_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4397_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4397_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4397_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4397_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4397_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4406_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4406_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4406_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4406_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4406_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4406_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4406_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4415_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4415_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4415_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4415_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4415_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4415_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4415_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4424_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4424_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4424_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4424_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4424_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4424_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4424_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4433_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4433_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4433_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4433_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4433_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4433_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4433_c2c_decode_stats_writedata,
    output wire [63:0] avm_memdep_4442_c2c_decode_stats_address,
    output wire [0:0] avm_memdep_4442_c2c_decode_stats_burstcount,
    output wire [7:0] avm_memdep_4442_c2c_decode_stats_byteenable,
    output wire [0:0] avm_memdep_4442_c2c_decode_stats_enable,
    output wire [0:0] avm_memdep_4442_c2c_decode_stats_read,
    output wire [0:0] avm_memdep_4442_c2c_decode_stats_write,
    output wire [63:0] avm_memdep_4442_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml23049_c2c_decode_stats_address,
    output wire [0:0] avm_ml23049_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml23049_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml23049_c2c_decode_stats_enable,
    output wire [0:0] avm_ml23049_c2c_decode_stats_read,
    output wire [0:0] avm_ml23049_c2c_decode_stats_write,
    output wire [63:0] avm_ml23049_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml23348_c2c_decode_stats_address,
    output wire [0:0] avm_ml23348_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml23348_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml23348_c2c_decode_stats_enable,
    output wire [0:0] avm_ml23348_c2c_decode_stats_read,
    output wire [0:0] avm_ml23348_c2c_decode_stats_write,
    output wire [63:0] avm_ml23348_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml24247_c2c_decode_stats_address,
    output wire [0:0] avm_ml24247_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml24247_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml24247_c2c_decode_stats_enable,
    output wire [0:0] avm_ml24247_c2c_decode_stats_read,
    output wire [0:0] avm_ml24247_c2c_decode_stats_write,
    output wire [63:0] avm_ml24247_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml24846_c2c_decode_stats_address,
    output wire [0:0] avm_ml24846_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml24846_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml24846_c2c_decode_stats_enable,
    output wire [0:0] avm_ml24846_c2c_decode_stats_read,
    output wire [0:0] avm_ml24846_c2c_decode_stats_write,
    output wire [63:0] avm_ml24846_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml25145_c2c_decode_stats_address,
    output wire [0:0] avm_ml25145_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml25145_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml25145_c2c_decode_stats_enable,
    output wire [0:0] avm_ml25145_c2c_decode_stats_read,
    output wire [0:0] avm_ml25145_c2c_decode_stats_write,
    output wire [63:0] avm_ml25145_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml26343_c2c_decode_stats_address,
    output wire [0:0] avm_ml26343_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml26343_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml26343_c2c_decode_stats_enable,
    output wire [0:0] avm_ml26343_c2c_decode_stats_read,
    output wire [0:0] avm_ml26343_c2c_decode_stats_write,
    output wire [63:0] avm_ml26343_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml26642_c2c_decode_stats_address,
    output wire [0:0] avm_ml26642_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml26642_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml26642_c2c_decode_stats_enable,
    output wire [0:0] avm_ml26642_c2c_decode_stats_read,
    output wire [0:0] avm_ml26642_c2c_decode_stats_write,
    output wire [63:0] avm_ml26642_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml26941_c2c_decode_stats_address,
    output wire [0:0] avm_ml26941_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml26941_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml26941_c2c_decode_stats_enable,
    output wire [0:0] avm_ml26941_c2c_decode_stats_read,
    output wire [0:0] avm_ml26941_c2c_decode_stats_write,
    output wire [63:0] avm_ml26941_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml28140_c2c_decode_stats_address,
    output wire [0:0] avm_ml28140_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml28140_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml28140_c2c_decode_stats_enable,
    output wire [0:0] avm_ml28140_c2c_decode_stats_read,
    output wire [0:0] avm_ml28140_c2c_decode_stats_write,
    output wire [63:0] avm_ml28140_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml28439_c2c_decode_stats_address,
    output wire [0:0] avm_ml28439_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml28439_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml28439_c2c_decode_stats_enable,
    output wire [0:0] avm_ml28439_c2c_decode_stats_read,
    output wire [0:0] avm_ml28439_c2c_decode_stats_write,
    output wire [63:0] avm_ml28439_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml29036_c2c_decode_stats_address,
    output wire [0:0] avm_ml29036_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml29036_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml29036_c2c_decode_stats_enable,
    output wire [0:0] avm_ml29036_c2c_decode_stats_read,
    output wire [0:0] avm_ml29036_c2c_decode_stats_write,
    output wire [63:0] avm_ml29036_c2c_decode_stats_writedata,
    output wire [63:0] avm_ml52_c2c_decode_stats_address,
    output wire [0:0] avm_ml52_c2c_decode_stats_burstcount,
    output wire [7:0] avm_ml52_c2c_decode_stats_byteenable,
    output wire [0:0] avm_ml52_c2c_decode_stats_enable,
    output wire [0:0] avm_ml52_c2c_decode_stats_read,
    output wire [0:0] avm_ml52_c2c_decode_stats_write,
    output wire [63:0] avm_ml52_c2c_decode_stats_writedata,
    output wire [63:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_address,
    output wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_burstcount,
    output wire [7:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_byteenable,
    output wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_enable,
    output wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_read,
    output wire [0:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_write,
    output wire [63:0] avm_unnamed_c2c_decode_stats1_c2c_decode_stats_writedata,
    output wire [63:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_address,
    output wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_burstcount,
    output wire [7:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_byteenable,
    output wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_enable,
    output wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_read,
    output wire [0:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_write,
    output wire [63:0] avm_unnamed_c2c_decode_stats2_c2c_decode_stats_writedata,
    output wire [63:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_address,
    output wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_burstcount,
    output wire [7:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_byteenable,
    output wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_enable,
    output wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_read,
    output wire [0:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_write,
    output wire [63:0] avm_unnamed_c2c_decode_stats3_c2c_decode_stats_writedata,
    output wire [63:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_address,
    output wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_burstcount,
    output wire [7:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_byteenable,
    output wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_enable,
    output wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_read,
    output wire [0:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_write,
    output wire [63:0] avm_unnamed_c2c_decode_stats4_c2c_decode_stats_writedata,
    output wire [63:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_address,
    output wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_burstcount,
    output wire [7:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_byteenable,
    output wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_enable,
    output wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_read,
    output wire [0:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_write,
    output wire [63:0] avm_unnamed_c2c_decode_stats5_c2c_decode_stats_writedata,
    output wire [0:0] avst_iord_bl_call_c2c_decode_stats_ready,
    output wire [31:0] avst_iowr_bl_return_c2c_decode_stats_data,
    output wire [0:0] avst_iowr_bl_return_c2c_decode_stats_valid,
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
    wire [0:0] c2c_decode_stats_function_out_iord_bl_call_c2c_decode_stats_o_fifoready;
    wire [31:0] c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifodata;
    wire [0:0] c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifovalid;
    wire [63:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_writedata;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_address;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_burstcount;
    wire [7:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_byteenable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_enable;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_read;
    wire [0:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_write;
    wire [63:0] c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_writedata;
    wire [63:0] call_const_q;
    wire [1023:0] implicit_input_q;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,259)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,8)
    assign implicit_input_q = {PERF_MEM_SNOOP_HITM, PERF_MEM_SNOOP_HIT, PERF_MEM_OP_STORE, PERF_MEM_OP_LOAD, PERF_MEM_LVL_UNC, PERF_MEM_LVL_MISS, PERF_MEM_LVL_LOC_RAM, PERF_MEM_LVL_LFB, PERF_MEM_LVL_L3, PERF_MEM_LVL_L2, PERF_MEM_LVL_L1, PERF_MEM_LVL_IO, PERF_MEM_LVL_HIT, PERF_MEM_LOCK_LOCKED, mi, stats};

    // call_const(CONSTANT,5)
    assign call_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // c2c_decode_stats_function(BLACKBOX,4)
    c2c_decode_stats_function thec2c_decode_stats_function (
        .in_arg_call(call_const_q),
        .in_arg_mi(call_const_q),
        .in_arg_return(call_const_q),
        .in_arg_stats(call_const_q),
        .in_iord_bl_call_c2c_decode_stats_i_fifodata(implicit_input_q),
        .in_iord_bl_call_c2c_decode_stats_i_fifovalid(start),
        .in_iowr_bl_return_c2c_decode_stats_i_fifoready(not_stall_q),
        .in_lm10432_c2c_decode_stats_avm_readdata(avm_lm10432_c2c_decode_stats_readdata),
        .in_lm10432_c2c_decode_stats_avm_readdatavalid(avm_lm10432_c2c_decode_stats_readdatavalid),
        .in_lm10432_c2c_decode_stats_avm_waitrequest(avm_lm10432_c2c_decode_stats_waitrequest),
        .in_lm10432_c2c_decode_stats_avm_writeack(avm_lm10432_c2c_decode_stats_writeack),
        .in_lm10633_c2c_decode_stats_avm_readdata(avm_lm10633_c2c_decode_stats_readdata),
        .in_lm10633_c2c_decode_stats_avm_readdatavalid(avm_lm10633_c2c_decode_stats_readdatavalid),
        .in_lm10633_c2c_decode_stats_avm_waitrequest(avm_lm10633_c2c_decode_stats_waitrequest),
        .in_lm10633_c2c_decode_stats_avm_writeack(avm_lm10633_c2c_decode_stats_writeack),
        .in_lm11134_c2c_decode_stats_avm_readdata(avm_lm11134_c2c_decode_stats_readdata),
        .in_lm11134_c2c_decode_stats_avm_readdatavalid(avm_lm11134_c2c_decode_stats_readdatavalid),
        .in_lm11134_c2c_decode_stats_avm_waitrequest(avm_lm11134_c2c_decode_stats_waitrequest),
        .in_lm11134_c2c_decode_stats_avm_writeack(avm_lm11134_c2c_decode_stats_writeack),
        .in_lm12335_c2c_decode_stats_avm_readdata(avm_lm12335_c2c_decode_stats_readdata),
        .in_lm12335_c2c_decode_stats_avm_readdatavalid(avm_lm12335_c2c_decode_stats_readdatavalid),
        .in_lm12335_c2c_decode_stats_avm_waitrequest(avm_lm12335_c2c_decode_stats_waitrequest),
        .in_lm12335_c2c_decode_stats_avm_writeack(avm_lm12335_c2c_decode_stats_writeack),
        .in_lm12737_c2c_decode_stats_avm_readdata(avm_lm12737_c2c_decode_stats_readdata),
        .in_lm12737_c2c_decode_stats_avm_readdatavalid(avm_lm12737_c2c_decode_stats_readdatavalid),
        .in_lm12737_c2c_decode_stats_avm_waitrequest(avm_lm12737_c2c_decode_stats_waitrequest),
        .in_lm12737_c2c_decode_stats_avm_writeack(avm_lm12737_c2c_decode_stats_writeack),
        .in_lm13238_c2c_decode_stats_avm_readdata(avm_lm13238_c2c_decode_stats_readdata),
        .in_lm13238_c2c_decode_stats_avm_readdatavalid(avm_lm13238_c2c_decode_stats_readdatavalid),
        .in_lm13238_c2c_decode_stats_avm_waitrequest(avm_lm13238_c2c_decode_stats_waitrequest),
        .in_lm13238_c2c_decode_stats_avm_writeack(avm_lm13238_c2c_decode_stats_writeack),
        .in_lm1521_c2c_decode_stats_avm_readdata(avm_lm1521_c2c_decode_stats_readdata),
        .in_lm1521_c2c_decode_stats_avm_readdatavalid(avm_lm1521_c2c_decode_stats_readdatavalid),
        .in_lm1521_c2c_decode_stats_avm_waitrequest(avm_lm1521_c2c_decode_stats_waitrequest),
        .in_lm1521_c2c_decode_stats_avm_writeack(avm_lm1521_c2c_decode_stats_writeack),
        .in_lm17044_c2c_decode_stats_avm_readdata(avm_lm17044_c2c_decode_stats_readdata),
        .in_lm17044_c2c_decode_stats_avm_readdatavalid(avm_lm17044_c2c_decode_stats_readdatavalid),
        .in_lm17044_c2c_decode_stats_avm_waitrequest(avm_lm17044_c2c_decode_stats_waitrequest),
        .in_lm17044_c2c_decode_stats_avm_writeack(avm_lm17044_c2c_decode_stats_writeack),
        .in_lm19750_c2c_decode_stats_avm_readdata(avm_lm19750_c2c_decode_stats_readdata),
        .in_lm19750_c2c_decode_stats_avm_readdatavalid(avm_lm19750_c2c_decode_stats_readdatavalid),
        .in_lm19750_c2c_decode_stats_avm_waitrequest(avm_lm19750_c2c_decode_stats_waitrequest),
        .in_lm19750_c2c_decode_stats_avm_writeack(avm_lm19750_c2c_decode_stats_writeack),
        .in_lm20351_c2c_decode_stats_avm_readdata(avm_lm20351_c2c_decode_stats_readdata),
        .in_lm20351_c2c_decode_stats_avm_readdatavalid(avm_lm20351_c2c_decode_stats_readdatavalid),
        .in_lm20351_c2c_decode_stats_avm_waitrequest(avm_lm20351_c2c_decode_stats_waitrequest),
        .in_lm20351_c2c_decode_stats_avm_writeack(avm_lm20351_c2c_decode_stats_writeack),
        .in_lm20_c2c_decode_stats_avm_readdata(avm_lm20_c2c_decode_stats_readdata),
        .in_lm20_c2c_decode_stats_avm_readdatavalid(avm_lm20_c2c_decode_stats_readdatavalid),
        .in_lm20_c2c_decode_stats_avm_waitrequest(avm_lm20_c2c_decode_stats_waitrequest),
        .in_lm20_c2c_decode_stats_avm_writeack(avm_lm20_c2c_decode_stats_writeack),
        .in_lm2722_c2c_decode_stats_avm_readdata(avm_lm2722_c2c_decode_stats_readdata),
        .in_lm2722_c2c_decode_stats_avm_readdatavalid(avm_lm2722_c2c_decode_stats_readdatavalid),
        .in_lm2722_c2c_decode_stats_avm_waitrequest(avm_lm2722_c2c_decode_stats_waitrequest),
        .in_lm2722_c2c_decode_stats_avm_writeack(avm_lm2722_c2c_decode_stats_writeack),
        .in_lm3923_c2c_decode_stats_avm_readdata(avm_lm3923_c2c_decode_stats_readdata),
        .in_lm3923_c2c_decode_stats_avm_readdatavalid(avm_lm3923_c2c_decode_stats_readdatavalid),
        .in_lm3923_c2c_decode_stats_avm_waitrequest(avm_lm3923_c2c_decode_stats_waitrequest),
        .in_lm3923_c2c_decode_stats_avm_writeack(avm_lm3923_c2c_decode_stats_writeack),
        .in_lm4924_c2c_decode_stats_avm_readdata(avm_lm4924_c2c_decode_stats_readdata),
        .in_lm4924_c2c_decode_stats_avm_readdatavalid(avm_lm4924_c2c_decode_stats_readdatavalid),
        .in_lm4924_c2c_decode_stats_avm_waitrequest(avm_lm4924_c2c_decode_stats_waitrequest),
        .in_lm4924_c2c_decode_stats_avm_writeack(avm_lm4924_c2c_decode_stats_writeack),
        .in_lm5725_c2c_decode_stats_avm_readdata(avm_lm5725_c2c_decode_stats_readdata),
        .in_lm5725_c2c_decode_stats_avm_readdatavalid(avm_lm5725_c2c_decode_stats_readdatavalid),
        .in_lm5725_c2c_decode_stats_avm_waitrequest(avm_lm5725_c2c_decode_stats_waitrequest),
        .in_lm5725_c2c_decode_stats_avm_writeack(avm_lm5725_c2c_decode_stats_writeack),
        .in_lm6426_c2c_decode_stats_avm_readdata(avm_lm6426_c2c_decode_stats_readdata),
        .in_lm6426_c2c_decode_stats_avm_readdatavalid(avm_lm6426_c2c_decode_stats_readdatavalid),
        .in_lm6426_c2c_decode_stats_avm_waitrequest(avm_lm6426_c2c_decode_stats_waitrequest),
        .in_lm6426_c2c_decode_stats_avm_writeack(avm_lm6426_c2c_decode_stats_writeack),
        .in_lm7227_c2c_decode_stats_avm_readdata(avm_lm7227_c2c_decode_stats_readdata),
        .in_lm7227_c2c_decode_stats_avm_readdatavalid(avm_lm7227_c2c_decode_stats_readdatavalid),
        .in_lm7227_c2c_decode_stats_avm_waitrequest(avm_lm7227_c2c_decode_stats_waitrequest),
        .in_lm7227_c2c_decode_stats_avm_writeack(avm_lm7227_c2c_decode_stats_writeack),
        .in_lm7928_c2c_decode_stats_avm_readdata(avm_lm7928_c2c_decode_stats_readdata),
        .in_lm7928_c2c_decode_stats_avm_readdatavalid(avm_lm7928_c2c_decode_stats_readdatavalid),
        .in_lm7928_c2c_decode_stats_avm_waitrequest(avm_lm7928_c2c_decode_stats_waitrequest),
        .in_lm7928_c2c_decode_stats_avm_writeack(avm_lm7928_c2c_decode_stats_writeack),
        .in_lm8629_c2c_decode_stats_avm_readdata(avm_lm8629_c2c_decode_stats_readdata),
        .in_lm8629_c2c_decode_stats_avm_readdatavalid(avm_lm8629_c2c_decode_stats_readdatavalid),
        .in_lm8629_c2c_decode_stats_avm_waitrequest(avm_lm8629_c2c_decode_stats_waitrequest),
        .in_lm8629_c2c_decode_stats_avm_writeack(avm_lm8629_c2c_decode_stats_writeack),
        .in_lm9730_c2c_decode_stats_avm_readdata(avm_lm9730_c2c_decode_stats_readdata),
        .in_lm9730_c2c_decode_stats_avm_readdatavalid(avm_lm9730_c2c_decode_stats_readdatavalid),
        .in_lm9730_c2c_decode_stats_avm_waitrequest(avm_lm9730_c2c_decode_stats_waitrequest),
        .in_lm9730_c2c_decode_stats_avm_writeack(avm_lm9730_c2c_decode_stats_writeack),
        .in_lm9931_c2c_decode_stats_avm_readdata(avm_lm9931_c2c_decode_stats_readdata),
        .in_lm9931_c2c_decode_stats_avm_readdatavalid(avm_lm9931_c2c_decode_stats_readdatavalid),
        .in_lm9931_c2c_decode_stats_avm_waitrequest(avm_lm9931_c2c_decode_stats_waitrequest),
        .in_lm9931_c2c_decode_stats_avm_writeack(avm_lm9931_c2c_decode_stats_writeack),
        .in_memdep_19_c2c_decode_stats_avm_readdata(avm_memdep_19_c2c_decode_stats_readdata),
        .in_memdep_19_c2c_decode_stats_avm_readdatavalid(avm_memdep_19_c2c_decode_stats_readdatavalid),
        .in_memdep_19_c2c_decode_stats_avm_waitrequest(avm_memdep_19_c2c_decode_stats_waitrequest),
        .in_memdep_19_c2c_decode_stats_avm_writeack(avm_memdep_19_c2c_decode_stats_writeack),
        .in_memdep_42818_c2c_decode_stats_avm_readdata(avm_memdep_42818_c2c_decode_stats_readdata),
        .in_memdep_42818_c2c_decode_stats_avm_readdatavalid(avm_memdep_42818_c2c_decode_stats_readdatavalid),
        .in_memdep_42818_c2c_decode_stats_avm_waitrequest(avm_memdep_42818_c2c_decode_stats_waitrequest),
        .in_memdep_42818_c2c_decode_stats_avm_writeack(avm_memdep_42818_c2c_decode_stats_writeack),
        .in_memdep_42917_c2c_decode_stats_avm_readdata(avm_memdep_42917_c2c_decode_stats_readdata),
        .in_memdep_42917_c2c_decode_stats_avm_readdatavalid(avm_memdep_42917_c2c_decode_stats_readdatavalid),
        .in_memdep_42917_c2c_decode_stats_avm_waitrequest(avm_memdep_42917_c2c_decode_stats_waitrequest),
        .in_memdep_42917_c2c_decode_stats_avm_writeack(avm_memdep_42917_c2c_decode_stats_writeack),
        .in_memdep_43016_c2c_decode_stats_avm_readdata(avm_memdep_43016_c2c_decode_stats_readdata),
        .in_memdep_43016_c2c_decode_stats_avm_readdatavalid(avm_memdep_43016_c2c_decode_stats_readdatavalid),
        .in_memdep_43016_c2c_decode_stats_avm_waitrequest(avm_memdep_43016_c2c_decode_stats_waitrequest),
        .in_memdep_43016_c2c_decode_stats_avm_writeack(avm_memdep_43016_c2c_decode_stats_writeack),
        .in_memdep_43115_c2c_decode_stats_avm_readdata(avm_memdep_43115_c2c_decode_stats_readdata),
        .in_memdep_43115_c2c_decode_stats_avm_readdatavalid(avm_memdep_43115_c2c_decode_stats_readdatavalid),
        .in_memdep_43115_c2c_decode_stats_avm_waitrequest(avm_memdep_43115_c2c_decode_stats_waitrequest),
        .in_memdep_43115_c2c_decode_stats_avm_writeack(avm_memdep_43115_c2c_decode_stats_writeack),
        .in_memdep_43214_c2c_decode_stats_avm_readdata(avm_memdep_43214_c2c_decode_stats_readdata),
        .in_memdep_43214_c2c_decode_stats_avm_readdatavalid(avm_memdep_43214_c2c_decode_stats_readdatavalid),
        .in_memdep_43214_c2c_decode_stats_avm_waitrequest(avm_memdep_43214_c2c_decode_stats_waitrequest),
        .in_memdep_43214_c2c_decode_stats_avm_writeack(avm_memdep_43214_c2c_decode_stats_writeack),
        .in_memdep_43313_c2c_decode_stats_avm_readdata(avm_memdep_43313_c2c_decode_stats_readdata),
        .in_memdep_43313_c2c_decode_stats_avm_readdatavalid(avm_memdep_43313_c2c_decode_stats_readdatavalid),
        .in_memdep_43313_c2c_decode_stats_avm_waitrequest(avm_memdep_43313_c2c_decode_stats_waitrequest),
        .in_memdep_43313_c2c_decode_stats_avm_writeack(avm_memdep_43313_c2c_decode_stats_writeack),
        .in_memdep_43412_c2c_decode_stats_avm_readdata(avm_memdep_43412_c2c_decode_stats_readdata),
        .in_memdep_43412_c2c_decode_stats_avm_readdatavalid(avm_memdep_43412_c2c_decode_stats_readdatavalid),
        .in_memdep_43412_c2c_decode_stats_avm_waitrequest(avm_memdep_43412_c2c_decode_stats_waitrequest),
        .in_memdep_43412_c2c_decode_stats_avm_writeack(avm_memdep_43412_c2c_decode_stats_writeack),
        .in_memdep_43511_c2c_decode_stats_avm_readdata(avm_memdep_43511_c2c_decode_stats_readdata),
        .in_memdep_43511_c2c_decode_stats_avm_readdatavalid(avm_memdep_43511_c2c_decode_stats_readdatavalid),
        .in_memdep_43511_c2c_decode_stats_avm_waitrequest(avm_memdep_43511_c2c_decode_stats_waitrequest),
        .in_memdep_43511_c2c_decode_stats_avm_writeack(avm_memdep_43511_c2c_decode_stats_writeack),
        .in_memdep_43610_c2c_decode_stats_avm_readdata(avm_memdep_43610_c2c_decode_stats_readdata),
        .in_memdep_43610_c2c_decode_stats_avm_readdatavalid(avm_memdep_43610_c2c_decode_stats_readdatavalid),
        .in_memdep_43610_c2c_decode_stats_avm_waitrequest(avm_memdep_43610_c2c_decode_stats_waitrequest),
        .in_memdep_43610_c2c_decode_stats_avm_writeack(avm_memdep_43610_c2c_decode_stats_writeack),
        .in_memdep_4379_c2c_decode_stats_avm_readdata(avm_memdep_4379_c2c_decode_stats_readdata),
        .in_memdep_4379_c2c_decode_stats_avm_readdatavalid(avm_memdep_4379_c2c_decode_stats_readdatavalid),
        .in_memdep_4379_c2c_decode_stats_avm_waitrequest(avm_memdep_4379_c2c_decode_stats_waitrequest),
        .in_memdep_4379_c2c_decode_stats_avm_writeack(avm_memdep_4379_c2c_decode_stats_writeack),
        .in_memdep_4388_c2c_decode_stats_avm_readdata(avm_memdep_4388_c2c_decode_stats_readdata),
        .in_memdep_4388_c2c_decode_stats_avm_readdatavalid(avm_memdep_4388_c2c_decode_stats_readdatavalid),
        .in_memdep_4388_c2c_decode_stats_avm_waitrequest(avm_memdep_4388_c2c_decode_stats_waitrequest),
        .in_memdep_4388_c2c_decode_stats_avm_writeack(avm_memdep_4388_c2c_decode_stats_writeack),
        .in_memdep_4397_c2c_decode_stats_avm_readdata(avm_memdep_4397_c2c_decode_stats_readdata),
        .in_memdep_4397_c2c_decode_stats_avm_readdatavalid(avm_memdep_4397_c2c_decode_stats_readdatavalid),
        .in_memdep_4397_c2c_decode_stats_avm_waitrequest(avm_memdep_4397_c2c_decode_stats_waitrequest),
        .in_memdep_4397_c2c_decode_stats_avm_writeack(avm_memdep_4397_c2c_decode_stats_writeack),
        .in_memdep_4406_c2c_decode_stats_avm_readdata(avm_memdep_4406_c2c_decode_stats_readdata),
        .in_memdep_4406_c2c_decode_stats_avm_readdatavalid(avm_memdep_4406_c2c_decode_stats_readdatavalid),
        .in_memdep_4406_c2c_decode_stats_avm_waitrequest(avm_memdep_4406_c2c_decode_stats_waitrequest),
        .in_memdep_4406_c2c_decode_stats_avm_writeack(avm_memdep_4406_c2c_decode_stats_writeack),
        .in_memdep_4415_c2c_decode_stats_avm_readdata(avm_memdep_4415_c2c_decode_stats_readdata),
        .in_memdep_4415_c2c_decode_stats_avm_readdatavalid(avm_memdep_4415_c2c_decode_stats_readdatavalid),
        .in_memdep_4415_c2c_decode_stats_avm_waitrequest(avm_memdep_4415_c2c_decode_stats_waitrequest),
        .in_memdep_4415_c2c_decode_stats_avm_writeack(avm_memdep_4415_c2c_decode_stats_writeack),
        .in_memdep_4424_c2c_decode_stats_avm_readdata(avm_memdep_4424_c2c_decode_stats_readdata),
        .in_memdep_4424_c2c_decode_stats_avm_readdatavalid(avm_memdep_4424_c2c_decode_stats_readdatavalid),
        .in_memdep_4424_c2c_decode_stats_avm_waitrequest(avm_memdep_4424_c2c_decode_stats_waitrequest),
        .in_memdep_4424_c2c_decode_stats_avm_writeack(avm_memdep_4424_c2c_decode_stats_writeack),
        .in_memdep_4433_c2c_decode_stats_avm_readdata(avm_memdep_4433_c2c_decode_stats_readdata),
        .in_memdep_4433_c2c_decode_stats_avm_readdatavalid(avm_memdep_4433_c2c_decode_stats_readdatavalid),
        .in_memdep_4433_c2c_decode_stats_avm_waitrequest(avm_memdep_4433_c2c_decode_stats_waitrequest),
        .in_memdep_4433_c2c_decode_stats_avm_writeack(avm_memdep_4433_c2c_decode_stats_writeack),
        .in_memdep_4442_c2c_decode_stats_avm_readdata(avm_memdep_4442_c2c_decode_stats_readdata),
        .in_memdep_4442_c2c_decode_stats_avm_readdatavalid(avm_memdep_4442_c2c_decode_stats_readdatavalid),
        .in_memdep_4442_c2c_decode_stats_avm_waitrequest(avm_memdep_4442_c2c_decode_stats_waitrequest),
        .in_memdep_4442_c2c_decode_stats_avm_writeack(avm_memdep_4442_c2c_decode_stats_writeack),
        .in_ml23049_c2c_decode_stats_avm_readdata(avm_ml23049_c2c_decode_stats_readdata),
        .in_ml23049_c2c_decode_stats_avm_readdatavalid(avm_ml23049_c2c_decode_stats_readdatavalid),
        .in_ml23049_c2c_decode_stats_avm_waitrequest(avm_ml23049_c2c_decode_stats_waitrequest),
        .in_ml23049_c2c_decode_stats_avm_writeack(avm_ml23049_c2c_decode_stats_writeack),
        .in_ml23348_c2c_decode_stats_avm_readdata(avm_ml23348_c2c_decode_stats_readdata),
        .in_ml23348_c2c_decode_stats_avm_readdatavalid(avm_ml23348_c2c_decode_stats_readdatavalid),
        .in_ml23348_c2c_decode_stats_avm_waitrequest(avm_ml23348_c2c_decode_stats_waitrequest),
        .in_ml23348_c2c_decode_stats_avm_writeack(avm_ml23348_c2c_decode_stats_writeack),
        .in_ml24247_c2c_decode_stats_avm_readdata(avm_ml24247_c2c_decode_stats_readdata),
        .in_ml24247_c2c_decode_stats_avm_readdatavalid(avm_ml24247_c2c_decode_stats_readdatavalid),
        .in_ml24247_c2c_decode_stats_avm_waitrequest(avm_ml24247_c2c_decode_stats_waitrequest),
        .in_ml24247_c2c_decode_stats_avm_writeack(avm_ml24247_c2c_decode_stats_writeack),
        .in_ml24846_c2c_decode_stats_avm_readdata(avm_ml24846_c2c_decode_stats_readdata),
        .in_ml24846_c2c_decode_stats_avm_readdatavalid(avm_ml24846_c2c_decode_stats_readdatavalid),
        .in_ml24846_c2c_decode_stats_avm_waitrequest(avm_ml24846_c2c_decode_stats_waitrequest),
        .in_ml24846_c2c_decode_stats_avm_writeack(avm_ml24846_c2c_decode_stats_writeack),
        .in_ml25145_c2c_decode_stats_avm_readdata(avm_ml25145_c2c_decode_stats_readdata),
        .in_ml25145_c2c_decode_stats_avm_readdatavalid(avm_ml25145_c2c_decode_stats_readdatavalid),
        .in_ml25145_c2c_decode_stats_avm_waitrequest(avm_ml25145_c2c_decode_stats_waitrequest),
        .in_ml25145_c2c_decode_stats_avm_writeack(avm_ml25145_c2c_decode_stats_writeack),
        .in_ml26343_c2c_decode_stats_avm_readdata(avm_ml26343_c2c_decode_stats_readdata),
        .in_ml26343_c2c_decode_stats_avm_readdatavalid(avm_ml26343_c2c_decode_stats_readdatavalid),
        .in_ml26343_c2c_decode_stats_avm_waitrequest(avm_ml26343_c2c_decode_stats_waitrequest),
        .in_ml26343_c2c_decode_stats_avm_writeack(avm_ml26343_c2c_decode_stats_writeack),
        .in_ml26642_c2c_decode_stats_avm_readdata(avm_ml26642_c2c_decode_stats_readdata),
        .in_ml26642_c2c_decode_stats_avm_readdatavalid(avm_ml26642_c2c_decode_stats_readdatavalid),
        .in_ml26642_c2c_decode_stats_avm_waitrequest(avm_ml26642_c2c_decode_stats_waitrequest),
        .in_ml26642_c2c_decode_stats_avm_writeack(avm_ml26642_c2c_decode_stats_writeack),
        .in_ml26941_c2c_decode_stats_avm_readdata(avm_ml26941_c2c_decode_stats_readdata),
        .in_ml26941_c2c_decode_stats_avm_readdatavalid(avm_ml26941_c2c_decode_stats_readdatavalid),
        .in_ml26941_c2c_decode_stats_avm_waitrequest(avm_ml26941_c2c_decode_stats_waitrequest),
        .in_ml26941_c2c_decode_stats_avm_writeack(avm_ml26941_c2c_decode_stats_writeack),
        .in_ml28140_c2c_decode_stats_avm_readdata(avm_ml28140_c2c_decode_stats_readdata),
        .in_ml28140_c2c_decode_stats_avm_readdatavalid(avm_ml28140_c2c_decode_stats_readdatavalid),
        .in_ml28140_c2c_decode_stats_avm_waitrequest(avm_ml28140_c2c_decode_stats_waitrequest),
        .in_ml28140_c2c_decode_stats_avm_writeack(avm_ml28140_c2c_decode_stats_writeack),
        .in_ml28439_c2c_decode_stats_avm_readdata(avm_ml28439_c2c_decode_stats_readdata),
        .in_ml28439_c2c_decode_stats_avm_readdatavalid(avm_ml28439_c2c_decode_stats_readdatavalid),
        .in_ml28439_c2c_decode_stats_avm_waitrequest(avm_ml28439_c2c_decode_stats_waitrequest),
        .in_ml28439_c2c_decode_stats_avm_writeack(avm_ml28439_c2c_decode_stats_writeack),
        .in_ml29036_c2c_decode_stats_avm_readdata(avm_ml29036_c2c_decode_stats_readdata),
        .in_ml29036_c2c_decode_stats_avm_readdatavalid(avm_ml29036_c2c_decode_stats_readdatavalid),
        .in_ml29036_c2c_decode_stats_avm_waitrequest(avm_ml29036_c2c_decode_stats_waitrequest),
        .in_ml29036_c2c_decode_stats_avm_writeack(avm_ml29036_c2c_decode_stats_writeack),
        .in_ml52_c2c_decode_stats_avm_readdata(avm_ml52_c2c_decode_stats_readdata),
        .in_ml52_c2c_decode_stats_avm_readdatavalid(avm_ml52_c2c_decode_stats_readdatavalid),
        .in_ml52_c2c_decode_stats_avm_waitrequest(avm_ml52_c2c_decode_stats_waitrequest),
        .in_ml52_c2c_decode_stats_avm_writeack(avm_ml52_c2c_decode_stats_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_readdata(avm_unnamed_c2c_decode_stats1_c2c_decode_stats_readdata),
        .in_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_readdatavalid(avm_unnamed_c2c_decode_stats1_c2c_decode_stats_readdatavalid),
        .in_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_waitrequest(avm_unnamed_c2c_decode_stats1_c2c_decode_stats_waitrequest),
        .in_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_writeack(avm_unnamed_c2c_decode_stats1_c2c_decode_stats_writeack),
        .in_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_readdata(avm_unnamed_c2c_decode_stats2_c2c_decode_stats_readdata),
        .in_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_readdatavalid(avm_unnamed_c2c_decode_stats2_c2c_decode_stats_readdatavalid),
        .in_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_waitrequest(avm_unnamed_c2c_decode_stats2_c2c_decode_stats_waitrequest),
        .in_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_writeack(avm_unnamed_c2c_decode_stats2_c2c_decode_stats_writeack),
        .in_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_readdata(avm_unnamed_c2c_decode_stats3_c2c_decode_stats_readdata),
        .in_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_readdatavalid(avm_unnamed_c2c_decode_stats3_c2c_decode_stats_readdatavalid),
        .in_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_waitrequest(avm_unnamed_c2c_decode_stats3_c2c_decode_stats_waitrequest),
        .in_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_writeack(avm_unnamed_c2c_decode_stats3_c2c_decode_stats_writeack),
        .in_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_readdata(avm_unnamed_c2c_decode_stats4_c2c_decode_stats_readdata),
        .in_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_readdatavalid(avm_unnamed_c2c_decode_stats4_c2c_decode_stats_readdatavalid),
        .in_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_waitrequest(avm_unnamed_c2c_decode_stats4_c2c_decode_stats_waitrequest),
        .in_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_writeack(avm_unnamed_c2c_decode_stats4_c2c_decode_stats_writeack),
        .in_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_readdata(avm_unnamed_c2c_decode_stats5_c2c_decode_stats_readdata),
        .in_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_readdatavalid(avm_unnamed_c2c_decode_stats5_c2c_decode_stats_readdatavalid),
        .in_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_waitrequest(avm_unnamed_c2c_decode_stats5_c2c_decode_stats_waitrequest),
        .in_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_writeack(avm_unnamed_c2c_decode_stats5_c2c_decode_stats_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_c2c_decode_stats_o_fifoready(c2c_decode_stats_function_out_iord_bl_call_c2c_decode_stats_o_fifoready),
        .out_iowr_bl_return_c2c_decode_stats_o_fifodata(c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifodata),
        .out_iowr_bl_return_c2c_decode_stats_o_fifovalid(c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifovalid),
        .out_lm10432_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_address),
        .out_lm10432_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_burstcount),
        .out_lm10432_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_byteenable),
        .out_lm10432_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_enable),
        .out_lm10432_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_read),
        .out_lm10432_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_write),
        .out_lm10432_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_writedata),
        .out_lm10633_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_address),
        .out_lm10633_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_burstcount),
        .out_lm10633_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_byteenable),
        .out_lm10633_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_enable),
        .out_lm10633_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_read),
        .out_lm10633_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_write),
        .out_lm10633_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_writedata),
        .out_lm11134_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_address),
        .out_lm11134_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_burstcount),
        .out_lm11134_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_byteenable),
        .out_lm11134_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_enable),
        .out_lm11134_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_read),
        .out_lm11134_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_write),
        .out_lm11134_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_writedata),
        .out_lm12335_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_address),
        .out_lm12335_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_burstcount),
        .out_lm12335_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_byteenable),
        .out_lm12335_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_enable),
        .out_lm12335_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_read),
        .out_lm12335_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_write),
        .out_lm12335_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_writedata),
        .out_lm12737_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_address),
        .out_lm12737_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_burstcount),
        .out_lm12737_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_byteenable),
        .out_lm12737_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_enable),
        .out_lm12737_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_read),
        .out_lm12737_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_write),
        .out_lm12737_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_writedata),
        .out_lm13238_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_address),
        .out_lm13238_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_burstcount),
        .out_lm13238_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_byteenable),
        .out_lm13238_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_enable),
        .out_lm13238_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_read),
        .out_lm13238_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_write),
        .out_lm13238_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_writedata),
        .out_lm1521_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_address),
        .out_lm1521_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_burstcount),
        .out_lm1521_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_byteenable),
        .out_lm1521_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_enable),
        .out_lm1521_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_read),
        .out_lm1521_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_write),
        .out_lm1521_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_writedata),
        .out_lm17044_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_address),
        .out_lm17044_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_burstcount),
        .out_lm17044_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_byteenable),
        .out_lm17044_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_enable),
        .out_lm17044_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_read),
        .out_lm17044_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_write),
        .out_lm17044_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_writedata),
        .out_lm19750_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_address),
        .out_lm19750_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_burstcount),
        .out_lm19750_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_byteenable),
        .out_lm19750_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_enable),
        .out_lm19750_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_read),
        .out_lm19750_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_write),
        .out_lm19750_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_writedata),
        .out_lm20351_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_address),
        .out_lm20351_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_burstcount),
        .out_lm20351_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_byteenable),
        .out_lm20351_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_enable),
        .out_lm20351_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_read),
        .out_lm20351_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_write),
        .out_lm20351_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_writedata),
        .out_lm20_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_address),
        .out_lm20_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_burstcount),
        .out_lm20_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_byteenable),
        .out_lm20_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_enable),
        .out_lm20_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_read),
        .out_lm20_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_write),
        .out_lm20_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_writedata),
        .out_lm2722_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_address),
        .out_lm2722_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_burstcount),
        .out_lm2722_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_byteenable),
        .out_lm2722_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_enable),
        .out_lm2722_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_read),
        .out_lm2722_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_write),
        .out_lm2722_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_writedata),
        .out_lm3923_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_address),
        .out_lm3923_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_burstcount),
        .out_lm3923_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_byteenable),
        .out_lm3923_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_enable),
        .out_lm3923_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_read),
        .out_lm3923_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_write),
        .out_lm3923_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_writedata),
        .out_lm4924_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_address),
        .out_lm4924_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_burstcount),
        .out_lm4924_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_byteenable),
        .out_lm4924_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_enable),
        .out_lm4924_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_read),
        .out_lm4924_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_write),
        .out_lm4924_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_writedata),
        .out_lm5725_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_address),
        .out_lm5725_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_burstcount),
        .out_lm5725_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_byteenable),
        .out_lm5725_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_enable),
        .out_lm5725_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_read),
        .out_lm5725_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_write),
        .out_lm5725_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_writedata),
        .out_lm6426_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_address),
        .out_lm6426_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_burstcount),
        .out_lm6426_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_byteenable),
        .out_lm6426_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_enable),
        .out_lm6426_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_read),
        .out_lm6426_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_write),
        .out_lm6426_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_writedata),
        .out_lm7227_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_address),
        .out_lm7227_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_burstcount),
        .out_lm7227_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_byteenable),
        .out_lm7227_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_enable),
        .out_lm7227_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_read),
        .out_lm7227_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_write),
        .out_lm7227_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_writedata),
        .out_lm7928_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_address),
        .out_lm7928_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_burstcount),
        .out_lm7928_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_byteenable),
        .out_lm7928_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_enable),
        .out_lm7928_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_read),
        .out_lm7928_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_write),
        .out_lm7928_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_writedata),
        .out_lm8629_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_address),
        .out_lm8629_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_burstcount),
        .out_lm8629_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_byteenable),
        .out_lm8629_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_enable),
        .out_lm8629_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_read),
        .out_lm8629_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_write),
        .out_lm8629_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_writedata),
        .out_lm9730_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_address),
        .out_lm9730_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_burstcount),
        .out_lm9730_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_byteenable),
        .out_lm9730_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_enable),
        .out_lm9730_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_read),
        .out_lm9730_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_write),
        .out_lm9730_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_writedata),
        .out_lm9931_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_address),
        .out_lm9931_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_burstcount),
        .out_lm9931_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_byteenable),
        .out_lm9931_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_enable),
        .out_lm9931_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_read),
        .out_lm9931_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_write),
        .out_lm9931_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_writedata),
        .out_memdep_19_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_address),
        .out_memdep_19_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_burstcount),
        .out_memdep_19_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_byteenable),
        .out_memdep_19_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_enable),
        .out_memdep_19_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_read),
        .out_memdep_19_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_write),
        .out_memdep_19_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_writedata),
        .out_memdep_42818_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_address),
        .out_memdep_42818_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_burstcount),
        .out_memdep_42818_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_byteenable),
        .out_memdep_42818_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_enable),
        .out_memdep_42818_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_read),
        .out_memdep_42818_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_write),
        .out_memdep_42818_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_writedata),
        .out_memdep_42917_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_address),
        .out_memdep_42917_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_burstcount),
        .out_memdep_42917_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_byteenable),
        .out_memdep_42917_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_enable),
        .out_memdep_42917_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_read),
        .out_memdep_42917_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_write),
        .out_memdep_42917_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_writedata),
        .out_memdep_43016_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_address),
        .out_memdep_43016_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_burstcount),
        .out_memdep_43016_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_byteenable),
        .out_memdep_43016_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_enable),
        .out_memdep_43016_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_read),
        .out_memdep_43016_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_write),
        .out_memdep_43016_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_writedata),
        .out_memdep_43115_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_address),
        .out_memdep_43115_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_burstcount),
        .out_memdep_43115_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_byteenable),
        .out_memdep_43115_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_enable),
        .out_memdep_43115_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_read),
        .out_memdep_43115_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_write),
        .out_memdep_43115_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_writedata),
        .out_memdep_43214_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_address),
        .out_memdep_43214_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_burstcount),
        .out_memdep_43214_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_byteenable),
        .out_memdep_43214_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_enable),
        .out_memdep_43214_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_read),
        .out_memdep_43214_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_write),
        .out_memdep_43214_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_writedata),
        .out_memdep_43313_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_address),
        .out_memdep_43313_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_burstcount),
        .out_memdep_43313_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_byteenable),
        .out_memdep_43313_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_enable),
        .out_memdep_43313_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_read),
        .out_memdep_43313_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_write),
        .out_memdep_43313_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_writedata),
        .out_memdep_43412_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_address),
        .out_memdep_43412_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_burstcount),
        .out_memdep_43412_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_byteenable),
        .out_memdep_43412_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_enable),
        .out_memdep_43412_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_read),
        .out_memdep_43412_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_write),
        .out_memdep_43412_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_writedata),
        .out_memdep_43511_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_address),
        .out_memdep_43511_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_burstcount),
        .out_memdep_43511_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_byteenable),
        .out_memdep_43511_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_enable),
        .out_memdep_43511_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_read),
        .out_memdep_43511_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_write),
        .out_memdep_43511_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_writedata),
        .out_memdep_43610_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_address),
        .out_memdep_43610_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_burstcount),
        .out_memdep_43610_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_byteenable),
        .out_memdep_43610_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_enable),
        .out_memdep_43610_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_read),
        .out_memdep_43610_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_write),
        .out_memdep_43610_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_writedata),
        .out_memdep_4379_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_address),
        .out_memdep_4379_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_burstcount),
        .out_memdep_4379_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_byteenable),
        .out_memdep_4379_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_enable),
        .out_memdep_4379_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_read),
        .out_memdep_4379_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_write),
        .out_memdep_4379_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_writedata),
        .out_memdep_4388_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_address),
        .out_memdep_4388_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_burstcount),
        .out_memdep_4388_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_byteenable),
        .out_memdep_4388_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_enable),
        .out_memdep_4388_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_read),
        .out_memdep_4388_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_write),
        .out_memdep_4388_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_writedata),
        .out_memdep_4397_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_address),
        .out_memdep_4397_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_burstcount),
        .out_memdep_4397_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_byteenable),
        .out_memdep_4397_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_enable),
        .out_memdep_4397_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_read),
        .out_memdep_4397_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_write),
        .out_memdep_4397_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_writedata),
        .out_memdep_4406_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_address),
        .out_memdep_4406_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_burstcount),
        .out_memdep_4406_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_byteenable),
        .out_memdep_4406_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_enable),
        .out_memdep_4406_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_read),
        .out_memdep_4406_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_write),
        .out_memdep_4406_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_writedata),
        .out_memdep_4415_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_address),
        .out_memdep_4415_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_burstcount),
        .out_memdep_4415_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_byteenable),
        .out_memdep_4415_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_enable),
        .out_memdep_4415_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_read),
        .out_memdep_4415_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_write),
        .out_memdep_4415_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_writedata),
        .out_memdep_4424_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_address),
        .out_memdep_4424_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_burstcount),
        .out_memdep_4424_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_byteenable),
        .out_memdep_4424_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_enable),
        .out_memdep_4424_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_read),
        .out_memdep_4424_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_write),
        .out_memdep_4424_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_writedata),
        .out_memdep_4433_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_address),
        .out_memdep_4433_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_burstcount),
        .out_memdep_4433_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_byteenable),
        .out_memdep_4433_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_enable),
        .out_memdep_4433_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_read),
        .out_memdep_4433_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_write),
        .out_memdep_4433_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_writedata),
        .out_memdep_4442_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_address),
        .out_memdep_4442_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_burstcount),
        .out_memdep_4442_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_byteenable),
        .out_memdep_4442_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_enable),
        .out_memdep_4442_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_read),
        .out_memdep_4442_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_write),
        .out_memdep_4442_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_writedata),
        .out_ml23049_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_address),
        .out_ml23049_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_burstcount),
        .out_ml23049_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_byteenable),
        .out_ml23049_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_enable),
        .out_ml23049_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_read),
        .out_ml23049_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_write),
        .out_ml23049_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_writedata),
        .out_ml23348_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_address),
        .out_ml23348_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_burstcount),
        .out_ml23348_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_byteenable),
        .out_ml23348_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_enable),
        .out_ml23348_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_read),
        .out_ml23348_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_write),
        .out_ml23348_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_writedata),
        .out_ml24247_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_address),
        .out_ml24247_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_burstcount),
        .out_ml24247_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_byteenable),
        .out_ml24247_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_enable),
        .out_ml24247_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_read),
        .out_ml24247_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_write),
        .out_ml24247_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_writedata),
        .out_ml24846_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_address),
        .out_ml24846_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_burstcount),
        .out_ml24846_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_byteenable),
        .out_ml24846_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_enable),
        .out_ml24846_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_read),
        .out_ml24846_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_write),
        .out_ml24846_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_writedata),
        .out_ml25145_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_address),
        .out_ml25145_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_burstcount),
        .out_ml25145_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_byteenable),
        .out_ml25145_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_enable),
        .out_ml25145_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_read),
        .out_ml25145_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_write),
        .out_ml25145_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_writedata),
        .out_ml26343_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_address),
        .out_ml26343_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_burstcount),
        .out_ml26343_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_byteenable),
        .out_ml26343_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_enable),
        .out_ml26343_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_read),
        .out_ml26343_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_write),
        .out_ml26343_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_writedata),
        .out_ml26642_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_address),
        .out_ml26642_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_burstcount),
        .out_ml26642_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_byteenable),
        .out_ml26642_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_enable),
        .out_ml26642_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_read),
        .out_ml26642_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_write),
        .out_ml26642_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_writedata),
        .out_ml26941_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_address),
        .out_ml26941_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_burstcount),
        .out_ml26941_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_byteenable),
        .out_ml26941_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_enable),
        .out_ml26941_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_read),
        .out_ml26941_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_write),
        .out_ml26941_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_writedata),
        .out_ml28140_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_address),
        .out_ml28140_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_burstcount),
        .out_ml28140_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_byteenable),
        .out_ml28140_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_enable),
        .out_ml28140_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_read),
        .out_ml28140_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_write),
        .out_ml28140_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_writedata),
        .out_ml28439_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_address),
        .out_ml28439_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_burstcount),
        .out_ml28439_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_byteenable),
        .out_ml28439_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_enable),
        .out_ml28439_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_read),
        .out_ml28439_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_write),
        .out_ml28439_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_writedata),
        .out_ml29036_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_address),
        .out_ml29036_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_burstcount),
        .out_ml29036_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_byteenable),
        .out_ml29036_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_enable),
        .out_ml29036_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_read),
        .out_ml29036_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_write),
        .out_ml29036_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_writedata),
        .out_ml52_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_address),
        .out_ml52_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_burstcount),
        .out_ml52_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_byteenable),
        .out_ml52_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_enable),
        .out_ml52_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_read),
        .out_ml52_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_write),
        .out_ml52_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_writedata),
        .out_o_active_memdep_19(),
        .out_o_active_memdep_42818(),
        .out_o_active_memdep_42917(),
        .out_o_active_memdep_43016(),
        .out_o_active_memdep_43115(),
        .out_o_active_memdep_43214(),
        .out_o_active_memdep_43313(),
        .out_o_active_memdep_43412(),
        .out_o_active_memdep_43511(),
        .out_o_active_memdep_43610(),
        .out_o_active_memdep_4379(),
        .out_o_active_memdep_4388(),
        .out_o_active_memdep_4397(),
        .out_o_active_memdep_4406(),
        .out_o_active_memdep_4415(),
        .out_o_active_memdep_4424(),
        .out_o_active_memdep_4433(),
        .out_o_active_memdep_4442(),
        .out_stall_out(),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_address),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_burstcount),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_byteenable),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_enable),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_read),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_write),
        .out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_writedata),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_address),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_burstcount),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_byteenable),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_enable),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_read),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_write),
        .out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_writedata),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_address),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_burstcount),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_byteenable),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_enable),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_read),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_write),
        .out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_writedata),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_address),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_burstcount),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_byteenable),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_enable),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_read),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_write),
        .out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_writedata),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_address(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_address),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_burstcount(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_burstcount),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_byteenable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_byteenable),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_enable(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_enable),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_read(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_read),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_write(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_write),
        .out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_writedata(c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_lm10432_c2c_decode_stats_address(GPOUT,260)
    assign avm_lm10432_c2c_decode_stats_address = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_address;

    // avm_lm10432_c2c_decode_stats_burstcount(GPOUT,261)
    assign avm_lm10432_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_burstcount;

    // avm_lm10432_c2c_decode_stats_byteenable(GPOUT,262)
    assign avm_lm10432_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_byteenable;

    // avm_lm10432_c2c_decode_stats_enable(GPOUT,263)
    assign avm_lm10432_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_enable;

    // avm_lm10432_c2c_decode_stats_read(GPOUT,264)
    assign avm_lm10432_c2c_decode_stats_read = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_read;

    // avm_lm10432_c2c_decode_stats_write(GPOUT,265)
    assign avm_lm10432_c2c_decode_stats_write = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_write;

    // avm_lm10432_c2c_decode_stats_writedata(GPOUT,266)
    assign avm_lm10432_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm10432_c2c_decode_stats_avm_writedata;

    // avm_lm10633_c2c_decode_stats_address(GPOUT,267)
    assign avm_lm10633_c2c_decode_stats_address = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_address;

    // avm_lm10633_c2c_decode_stats_burstcount(GPOUT,268)
    assign avm_lm10633_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_burstcount;

    // avm_lm10633_c2c_decode_stats_byteenable(GPOUT,269)
    assign avm_lm10633_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_byteenable;

    // avm_lm10633_c2c_decode_stats_enable(GPOUT,270)
    assign avm_lm10633_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_enable;

    // avm_lm10633_c2c_decode_stats_read(GPOUT,271)
    assign avm_lm10633_c2c_decode_stats_read = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_read;

    // avm_lm10633_c2c_decode_stats_write(GPOUT,272)
    assign avm_lm10633_c2c_decode_stats_write = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_write;

    // avm_lm10633_c2c_decode_stats_writedata(GPOUT,273)
    assign avm_lm10633_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm10633_c2c_decode_stats_avm_writedata;

    // avm_lm11134_c2c_decode_stats_address(GPOUT,274)
    assign avm_lm11134_c2c_decode_stats_address = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_address;

    // avm_lm11134_c2c_decode_stats_burstcount(GPOUT,275)
    assign avm_lm11134_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_burstcount;

    // avm_lm11134_c2c_decode_stats_byteenable(GPOUT,276)
    assign avm_lm11134_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_byteenable;

    // avm_lm11134_c2c_decode_stats_enable(GPOUT,277)
    assign avm_lm11134_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_enable;

    // avm_lm11134_c2c_decode_stats_read(GPOUT,278)
    assign avm_lm11134_c2c_decode_stats_read = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_read;

    // avm_lm11134_c2c_decode_stats_write(GPOUT,279)
    assign avm_lm11134_c2c_decode_stats_write = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_write;

    // avm_lm11134_c2c_decode_stats_writedata(GPOUT,280)
    assign avm_lm11134_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm11134_c2c_decode_stats_avm_writedata;

    // avm_lm12335_c2c_decode_stats_address(GPOUT,281)
    assign avm_lm12335_c2c_decode_stats_address = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_address;

    // avm_lm12335_c2c_decode_stats_burstcount(GPOUT,282)
    assign avm_lm12335_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_burstcount;

    // avm_lm12335_c2c_decode_stats_byteenable(GPOUT,283)
    assign avm_lm12335_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_byteenable;

    // avm_lm12335_c2c_decode_stats_enable(GPOUT,284)
    assign avm_lm12335_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_enable;

    // avm_lm12335_c2c_decode_stats_read(GPOUT,285)
    assign avm_lm12335_c2c_decode_stats_read = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_read;

    // avm_lm12335_c2c_decode_stats_write(GPOUT,286)
    assign avm_lm12335_c2c_decode_stats_write = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_write;

    // avm_lm12335_c2c_decode_stats_writedata(GPOUT,287)
    assign avm_lm12335_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm12335_c2c_decode_stats_avm_writedata;

    // avm_lm12737_c2c_decode_stats_address(GPOUT,288)
    assign avm_lm12737_c2c_decode_stats_address = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_address;

    // avm_lm12737_c2c_decode_stats_burstcount(GPOUT,289)
    assign avm_lm12737_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_burstcount;

    // avm_lm12737_c2c_decode_stats_byteenable(GPOUT,290)
    assign avm_lm12737_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_byteenable;

    // avm_lm12737_c2c_decode_stats_enable(GPOUT,291)
    assign avm_lm12737_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_enable;

    // avm_lm12737_c2c_decode_stats_read(GPOUT,292)
    assign avm_lm12737_c2c_decode_stats_read = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_read;

    // avm_lm12737_c2c_decode_stats_write(GPOUT,293)
    assign avm_lm12737_c2c_decode_stats_write = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_write;

    // avm_lm12737_c2c_decode_stats_writedata(GPOUT,294)
    assign avm_lm12737_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm12737_c2c_decode_stats_avm_writedata;

    // avm_lm13238_c2c_decode_stats_address(GPOUT,295)
    assign avm_lm13238_c2c_decode_stats_address = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_address;

    // avm_lm13238_c2c_decode_stats_burstcount(GPOUT,296)
    assign avm_lm13238_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_burstcount;

    // avm_lm13238_c2c_decode_stats_byteenable(GPOUT,297)
    assign avm_lm13238_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_byteenable;

    // avm_lm13238_c2c_decode_stats_enable(GPOUT,298)
    assign avm_lm13238_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_enable;

    // avm_lm13238_c2c_decode_stats_read(GPOUT,299)
    assign avm_lm13238_c2c_decode_stats_read = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_read;

    // avm_lm13238_c2c_decode_stats_write(GPOUT,300)
    assign avm_lm13238_c2c_decode_stats_write = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_write;

    // avm_lm13238_c2c_decode_stats_writedata(GPOUT,301)
    assign avm_lm13238_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm13238_c2c_decode_stats_avm_writedata;

    // avm_lm1521_c2c_decode_stats_address(GPOUT,302)
    assign avm_lm1521_c2c_decode_stats_address = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_address;

    // avm_lm1521_c2c_decode_stats_burstcount(GPOUT,303)
    assign avm_lm1521_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_burstcount;

    // avm_lm1521_c2c_decode_stats_byteenable(GPOUT,304)
    assign avm_lm1521_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_byteenable;

    // avm_lm1521_c2c_decode_stats_enable(GPOUT,305)
    assign avm_lm1521_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_enable;

    // avm_lm1521_c2c_decode_stats_read(GPOUT,306)
    assign avm_lm1521_c2c_decode_stats_read = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_read;

    // avm_lm1521_c2c_decode_stats_write(GPOUT,307)
    assign avm_lm1521_c2c_decode_stats_write = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_write;

    // avm_lm1521_c2c_decode_stats_writedata(GPOUT,308)
    assign avm_lm1521_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm1521_c2c_decode_stats_avm_writedata;

    // avm_lm17044_c2c_decode_stats_address(GPOUT,309)
    assign avm_lm17044_c2c_decode_stats_address = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_address;

    // avm_lm17044_c2c_decode_stats_burstcount(GPOUT,310)
    assign avm_lm17044_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_burstcount;

    // avm_lm17044_c2c_decode_stats_byteenable(GPOUT,311)
    assign avm_lm17044_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_byteenable;

    // avm_lm17044_c2c_decode_stats_enable(GPOUT,312)
    assign avm_lm17044_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_enable;

    // avm_lm17044_c2c_decode_stats_read(GPOUT,313)
    assign avm_lm17044_c2c_decode_stats_read = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_read;

    // avm_lm17044_c2c_decode_stats_write(GPOUT,314)
    assign avm_lm17044_c2c_decode_stats_write = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_write;

    // avm_lm17044_c2c_decode_stats_writedata(GPOUT,315)
    assign avm_lm17044_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm17044_c2c_decode_stats_avm_writedata;

    // avm_lm19750_c2c_decode_stats_address(GPOUT,316)
    assign avm_lm19750_c2c_decode_stats_address = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_address;

    // avm_lm19750_c2c_decode_stats_burstcount(GPOUT,317)
    assign avm_lm19750_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_burstcount;

    // avm_lm19750_c2c_decode_stats_byteenable(GPOUT,318)
    assign avm_lm19750_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_byteenable;

    // avm_lm19750_c2c_decode_stats_enable(GPOUT,319)
    assign avm_lm19750_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_enable;

    // avm_lm19750_c2c_decode_stats_read(GPOUT,320)
    assign avm_lm19750_c2c_decode_stats_read = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_read;

    // avm_lm19750_c2c_decode_stats_write(GPOUT,321)
    assign avm_lm19750_c2c_decode_stats_write = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_write;

    // avm_lm19750_c2c_decode_stats_writedata(GPOUT,322)
    assign avm_lm19750_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm19750_c2c_decode_stats_avm_writedata;

    // avm_lm20351_c2c_decode_stats_address(GPOUT,323)
    assign avm_lm20351_c2c_decode_stats_address = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_address;

    // avm_lm20351_c2c_decode_stats_burstcount(GPOUT,324)
    assign avm_lm20351_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_burstcount;

    // avm_lm20351_c2c_decode_stats_byteenable(GPOUT,325)
    assign avm_lm20351_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_byteenable;

    // avm_lm20351_c2c_decode_stats_enable(GPOUT,326)
    assign avm_lm20351_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_enable;

    // avm_lm20351_c2c_decode_stats_read(GPOUT,327)
    assign avm_lm20351_c2c_decode_stats_read = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_read;

    // avm_lm20351_c2c_decode_stats_write(GPOUT,328)
    assign avm_lm20351_c2c_decode_stats_write = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_write;

    // avm_lm20351_c2c_decode_stats_writedata(GPOUT,329)
    assign avm_lm20351_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm20351_c2c_decode_stats_avm_writedata;

    // avm_lm20_c2c_decode_stats_address(GPOUT,330)
    assign avm_lm20_c2c_decode_stats_address = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_address;

    // avm_lm20_c2c_decode_stats_burstcount(GPOUT,331)
    assign avm_lm20_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_burstcount;

    // avm_lm20_c2c_decode_stats_byteenable(GPOUT,332)
    assign avm_lm20_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_byteenable;

    // avm_lm20_c2c_decode_stats_enable(GPOUT,333)
    assign avm_lm20_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_enable;

    // avm_lm20_c2c_decode_stats_read(GPOUT,334)
    assign avm_lm20_c2c_decode_stats_read = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_read;

    // avm_lm20_c2c_decode_stats_write(GPOUT,335)
    assign avm_lm20_c2c_decode_stats_write = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_write;

    // avm_lm20_c2c_decode_stats_writedata(GPOUT,336)
    assign avm_lm20_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm20_c2c_decode_stats_avm_writedata;

    // avm_lm2722_c2c_decode_stats_address(GPOUT,337)
    assign avm_lm2722_c2c_decode_stats_address = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_address;

    // avm_lm2722_c2c_decode_stats_burstcount(GPOUT,338)
    assign avm_lm2722_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_burstcount;

    // avm_lm2722_c2c_decode_stats_byteenable(GPOUT,339)
    assign avm_lm2722_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_byteenable;

    // avm_lm2722_c2c_decode_stats_enable(GPOUT,340)
    assign avm_lm2722_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_enable;

    // avm_lm2722_c2c_decode_stats_read(GPOUT,341)
    assign avm_lm2722_c2c_decode_stats_read = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_read;

    // avm_lm2722_c2c_decode_stats_write(GPOUT,342)
    assign avm_lm2722_c2c_decode_stats_write = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_write;

    // avm_lm2722_c2c_decode_stats_writedata(GPOUT,343)
    assign avm_lm2722_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm2722_c2c_decode_stats_avm_writedata;

    // avm_lm3923_c2c_decode_stats_address(GPOUT,344)
    assign avm_lm3923_c2c_decode_stats_address = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_address;

    // avm_lm3923_c2c_decode_stats_burstcount(GPOUT,345)
    assign avm_lm3923_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_burstcount;

    // avm_lm3923_c2c_decode_stats_byteenable(GPOUT,346)
    assign avm_lm3923_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_byteenable;

    // avm_lm3923_c2c_decode_stats_enable(GPOUT,347)
    assign avm_lm3923_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_enable;

    // avm_lm3923_c2c_decode_stats_read(GPOUT,348)
    assign avm_lm3923_c2c_decode_stats_read = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_read;

    // avm_lm3923_c2c_decode_stats_write(GPOUT,349)
    assign avm_lm3923_c2c_decode_stats_write = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_write;

    // avm_lm3923_c2c_decode_stats_writedata(GPOUT,350)
    assign avm_lm3923_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm3923_c2c_decode_stats_avm_writedata;

    // avm_lm4924_c2c_decode_stats_address(GPOUT,351)
    assign avm_lm4924_c2c_decode_stats_address = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_address;

    // avm_lm4924_c2c_decode_stats_burstcount(GPOUT,352)
    assign avm_lm4924_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_burstcount;

    // avm_lm4924_c2c_decode_stats_byteenable(GPOUT,353)
    assign avm_lm4924_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_byteenable;

    // avm_lm4924_c2c_decode_stats_enable(GPOUT,354)
    assign avm_lm4924_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_enable;

    // avm_lm4924_c2c_decode_stats_read(GPOUT,355)
    assign avm_lm4924_c2c_decode_stats_read = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_read;

    // avm_lm4924_c2c_decode_stats_write(GPOUT,356)
    assign avm_lm4924_c2c_decode_stats_write = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_write;

    // avm_lm4924_c2c_decode_stats_writedata(GPOUT,357)
    assign avm_lm4924_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm4924_c2c_decode_stats_avm_writedata;

    // avm_lm5725_c2c_decode_stats_address(GPOUT,358)
    assign avm_lm5725_c2c_decode_stats_address = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_address;

    // avm_lm5725_c2c_decode_stats_burstcount(GPOUT,359)
    assign avm_lm5725_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_burstcount;

    // avm_lm5725_c2c_decode_stats_byteenable(GPOUT,360)
    assign avm_lm5725_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_byteenable;

    // avm_lm5725_c2c_decode_stats_enable(GPOUT,361)
    assign avm_lm5725_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_enable;

    // avm_lm5725_c2c_decode_stats_read(GPOUT,362)
    assign avm_lm5725_c2c_decode_stats_read = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_read;

    // avm_lm5725_c2c_decode_stats_write(GPOUT,363)
    assign avm_lm5725_c2c_decode_stats_write = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_write;

    // avm_lm5725_c2c_decode_stats_writedata(GPOUT,364)
    assign avm_lm5725_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm5725_c2c_decode_stats_avm_writedata;

    // avm_lm6426_c2c_decode_stats_address(GPOUT,365)
    assign avm_lm6426_c2c_decode_stats_address = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_address;

    // avm_lm6426_c2c_decode_stats_burstcount(GPOUT,366)
    assign avm_lm6426_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_burstcount;

    // avm_lm6426_c2c_decode_stats_byteenable(GPOUT,367)
    assign avm_lm6426_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_byteenable;

    // avm_lm6426_c2c_decode_stats_enable(GPOUT,368)
    assign avm_lm6426_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_enable;

    // avm_lm6426_c2c_decode_stats_read(GPOUT,369)
    assign avm_lm6426_c2c_decode_stats_read = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_read;

    // avm_lm6426_c2c_decode_stats_write(GPOUT,370)
    assign avm_lm6426_c2c_decode_stats_write = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_write;

    // avm_lm6426_c2c_decode_stats_writedata(GPOUT,371)
    assign avm_lm6426_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm6426_c2c_decode_stats_avm_writedata;

    // avm_lm7227_c2c_decode_stats_address(GPOUT,372)
    assign avm_lm7227_c2c_decode_stats_address = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_address;

    // avm_lm7227_c2c_decode_stats_burstcount(GPOUT,373)
    assign avm_lm7227_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_burstcount;

    // avm_lm7227_c2c_decode_stats_byteenable(GPOUT,374)
    assign avm_lm7227_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_byteenable;

    // avm_lm7227_c2c_decode_stats_enable(GPOUT,375)
    assign avm_lm7227_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_enable;

    // avm_lm7227_c2c_decode_stats_read(GPOUT,376)
    assign avm_lm7227_c2c_decode_stats_read = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_read;

    // avm_lm7227_c2c_decode_stats_write(GPOUT,377)
    assign avm_lm7227_c2c_decode_stats_write = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_write;

    // avm_lm7227_c2c_decode_stats_writedata(GPOUT,378)
    assign avm_lm7227_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm7227_c2c_decode_stats_avm_writedata;

    // avm_lm7928_c2c_decode_stats_address(GPOUT,379)
    assign avm_lm7928_c2c_decode_stats_address = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_address;

    // avm_lm7928_c2c_decode_stats_burstcount(GPOUT,380)
    assign avm_lm7928_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_burstcount;

    // avm_lm7928_c2c_decode_stats_byteenable(GPOUT,381)
    assign avm_lm7928_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_byteenable;

    // avm_lm7928_c2c_decode_stats_enable(GPOUT,382)
    assign avm_lm7928_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_enable;

    // avm_lm7928_c2c_decode_stats_read(GPOUT,383)
    assign avm_lm7928_c2c_decode_stats_read = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_read;

    // avm_lm7928_c2c_decode_stats_write(GPOUT,384)
    assign avm_lm7928_c2c_decode_stats_write = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_write;

    // avm_lm7928_c2c_decode_stats_writedata(GPOUT,385)
    assign avm_lm7928_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm7928_c2c_decode_stats_avm_writedata;

    // avm_lm8629_c2c_decode_stats_address(GPOUT,386)
    assign avm_lm8629_c2c_decode_stats_address = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_address;

    // avm_lm8629_c2c_decode_stats_burstcount(GPOUT,387)
    assign avm_lm8629_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_burstcount;

    // avm_lm8629_c2c_decode_stats_byteenable(GPOUT,388)
    assign avm_lm8629_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_byteenable;

    // avm_lm8629_c2c_decode_stats_enable(GPOUT,389)
    assign avm_lm8629_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_enable;

    // avm_lm8629_c2c_decode_stats_read(GPOUT,390)
    assign avm_lm8629_c2c_decode_stats_read = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_read;

    // avm_lm8629_c2c_decode_stats_write(GPOUT,391)
    assign avm_lm8629_c2c_decode_stats_write = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_write;

    // avm_lm8629_c2c_decode_stats_writedata(GPOUT,392)
    assign avm_lm8629_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm8629_c2c_decode_stats_avm_writedata;

    // avm_lm9730_c2c_decode_stats_address(GPOUT,393)
    assign avm_lm9730_c2c_decode_stats_address = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_address;

    // avm_lm9730_c2c_decode_stats_burstcount(GPOUT,394)
    assign avm_lm9730_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_burstcount;

    // avm_lm9730_c2c_decode_stats_byteenable(GPOUT,395)
    assign avm_lm9730_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_byteenable;

    // avm_lm9730_c2c_decode_stats_enable(GPOUT,396)
    assign avm_lm9730_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_enable;

    // avm_lm9730_c2c_decode_stats_read(GPOUT,397)
    assign avm_lm9730_c2c_decode_stats_read = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_read;

    // avm_lm9730_c2c_decode_stats_write(GPOUT,398)
    assign avm_lm9730_c2c_decode_stats_write = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_write;

    // avm_lm9730_c2c_decode_stats_writedata(GPOUT,399)
    assign avm_lm9730_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm9730_c2c_decode_stats_avm_writedata;

    // avm_lm9931_c2c_decode_stats_address(GPOUT,400)
    assign avm_lm9931_c2c_decode_stats_address = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_address;

    // avm_lm9931_c2c_decode_stats_burstcount(GPOUT,401)
    assign avm_lm9931_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_burstcount;

    // avm_lm9931_c2c_decode_stats_byteenable(GPOUT,402)
    assign avm_lm9931_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_byteenable;

    // avm_lm9931_c2c_decode_stats_enable(GPOUT,403)
    assign avm_lm9931_c2c_decode_stats_enable = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_enable;

    // avm_lm9931_c2c_decode_stats_read(GPOUT,404)
    assign avm_lm9931_c2c_decode_stats_read = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_read;

    // avm_lm9931_c2c_decode_stats_write(GPOUT,405)
    assign avm_lm9931_c2c_decode_stats_write = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_write;

    // avm_lm9931_c2c_decode_stats_writedata(GPOUT,406)
    assign avm_lm9931_c2c_decode_stats_writedata = c2c_decode_stats_function_out_lm9931_c2c_decode_stats_avm_writedata;

    // avm_memdep_19_c2c_decode_stats_address(GPOUT,407)
    assign avm_memdep_19_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_address;

    // avm_memdep_19_c2c_decode_stats_burstcount(GPOUT,408)
    assign avm_memdep_19_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_burstcount;

    // avm_memdep_19_c2c_decode_stats_byteenable(GPOUT,409)
    assign avm_memdep_19_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_byteenable;

    // avm_memdep_19_c2c_decode_stats_enable(GPOUT,410)
    assign avm_memdep_19_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_enable;

    // avm_memdep_19_c2c_decode_stats_read(GPOUT,411)
    assign avm_memdep_19_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_read;

    // avm_memdep_19_c2c_decode_stats_write(GPOUT,412)
    assign avm_memdep_19_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_write;

    // avm_memdep_19_c2c_decode_stats_writedata(GPOUT,413)
    assign avm_memdep_19_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_19_c2c_decode_stats_avm_writedata;

    // avm_memdep_42818_c2c_decode_stats_address(GPOUT,414)
    assign avm_memdep_42818_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_address;

    // avm_memdep_42818_c2c_decode_stats_burstcount(GPOUT,415)
    assign avm_memdep_42818_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_burstcount;

    // avm_memdep_42818_c2c_decode_stats_byteenable(GPOUT,416)
    assign avm_memdep_42818_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_byteenable;

    // avm_memdep_42818_c2c_decode_stats_enable(GPOUT,417)
    assign avm_memdep_42818_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_enable;

    // avm_memdep_42818_c2c_decode_stats_read(GPOUT,418)
    assign avm_memdep_42818_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_read;

    // avm_memdep_42818_c2c_decode_stats_write(GPOUT,419)
    assign avm_memdep_42818_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_write;

    // avm_memdep_42818_c2c_decode_stats_writedata(GPOUT,420)
    assign avm_memdep_42818_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_42818_c2c_decode_stats_avm_writedata;

    // avm_memdep_42917_c2c_decode_stats_address(GPOUT,421)
    assign avm_memdep_42917_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_address;

    // avm_memdep_42917_c2c_decode_stats_burstcount(GPOUT,422)
    assign avm_memdep_42917_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_burstcount;

    // avm_memdep_42917_c2c_decode_stats_byteenable(GPOUT,423)
    assign avm_memdep_42917_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_byteenable;

    // avm_memdep_42917_c2c_decode_stats_enable(GPOUT,424)
    assign avm_memdep_42917_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_enable;

    // avm_memdep_42917_c2c_decode_stats_read(GPOUT,425)
    assign avm_memdep_42917_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_read;

    // avm_memdep_42917_c2c_decode_stats_write(GPOUT,426)
    assign avm_memdep_42917_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_write;

    // avm_memdep_42917_c2c_decode_stats_writedata(GPOUT,427)
    assign avm_memdep_42917_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_42917_c2c_decode_stats_avm_writedata;

    // avm_memdep_43016_c2c_decode_stats_address(GPOUT,428)
    assign avm_memdep_43016_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_address;

    // avm_memdep_43016_c2c_decode_stats_burstcount(GPOUT,429)
    assign avm_memdep_43016_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43016_c2c_decode_stats_byteenable(GPOUT,430)
    assign avm_memdep_43016_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43016_c2c_decode_stats_enable(GPOUT,431)
    assign avm_memdep_43016_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_enable;

    // avm_memdep_43016_c2c_decode_stats_read(GPOUT,432)
    assign avm_memdep_43016_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_read;

    // avm_memdep_43016_c2c_decode_stats_write(GPOUT,433)
    assign avm_memdep_43016_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_write;

    // avm_memdep_43016_c2c_decode_stats_writedata(GPOUT,434)
    assign avm_memdep_43016_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43016_c2c_decode_stats_avm_writedata;

    // avm_memdep_43115_c2c_decode_stats_address(GPOUT,435)
    assign avm_memdep_43115_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_address;

    // avm_memdep_43115_c2c_decode_stats_burstcount(GPOUT,436)
    assign avm_memdep_43115_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43115_c2c_decode_stats_byteenable(GPOUT,437)
    assign avm_memdep_43115_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43115_c2c_decode_stats_enable(GPOUT,438)
    assign avm_memdep_43115_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_enable;

    // avm_memdep_43115_c2c_decode_stats_read(GPOUT,439)
    assign avm_memdep_43115_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_read;

    // avm_memdep_43115_c2c_decode_stats_write(GPOUT,440)
    assign avm_memdep_43115_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_write;

    // avm_memdep_43115_c2c_decode_stats_writedata(GPOUT,441)
    assign avm_memdep_43115_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43115_c2c_decode_stats_avm_writedata;

    // avm_memdep_43214_c2c_decode_stats_address(GPOUT,442)
    assign avm_memdep_43214_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_address;

    // avm_memdep_43214_c2c_decode_stats_burstcount(GPOUT,443)
    assign avm_memdep_43214_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43214_c2c_decode_stats_byteenable(GPOUT,444)
    assign avm_memdep_43214_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43214_c2c_decode_stats_enable(GPOUT,445)
    assign avm_memdep_43214_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_enable;

    // avm_memdep_43214_c2c_decode_stats_read(GPOUT,446)
    assign avm_memdep_43214_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_read;

    // avm_memdep_43214_c2c_decode_stats_write(GPOUT,447)
    assign avm_memdep_43214_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_write;

    // avm_memdep_43214_c2c_decode_stats_writedata(GPOUT,448)
    assign avm_memdep_43214_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43214_c2c_decode_stats_avm_writedata;

    // avm_memdep_43313_c2c_decode_stats_address(GPOUT,449)
    assign avm_memdep_43313_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_address;

    // avm_memdep_43313_c2c_decode_stats_burstcount(GPOUT,450)
    assign avm_memdep_43313_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43313_c2c_decode_stats_byteenable(GPOUT,451)
    assign avm_memdep_43313_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43313_c2c_decode_stats_enable(GPOUT,452)
    assign avm_memdep_43313_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_enable;

    // avm_memdep_43313_c2c_decode_stats_read(GPOUT,453)
    assign avm_memdep_43313_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_read;

    // avm_memdep_43313_c2c_decode_stats_write(GPOUT,454)
    assign avm_memdep_43313_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_write;

    // avm_memdep_43313_c2c_decode_stats_writedata(GPOUT,455)
    assign avm_memdep_43313_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43313_c2c_decode_stats_avm_writedata;

    // avm_memdep_43412_c2c_decode_stats_address(GPOUT,456)
    assign avm_memdep_43412_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_address;

    // avm_memdep_43412_c2c_decode_stats_burstcount(GPOUT,457)
    assign avm_memdep_43412_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43412_c2c_decode_stats_byteenable(GPOUT,458)
    assign avm_memdep_43412_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43412_c2c_decode_stats_enable(GPOUT,459)
    assign avm_memdep_43412_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_enable;

    // avm_memdep_43412_c2c_decode_stats_read(GPOUT,460)
    assign avm_memdep_43412_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_read;

    // avm_memdep_43412_c2c_decode_stats_write(GPOUT,461)
    assign avm_memdep_43412_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_write;

    // avm_memdep_43412_c2c_decode_stats_writedata(GPOUT,462)
    assign avm_memdep_43412_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43412_c2c_decode_stats_avm_writedata;

    // avm_memdep_43511_c2c_decode_stats_address(GPOUT,463)
    assign avm_memdep_43511_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_address;

    // avm_memdep_43511_c2c_decode_stats_burstcount(GPOUT,464)
    assign avm_memdep_43511_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43511_c2c_decode_stats_byteenable(GPOUT,465)
    assign avm_memdep_43511_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43511_c2c_decode_stats_enable(GPOUT,466)
    assign avm_memdep_43511_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_enable;

    // avm_memdep_43511_c2c_decode_stats_read(GPOUT,467)
    assign avm_memdep_43511_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_read;

    // avm_memdep_43511_c2c_decode_stats_write(GPOUT,468)
    assign avm_memdep_43511_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_write;

    // avm_memdep_43511_c2c_decode_stats_writedata(GPOUT,469)
    assign avm_memdep_43511_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43511_c2c_decode_stats_avm_writedata;

    // avm_memdep_43610_c2c_decode_stats_address(GPOUT,470)
    assign avm_memdep_43610_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_address;

    // avm_memdep_43610_c2c_decode_stats_burstcount(GPOUT,471)
    assign avm_memdep_43610_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_burstcount;

    // avm_memdep_43610_c2c_decode_stats_byteenable(GPOUT,472)
    assign avm_memdep_43610_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_byteenable;

    // avm_memdep_43610_c2c_decode_stats_enable(GPOUT,473)
    assign avm_memdep_43610_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_enable;

    // avm_memdep_43610_c2c_decode_stats_read(GPOUT,474)
    assign avm_memdep_43610_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_read;

    // avm_memdep_43610_c2c_decode_stats_write(GPOUT,475)
    assign avm_memdep_43610_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_write;

    // avm_memdep_43610_c2c_decode_stats_writedata(GPOUT,476)
    assign avm_memdep_43610_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_43610_c2c_decode_stats_avm_writedata;

    // avm_memdep_4379_c2c_decode_stats_address(GPOUT,477)
    assign avm_memdep_4379_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_address;

    // avm_memdep_4379_c2c_decode_stats_burstcount(GPOUT,478)
    assign avm_memdep_4379_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4379_c2c_decode_stats_byteenable(GPOUT,479)
    assign avm_memdep_4379_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4379_c2c_decode_stats_enable(GPOUT,480)
    assign avm_memdep_4379_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_enable;

    // avm_memdep_4379_c2c_decode_stats_read(GPOUT,481)
    assign avm_memdep_4379_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_read;

    // avm_memdep_4379_c2c_decode_stats_write(GPOUT,482)
    assign avm_memdep_4379_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_write;

    // avm_memdep_4379_c2c_decode_stats_writedata(GPOUT,483)
    assign avm_memdep_4379_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4379_c2c_decode_stats_avm_writedata;

    // avm_memdep_4388_c2c_decode_stats_address(GPOUT,484)
    assign avm_memdep_4388_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_address;

    // avm_memdep_4388_c2c_decode_stats_burstcount(GPOUT,485)
    assign avm_memdep_4388_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4388_c2c_decode_stats_byteenable(GPOUT,486)
    assign avm_memdep_4388_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4388_c2c_decode_stats_enable(GPOUT,487)
    assign avm_memdep_4388_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_enable;

    // avm_memdep_4388_c2c_decode_stats_read(GPOUT,488)
    assign avm_memdep_4388_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_read;

    // avm_memdep_4388_c2c_decode_stats_write(GPOUT,489)
    assign avm_memdep_4388_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_write;

    // avm_memdep_4388_c2c_decode_stats_writedata(GPOUT,490)
    assign avm_memdep_4388_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4388_c2c_decode_stats_avm_writedata;

    // avm_memdep_4397_c2c_decode_stats_address(GPOUT,491)
    assign avm_memdep_4397_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_address;

    // avm_memdep_4397_c2c_decode_stats_burstcount(GPOUT,492)
    assign avm_memdep_4397_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4397_c2c_decode_stats_byteenable(GPOUT,493)
    assign avm_memdep_4397_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4397_c2c_decode_stats_enable(GPOUT,494)
    assign avm_memdep_4397_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_enable;

    // avm_memdep_4397_c2c_decode_stats_read(GPOUT,495)
    assign avm_memdep_4397_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_read;

    // avm_memdep_4397_c2c_decode_stats_write(GPOUT,496)
    assign avm_memdep_4397_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_write;

    // avm_memdep_4397_c2c_decode_stats_writedata(GPOUT,497)
    assign avm_memdep_4397_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4397_c2c_decode_stats_avm_writedata;

    // avm_memdep_4406_c2c_decode_stats_address(GPOUT,498)
    assign avm_memdep_4406_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_address;

    // avm_memdep_4406_c2c_decode_stats_burstcount(GPOUT,499)
    assign avm_memdep_4406_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4406_c2c_decode_stats_byteenable(GPOUT,500)
    assign avm_memdep_4406_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4406_c2c_decode_stats_enable(GPOUT,501)
    assign avm_memdep_4406_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_enable;

    // avm_memdep_4406_c2c_decode_stats_read(GPOUT,502)
    assign avm_memdep_4406_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_read;

    // avm_memdep_4406_c2c_decode_stats_write(GPOUT,503)
    assign avm_memdep_4406_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_write;

    // avm_memdep_4406_c2c_decode_stats_writedata(GPOUT,504)
    assign avm_memdep_4406_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4406_c2c_decode_stats_avm_writedata;

    // avm_memdep_4415_c2c_decode_stats_address(GPOUT,505)
    assign avm_memdep_4415_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_address;

    // avm_memdep_4415_c2c_decode_stats_burstcount(GPOUT,506)
    assign avm_memdep_4415_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4415_c2c_decode_stats_byteenable(GPOUT,507)
    assign avm_memdep_4415_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4415_c2c_decode_stats_enable(GPOUT,508)
    assign avm_memdep_4415_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_enable;

    // avm_memdep_4415_c2c_decode_stats_read(GPOUT,509)
    assign avm_memdep_4415_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_read;

    // avm_memdep_4415_c2c_decode_stats_write(GPOUT,510)
    assign avm_memdep_4415_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_write;

    // avm_memdep_4415_c2c_decode_stats_writedata(GPOUT,511)
    assign avm_memdep_4415_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4415_c2c_decode_stats_avm_writedata;

    // avm_memdep_4424_c2c_decode_stats_address(GPOUT,512)
    assign avm_memdep_4424_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_address;

    // avm_memdep_4424_c2c_decode_stats_burstcount(GPOUT,513)
    assign avm_memdep_4424_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4424_c2c_decode_stats_byteenable(GPOUT,514)
    assign avm_memdep_4424_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4424_c2c_decode_stats_enable(GPOUT,515)
    assign avm_memdep_4424_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_enable;

    // avm_memdep_4424_c2c_decode_stats_read(GPOUT,516)
    assign avm_memdep_4424_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_read;

    // avm_memdep_4424_c2c_decode_stats_write(GPOUT,517)
    assign avm_memdep_4424_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_write;

    // avm_memdep_4424_c2c_decode_stats_writedata(GPOUT,518)
    assign avm_memdep_4424_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4424_c2c_decode_stats_avm_writedata;

    // avm_memdep_4433_c2c_decode_stats_address(GPOUT,519)
    assign avm_memdep_4433_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_address;

    // avm_memdep_4433_c2c_decode_stats_burstcount(GPOUT,520)
    assign avm_memdep_4433_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4433_c2c_decode_stats_byteenable(GPOUT,521)
    assign avm_memdep_4433_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4433_c2c_decode_stats_enable(GPOUT,522)
    assign avm_memdep_4433_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_enable;

    // avm_memdep_4433_c2c_decode_stats_read(GPOUT,523)
    assign avm_memdep_4433_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_read;

    // avm_memdep_4433_c2c_decode_stats_write(GPOUT,524)
    assign avm_memdep_4433_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_write;

    // avm_memdep_4433_c2c_decode_stats_writedata(GPOUT,525)
    assign avm_memdep_4433_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4433_c2c_decode_stats_avm_writedata;

    // avm_memdep_4442_c2c_decode_stats_address(GPOUT,526)
    assign avm_memdep_4442_c2c_decode_stats_address = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_address;

    // avm_memdep_4442_c2c_decode_stats_burstcount(GPOUT,527)
    assign avm_memdep_4442_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_burstcount;

    // avm_memdep_4442_c2c_decode_stats_byteenable(GPOUT,528)
    assign avm_memdep_4442_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_byteenable;

    // avm_memdep_4442_c2c_decode_stats_enable(GPOUT,529)
    assign avm_memdep_4442_c2c_decode_stats_enable = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_enable;

    // avm_memdep_4442_c2c_decode_stats_read(GPOUT,530)
    assign avm_memdep_4442_c2c_decode_stats_read = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_read;

    // avm_memdep_4442_c2c_decode_stats_write(GPOUT,531)
    assign avm_memdep_4442_c2c_decode_stats_write = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_write;

    // avm_memdep_4442_c2c_decode_stats_writedata(GPOUT,532)
    assign avm_memdep_4442_c2c_decode_stats_writedata = c2c_decode_stats_function_out_memdep_4442_c2c_decode_stats_avm_writedata;

    // avm_ml23049_c2c_decode_stats_address(GPOUT,533)
    assign avm_ml23049_c2c_decode_stats_address = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_address;

    // avm_ml23049_c2c_decode_stats_burstcount(GPOUT,534)
    assign avm_ml23049_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_burstcount;

    // avm_ml23049_c2c_decode_stats_byteenable(GPOUT,535)
    assign avm_ml23049_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_byteenable;

    // avm_ml23049_c2c_decode_stats_enable(GPOUT,536)
    assign avm_ml23049_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_enable;

    // avm_ml23049_c2c_decode_stats_read(GPOUT,537)
    assign avm_ml23049_c2c_decode_stats_read = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_read;

    // avm_ml23049_c2c_decode_stats_write(GPOUT,538)
    assign avm_ml23049_c2c_decode_stats_write = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_write;

    // avm_ml23049_c2c_decode_stats_writedata(GPOUT,539)
    assign avm_ml23049_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml23049_c2c_decode_stats_avm_writedata;

    // avm_ml23348_c2c_decode_stats_address(GPOUT,540)
    assign avm_ml23348_c2c_decode_stats_address = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_address;

    // avm_ml23348_c2c_decode_stats_burstcount(GPOUT,541)
    assign avm_ml23348_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_burstcount;

    // avm_ml23348_c2c_decode_stats_byteenable(GPOUT,542)
    assign avm_ml23348_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_byteenable;

    // avm_ml23348_c2c_decode_stats_enable(GPOUT,543)
    assign avm_ml23348_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_enable;

    // avm_ml23348_c2c_decode_stats_read(GPOUT,544)
    assign avm_ml23348_c2c_decode_stats_read = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_read;

    // avm_ml23348_c2c_decode_stats_write(GPOUT,545)
    assign avm_ml23348_c2c_decode_stats_write = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_write;

    // avm_ml23348_c2c_decode_stats_writedata(GPOUT,546)
    assign avm_ml23348_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml23348_c2c_decode_stats_avm_writedata;

    // avm_ml24247_c2c_decode_stats_address(GPOUT,547)
    assign avm_ml24247_c2c_decode_stats_address = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_address;

    // avm_ml24247_c2c_decode_stats_burstcount(GPOUT,548)
    assign avm_ml24247_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_burstcount;

    // avm_ml24247_c2c_decode_stats_byteenable(GPOUT,549)
    assign avm_ml24247_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_byteenable;

    // avm_ml24247_c2c_decode_stats_enable(GPOUT,550)
    assign avm_ml24247_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_enable;

    // avm_ml24247_c2c_decode_stats_read(GPOUT,551)
    assign avm_ml24247_c2c_decode_stats_read = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_read;

    // avm_ml24247_c2c_decode_stats_write(GPOUT,552)
    assign avm_ml24247_c2c_decode_stats_write = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_write;

    // avm_ml24247_c2c_decode_stats_writedata(GPOUT,553)
    assign avm_ml24247_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml24247_c2c_decode_stats_avm_writedata;

    // avm_ml24846_c2c_decode_stats_address(GPOUT,554)
    assign avm_ml24846_c2c_decode_stats_address = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_address;

    // avm_ml24846_c2c_decode_stats_burstcount(GPOUT,555)
    assign avm_ml24846_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_burstcount;

    // avm_ml24846_c2c_decode_stats_byteenable(GPOUT,556)
    assign avm_ml24846_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_byteenable;

    // avm_ml24846_c2c_decode_stats_enable(GPOUT,557)
    assign avm_ml24846_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_enable;

    // avm_ml24846_c2c_decode_stats_read(GPOUT,558)
    assign avm_ml24846_c2c_decode_stats_read = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_read;

    // avm_ml24846_c2c_decode_stats_write(GPOUT,559)
    assign avm_ml24846_c2c_decode_stats_write = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_write;

    // avm_ml24846_c2c_decode_stats_writedata(GPOUT,560)
    assign avm_ml24846_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml24846_c2c_decode_stats_avm_writedata;

    // avm_ml25145_c2c_decode_stats_address(GPOUT,561)
    assign avm_ml25145_c2c_decode_stats_address = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_address;

    // avm_ml25145_c2c_decode_stats_burstcount(GPOUT,562)
    assign avm_ml25145_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_burstcount;

    // avm_ml25145_c2c_decode_stats_byteenable(GPOUT,563)
    assign avm_ml25145_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_byteenable;

    // avm_ml25145_c2c_decode_stats_enable(GPOUT,564)
    assign avm_ml25145_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_enable;

    // avm_ml25145_c2c_decode_stats_read(GPOUT,565)
    assign avm_ml25145_c2c_decode_stats_read = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_read;

    // avm_ml25145_c2c_decode_stats_write(GPOUT,566)
    assign avm_ml25145_c2c_decode_stats_write = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_write;

    // avm_ml25145_c2c_decode_stats_writedata(GPOUT,567)
    assign avm_ml25145_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml25145_c2c_decode_stats_avm_writedata;

    // avm_ml26343_c2c_decode_stats_address(GPOUT,568)
    assign avm_ml26343_c2c_decode_stats_address = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_address;

    // avm_ml26343_c2c_decode_stats_burstcount(GPOUT,569)
    assign avm_ml26343_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_burstcount;

    // avm_ml26343_c2c_decode_stats_byteenable(GPOUT,570)
    assign avm_ml26343_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_byteenable;

    // avm_ml26343_c2c_decode_stats_enable(GPOUT,571)
    assign avm_ml26343_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_enable;

    // avm_ml26343_c2c_decode_stats_read(GPOUT,572)
    assign avm_ml26343_c2c_decode_stats_read = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_read;

    // avm_ml26343_c2c_decode_stats_write(GPOUT,573)
    assign avm_ml26343_c2c_decode_stats_write = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_write;

    // avm_ml26343_c2c_decode_stats_writedata(GPOUT,574)
    assign avm_ml26343_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml26343_c2c_decode_stats_avm_writedata;

    // avm_ml26642_c2c_decode_stats_address(GPOUT,575)
    assign avm_ml26642_c2c_decode_stats_address = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_address;

    // avm_ml26642_c2c_decode_stats_burstcount(GPOUT,576)
    assign avm_ml26642_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_burstcount;

    // avm_ml26642_c2c_decode_stats_byteenable(GPOUT,577)
    assign avm_ml26642_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_byteenable;

    // avm_ml26642_c2c_decode_stats_enable(GPOUT,578)
    assign avm_ml26642_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_enable;

    // avm_ml26642_c2c_decode_stats_read(GPOUT,579)
    assign avm_ml26642_c2c_decode_stats_read = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_read;

    // avm_ml26642_c2c_decode_stats_write(GPOUT,580)
    assign avm_ml26642_c2c_decode_stats_write = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_write;

    // avm_ml26642_c2c_decode_stats_writedata(GPOUT,581)
    assign avm_ml26642_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml26642_c2c_decode_stats_avm_writedata;

    // avm_ml26941_c2c_decode_stats_address(GPOUT,582)
    assign avm_ml26941_c2c_decode_stats_address = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_address;

    // avm_ml26941_c2c_decode_stats_burstcount(GPOUT,583)
    assign avm_ml26941_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_burstcount;

    // avm_ml26941_c2c_decode_stats_byteenable(GPOUT,584)
    assign avm_ml26941_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_byteenable;

    // avm_ml26941_c2c_decode_stats_enable(GPOUT,585)
    assign avm_ml26941_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_enable;

    // avm_ml26941_c2c_decode_stats_read(GPOUT,586)
    assign avm_ml26941_c2c_decode_stats_read = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_read;

    // avm_ml26941_c2c_decode_stats_write(GPOUT,587)
    assign avm_ml26941_c2c_decode_stats_write = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_write;

    // avm_ml26941_c2c_decode_stats_writedata(GPOUT,588)
    assign avm_ml26941_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml26941_c2c_decode_stats_avm_writedata;

    // avm_ml28140_c2c_decode_stats_address(GPOUT,589)
    assign avm_ml28140_c2c_decode_stats_address = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_address;

    // avm_ml28140_c2c_decode_stats_burstcount(GPOUT,590)
    assign avm_ml28140_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_burstcount;

    // avm_ml28140_c2c_decode_stats_byteenable(GPOUT,591)
    assign avm_ml28140_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_byteenable;

    // avm_ml28140_c2c_decode_stats_enable(GPOUT,592)
    assign avm_ml28140_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_enable;

    // avm_ml28140_c2c_decode_stats_read(GPOUT,593)
    assign avm_ml28140_c2c_decode_stats_read = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_read;

    // avm_ml28140_c2c_decode_stats_write(GPOUT,594)
    assign avm_ml28140_c2c_decode_stats_write = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_write;

    // avm_ml28140_c2c_decode_stats_writedata(GPOUT,595)
    assign avm_ml28140_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml28140_c2c_decode_stats_avm_writedata;

    // avm_ml28439_c2c_decode_stats_address(GPOUT,596)
    assign avm_ml28439_c2c_decode_stats_address = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_address;

    // avm_ml28439_c2c_decode_stats_burstcount(GPOUT,597)
    assign avm_ml28439_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_burstcount;

    // avm_ml28439_c2c_decode_stats_byteenable(GPOUT,598)
    assign avm_ml28439_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_byteenable;

    // avm_ml28439_c2c_decode_stats_enable(GPOUT,599)
    assign avm_ml28439_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_enable;

    // avm_ml28439_c2c_decode_stats_read(GPOUT,600)
    assign avm_ml28439_c2c_decode_stats_read = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_read;

    // avm_ml28439_c2c_decode_stats_write(GPOUT,601)
    assign avm_ml28439_c2c_decode_stats_write = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_write;

    // avm_ml28439_c2c_decode_stats_writedata(GPOUT,602)
    assign avm_ml28439_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml28439_c2c_decode_stats_avm_writedata;

    // avm_ml29036_c2c_decode_stats_address(GPOUT,603)
    assign avm_ml29036_c2c_decode_stats_address = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_address;

    // avm_ml29036_c2c_decode_stats_burstcount(GPOUT,604)
    assign avm_ml29036_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_burstcount;

    // avm_ml29036_c2c_decode_stats_byteenable(GPOUT,605)
    assign avm_ml29036_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_byteenable;

    // avm_ml29036_c2c_decode_stats_enable(GPOUT,606)
    assign avm_ml29036_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_enable;

    // avm_ml29036_c2c_decode_stats_read(GPOUT,607)
    assign avm_ml29036_c2c_decode_stats_read = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_read;

    // avm_ml29036_c2c_decode_stats_write(GPOUT,608)
    assign avm_ml29036_c2c_decode_stats_write = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_write;

    // avm_ml29036_c2c_decode_stats_writedata(GPOUT,609)
    assign avm_ml29036_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml29036_c2c_decode_stats_avm_writedata;

    // avm_ml52_c2c_decode_stats_address(GPOUT,610)
    assign avm_ml52_c2c_decode_stats_address = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_address;

    // avm_ml52_c2c_decode_stats_burstcount(GPOUT,611)
    assign avm_ml52_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_burstcount;

    // avm_ml52_c2c_decode_stats_byteenable(GPOUT,612)
    assign avm_ml52_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_byteenable;

    // avm_ml52_c2c_decode_stats_enable(GPOUT,613)
    assign avm_ml52_c2c_decode_stats_enable = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_enable;

    // avm_ml52_c2c_decode_stats_read(GPOUT,614)
    assign avm_ml52_c2c_decode_stats_read = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_read;

    // avm_ml52_c2c_decode_stats_write(GPOUT,615)
    assign avm_ml52_c2c_decode_stats_write = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_write;

    // avm_ml52_c2c_decode_stats_writedata(GPOUT,616)
    assign avm_ml52_c2c_decode_stats_writedata = c2c_decode_stats_function_out_ml52_c2c_decode_stats_avm_writedata;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_address(GPOUT,617)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_address = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_address;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_burstcount(GPOUT,618)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_burstcount;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_byteenable(GPOUT,619)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_byteenable;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_enable(GPOUT,620)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_enable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_enable;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_read(GPOUT,621)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_read = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_read;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_write(GPOUT,622)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_write = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_write;

    // avm_unnamed_c2c_decode_stats1_c2c_decode_stats_writedata(GPOUT,623)
    assign avm_unnamed_c2c_decode_stats1_c2c_decode_stats_writedata = c2c_decode_stats_function_out_unnamed_c2c_decode_stats1_c2c_decode_stats_avm_writedata;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_address(GPOUT,624)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_address = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_address;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_burstcount(GPOUT,625)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_burstcount;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_byteenable(GPOUT,626)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_byteenable;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_enable(GPOUT,627)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_enable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_enable;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_read(GPOUT,628)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_read = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_read;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_write(GPOUT,629)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_write = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_write;

    // avm_unnamed_c2c_decode_stats2_c2c_decode_stats_writedata(GPOUT,630)
    assign avm_unnamed_c2c_decode_stats2_c2c_decode_stats_writedata = c2c_decode_stats_function_out_unnamed_c2c_decode_stats2_c2c_decode_stats_avm_writedata;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_address(GPOUT,631)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_address = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_address;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_burstcount(GPOUT,632)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_burstcount;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_byteenable(GPOUT,633)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_byteenable;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_enable(GPOUT,634)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_enable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_enable;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_read(GPOUT,635)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_read = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_read;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_write(GPOUT,636)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_write = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_write;

    // avm_unnamed_c2c_decode_stats3_c2c_decode_stats_writedata(GPOUT,637)
    assign avm_unnamed_c2c_decode_stats3_c2c_decode_stats_writedata = c2c_decode_stats_function_out_unnamed_c2c_decode_stats3_c2c_decode_stats_avm_writedata;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_address(GPOUT,638)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_address = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_address;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_burstcount(GPOUT,639)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_burstcount;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_byteenable(GPOUT,640)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_byteenable;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_enable(GPOUT,641)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_enable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_enable;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_read(GPOUT,642)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_read = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_read;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_write(GPOUT,643)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_write = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_write;

    // avm_unnamed_c2c_decode_stats4_c2c_decode_stats_writedata(GPOUT,644)
    assign avm_unnamed_c2c_decode_stats4_c2c_decode_stats_writedata = c2c_decode_stats_function_out_unnamed_c2c_decode_stats4_c2c_decode_stats_avm_writedata;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_address(GPOUT,645)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_address = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_address;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_burstcount(GPOUT,646)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_burstcount = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_burstcount;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_byteenable(GPOUT,647)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_byteenable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_byteenable;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_enable(GPOUT,648)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_enable = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_enable;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_read(GPOUT,649)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_read = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_read;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_write(GPOUT,650)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_write = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_write;

    // avm_unnamed_c2c_decode_stats5_c2c_decode_stats_writedata(GPOUT,651)
    assign avm_unnamed_c2c_decode_stats5_c2c_decode_stats_writedata = c2c_decode_stats_function_out_unnamed_c2c_decode_stats5_c2c_decode_stats_avm_writedata;

    // avst_iord_bl_call_c2c_decode_stats_ready(GPOUT,652)
    assign avst_iord_bl_call_c2c_decode_stats_ready = c2c_decode_stats_function_out_iord_bl_call_c2c_decode_stats_o_fifoready;

    // avst_iowr_bl_return_c2c_decode_stats_data(GPOUT,653)
    assign avst_iowr_bl_return_c2c_decode_stats_data = c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifodata;

    // avst_iowr_bl_return_c2c_decode_stats_valid(GPOUT,654)
    assign avst_iowr_bl_return_c2c_decode_stats_valid = c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifovalid;

    // not_ready(LOGICAL,258)
    assign not_ready_q = ~ (c2c_decode_stats_function_out_iord_bl_call_c2c_decode_stats_o_fifoready);

    // busy_and(LOGICAL,2)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,659)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,658)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,3)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,655)
    assign busy = busy_or_q;

    // done(GPOUT,656)
    assign done = c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifovalid;

    // returndata(GPOUT,657)
    assign returndata = c2c_decode_stats_function_out_iowr_bl_return_c2c_decode_stats_o_fifodata;

endmodule
