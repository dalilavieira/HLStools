#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevsisinit.c_SiS_GetModeID_TV_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
