#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversgpudrmradeonr600.c_rs780_pm_init_profile_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
