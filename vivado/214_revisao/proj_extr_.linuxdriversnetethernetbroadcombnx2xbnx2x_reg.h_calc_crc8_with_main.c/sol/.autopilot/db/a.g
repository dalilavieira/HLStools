#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversnetethernetbroadcombnx2xbnx2x_reg.h_calc_crc8_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
