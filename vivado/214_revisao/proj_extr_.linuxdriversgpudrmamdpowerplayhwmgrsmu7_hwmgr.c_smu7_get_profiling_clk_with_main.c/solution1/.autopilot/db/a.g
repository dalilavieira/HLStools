#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversgpudrmamdpowerplayhwmgrsmu7_hwmgr.c_smu7_get_profiling_clk_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
