#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediacommonv4l2-tpgv4l2-tpg-core.c_tpg_s_fourcc_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
