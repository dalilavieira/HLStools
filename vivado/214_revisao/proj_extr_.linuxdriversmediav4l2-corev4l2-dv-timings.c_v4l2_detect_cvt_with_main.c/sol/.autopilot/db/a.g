#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversmediav4l2-corev4l2-dv-timings.c_v4l2_detect_cvt_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}