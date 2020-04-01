#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodeccinepakenc.c_calculate_mode_score_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
