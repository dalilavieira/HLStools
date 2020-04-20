# This script segment is generated automatically by AutoPilot

set id 1
set name hamming_window_mul_mul_14ns_16s_30_1_1
set corename simcore_mul
set op mul
set stage_num 1
set max_latency -1
set registered_input 1
set in0_width 14
set in0_signed 0
set in1_width 16
set in1_signed 1
set out_width 30
set exp i0*i1
set arg_lists {i0 {14 0 +} i1 {16 1 +} p {30 1 +} acc {0} }
set TrueReset 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mul] == "ap_gen_simcore_mul"} {
eval "ap_gen_simcore_mul { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-100\] Cannot find ap_gen_simcore_mul, check your AutoPilot builtin lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler ${name}
}


set op mul
set corename DSP48
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_dsp48] == "::AESL_LIB_VIRTEX::xil_gen_dsp48"} {
eval "::AESL_LIB_VIRTEX::xil_gen_dsp48 { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    true_reset ${TrueReset} \
    stage_num ${stage_num} \
    max_latency ${max_latency} \
    registered_input ${registered_input} \
    in0_width ${in0_width} \
    in0_signed ${in0_signed} \
    in1_width ${in1_width} \
    in1_signed ${in1_signed} \
    out_width ${out_width} \
    exp ${exp} \
    arg_lists {${arg_lists}} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_dsp48, check your platform lib"
}
}


# Memory (RAM/ROM)  definition:
set ID 3
set hasByteEnable 0
set MemName hamming_window_window_coeff
set CoreName ap_simcore_mem
set PortList { 1 }
set DataWd 14
set AddrRange 256
set AddrWd 8
set TrueReset 0
set IsROM 1
set ROMData { "00010100011110" "00010100100001" "00010100100111" "00010100110011" "00010101000011" "00010101010111" "00010101110000" "00010110001110" "00010110110000" "00010111010111" "00011000000010" "00011000110001" "00011001100101" "00011010011110" "00011011011010" "00011100011011" "00011101100000" "00011110101010" "00011111110111" "00100001001001" "00100010011111" "00100011111001" "00100101010111" "00100110111000" "00101000011110" "00101010000111" "00101011110101" "00101101100101" "00101111011010" "00110001010010" "00110011001101" "00110101001100" "00110111001110" "00111001010011" "00111011011100" "00111101100111" "00111111110110" "01000010000111" "01000100011011" "01000110110010" "01001001001100" "01001011101000" "01001110000110" "01010000100111" "01010011001010" "01010101101111" "01011000010111" "01011011000000" "01011101101011" "01100000011000" "01100011000110" "01100101110110" "01101000100111" "01101011011010" "01101110001110" "01110001000011" "01110011111000" "01110110101111" "01111001100111" "01111100011111" "01111111010111" "10000010010001" "10000101001010" "10001000000100" "10001010111101" "10001101110111" "10010000110000" "10010011101010" "10010110100011" "10011001011011" "10011100010011" "10011111001010" "10100010000000" "10100100110110" "10100111101010" "10101010011101" "10101101001111" "10110000000000" "10110010101111" "10110101011101" "10111000001001" "10111010110011" "10111101011011" "11000000000001" "11000010100101" "11000101000111" "11000111100111" "11001010000100" "11001100011111" "11001110110111" "11010001001101" "11010011100000" "11010101101111" "11010111111100" "11011010000110" "11011100001101" "11011110010001" "11100000010010" "11100010001111" "11100100001000" "11100101111111" "11100111110001" "11101001100000" "11101011001011" "11101100110011" "11101110010111" "11101111110110" "11110001010010" "11110010101010" "11110011111110" "11110101001110" "11110110011001" "11110111100000" "11111000100100" "11111001100010" "11111010011101" "11111011010011" "11111100000101" "11111100110010" "11111101011011" "11111101111111" "11111110011111" "11111110111010" "11111111010001" "11111111100011" "11111111110001" "11111111111010" "11111111111111" "11111111111111" "11111111111010" "11111111110001" "11111111100011" "11111111010001" "11111110111010" "11111110011111" "11111101111111" "11111101011011" "11111100110010" "11111100000101" "11111011010011" "11111010011101" "11111001100010" "11111000100100" "11110111100000" "11110110011001" "11110101001110" "11110011111110" "11110010101010" "11110001010010" "11101111110110" "11101110010111" "11101100110011" "11101011001011" "11101001100000" "11100111110001" "11100101111111" "11100100001000" "11100010001111" "11100000010010" "11011110010001" "11011100001101" "11011010000110" "11010111111100" "11010101101111" "11010011100000" "11010001001101" "11001110110111" "11001100011111" "11001010000100" "11000111100111" "11000101000111" "11000010100101" "11000000000001" "10111101011011" "10111010110011" "10111000001001" "10110101011101" "10110010101111" "10110000000000" "10101101001111" "10101010011101" "10100111101010" "10100100110110" "10100010000000" "10011111001010" "10011100010011" "10011001011011" "10010110100011" "10010011101010" "10010000110000" "10001101110111" "10001010111101" "10001000000100" "10000101001010" "10000010010001" "01111111010111" "01111100011111" "01111001100111" "01110110101111" "01110011111000" "01110001000011" "01101110001110" "01101011011010" "01101000100111" "01100101110110" "01100011000110" "01100000011000" "01011101101011" "01011011000000" "01011000010111" "01010101101111" "01010011001010" "01010000100111" "01001110000110" "01001011101000" "01001001001100" "01000110110010" "01000100011011" "01000010000111" "00111111110110" "00111101100111" "00111011011100" "00111001010011" "00110111001110" "00110101001100" "00110011001101" "00110001010010" "00101111011010" "00101101100101" "00101011110101" "00101010000111" "00101000011110" "00100110111000" "00100101010111" "00100011111001" "00100010011111" "00100001001001" "00011111110111" "00011110101010" "00011101100000" "00011100011011" "00011011011010" "00011010011110" "00011001100101" "00011000110001" "00011000000010" "00010111010111" "00010110110000" "00010110001110" "00010101110000" "00010101010111" "00010101000011" "00010100110011" "00010100100111" "00010100100001" "00010100011110" }
set HasInitializer 1
set Initializer $ROMData
set NumOfStage 2
set MaxLatency -1
set DelayBudget 2.664
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName ROM_nP
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_ROM] == "::AESL_LIB_VIRTEX::xil_gen_ROM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_ROM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 1 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_ROM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4 \
    name outdata \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename outdata \
    op interface \
    ports { outdata_address0 { O 8 vector } outdata_ce0 { O 1 bit } outdata_we0 { O 1 bit } outdata_d0 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'outdata'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5 \
    name indata \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename indata \
    op interface \
    ports { indata_address0 { O 8 vector } indata_ce0 { O 1 bit } indata_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'indata'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


