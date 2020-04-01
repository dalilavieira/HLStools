#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.BGAQRCode-Androidzbarsrcmainjnizbardecoderdatabar.c_calc_value4_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
