#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}