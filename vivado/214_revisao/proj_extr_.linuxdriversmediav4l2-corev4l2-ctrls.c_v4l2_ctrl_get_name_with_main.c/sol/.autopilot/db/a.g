#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversmediav4l2-corev4l2-ctrls.c_v4l2_ctrl_get_name_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}