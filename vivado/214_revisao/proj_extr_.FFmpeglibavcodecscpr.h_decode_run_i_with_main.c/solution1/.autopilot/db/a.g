#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecscpr.h_decode_run_i_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
