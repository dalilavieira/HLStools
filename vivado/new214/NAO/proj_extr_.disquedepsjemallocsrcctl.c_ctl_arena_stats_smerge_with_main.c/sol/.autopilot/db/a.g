#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.disquedepsjemallocsrcctl.c_ctl_arena_stats_smerge_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
