#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}