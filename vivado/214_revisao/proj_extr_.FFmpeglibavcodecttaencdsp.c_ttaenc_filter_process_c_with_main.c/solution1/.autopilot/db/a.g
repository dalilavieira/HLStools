#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecttaencdsp.c_ttaenc_filter_process_c_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}