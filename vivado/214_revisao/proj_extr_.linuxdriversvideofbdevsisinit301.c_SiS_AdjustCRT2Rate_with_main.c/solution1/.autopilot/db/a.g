#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevsisinit301.c_SiS_AdjustCRT2Rate_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}