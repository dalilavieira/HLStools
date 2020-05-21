#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
