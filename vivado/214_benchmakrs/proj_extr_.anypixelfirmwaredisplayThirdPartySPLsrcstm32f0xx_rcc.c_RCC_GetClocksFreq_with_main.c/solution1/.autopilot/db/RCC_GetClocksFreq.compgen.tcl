# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name RCC_Clocks_SYSCLK_Frequency \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_SYSCLK_Frequency \
    op interface \
    ports { RCC_Clocks_SYSCLK_Frequency_i { I 32 vector } RCC_Clocks_SYSCLK_Frequency_o { O 32 vector } RCC_Clocks_SYSCLK_Frequency_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name RCC_Clocks_HCLK_Frequency \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_HCLK_Frequency \
    op interface \
    ports { RCC_Clocks_HCLK_Frequency_i { I 32 vector } RCC_Clocks_HCLK_Frequency_o { O 32 vector } RCC_Clocks_HCLK_Frequency_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name RCC_Clocks_PCLK_Frequency \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_PCLK_Frequency \
    op interface \
    ports { RCC_Clocks_PCLK_Frequency_i { I 32 vector } RCC_Clocks_PCLK_Frequency_o { O 32 vector } RCC_Clocks_PCLK_Frequency_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name RCC_Clocks_ADCCLK_Frequency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_ADCCLK_Frequency \
    op interface \
    ports { RCC_Clocks_ADCCLK_Frequency { O 32 vector } RCC_Clocks_ADCCLK_Frequency_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name RCC_Clocks_CECCLK_Frequency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_CECCLK_Frequency \
    op interface \
    ports { RCC_Clocks_CECCLK_Frequency { O 32 vector } RCC_Clocks_CECCLK_Frequency_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name RCC_Clocks_I2C1CLK_Frequency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_I2C1CLK_Frequency \
    op interface \
    ports { RCC_Clocks_I2C1CLK_Frequency { O 32 vector } RCC_Clocks_I2C1CLK_Frequency_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name RCC_Clocks_USART1CLK_Frequency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_USART1CLK_Frequency \
    op interface \
    ports { RCC_Clocks_USART1CLK_Frequency { O 32 vector } RCC_Clocks_USART1CLK_Frequency_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name RCC_Clocks_USART2CLK_Frequency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_USART2CLK_Frequency \
    op interface \
    ports { RCC_Clocks_USART2CLK_Frequency { O 32 vector } RCC_Clocks_USART2CLK_Frequency_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name RCC_Clocks_USBCLK_Frequency \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_RCC_Clocks_USBCLK_Frequency \
    op interface \
    ports { RCC_Clocks_USBCLK_Frequency { O 32 vector } RCC_Clocks_USBCLK_Frequency_ap_vld { O 1 bit } } \
} "
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


