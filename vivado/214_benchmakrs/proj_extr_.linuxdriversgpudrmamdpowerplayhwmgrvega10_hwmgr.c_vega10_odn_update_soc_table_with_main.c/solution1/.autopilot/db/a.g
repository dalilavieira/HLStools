#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversgpudrmamdpowerplayhwmgrvega10_hwmgr.c_vega10_odn_update_soc_table_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}