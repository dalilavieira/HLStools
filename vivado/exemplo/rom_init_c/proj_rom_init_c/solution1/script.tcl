############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project proj_rom_init_c
set_top hamming_window
add_files hamming_window.c
add_files -tb hamming_window_test.c
open_solution "solution1"
set_part {xc7k160t-fbg484-1}
create_clock -period 5 -name default
create_clock -period 10ns -name default
#source "./proj_rom_init_c/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
