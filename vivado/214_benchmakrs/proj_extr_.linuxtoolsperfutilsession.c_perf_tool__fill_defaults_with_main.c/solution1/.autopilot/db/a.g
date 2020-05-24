#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.linuxtoolsperfutilsession.c_perf_tool__fill_defaults_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
