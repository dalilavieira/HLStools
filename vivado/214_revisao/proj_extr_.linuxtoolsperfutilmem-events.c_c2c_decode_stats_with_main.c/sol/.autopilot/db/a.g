#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxtoolsperfutilmem-events.c_c2c_decode_stats_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}