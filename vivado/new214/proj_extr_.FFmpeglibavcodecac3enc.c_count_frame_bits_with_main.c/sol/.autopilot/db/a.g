#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecac3enc.c_count_frame_bits_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
