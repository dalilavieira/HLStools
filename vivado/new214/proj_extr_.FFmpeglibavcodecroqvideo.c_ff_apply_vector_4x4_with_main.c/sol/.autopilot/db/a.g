#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecroqvideo.c_ff_apply_vector_4x4_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
