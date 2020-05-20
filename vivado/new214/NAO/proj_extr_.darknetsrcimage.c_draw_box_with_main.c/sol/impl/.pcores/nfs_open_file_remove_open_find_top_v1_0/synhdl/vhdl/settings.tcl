# ==============================================================
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
# Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module nfs_open_file_remove_open_find
set language vhdl
set family kintex7
set device xc7k160t
set package -fbg484
set speed -1
set clock ""
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false

set src_files [list \
    nfs_open_file_remove_open_find.vhd \
]

set pcore_syn 1
set pcore_lang vhdl
