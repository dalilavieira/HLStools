#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversgpudrmradeonr100.c_r100_cs_track_clear_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
