#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodeccinepakenc.c_calculate_mode_score_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
