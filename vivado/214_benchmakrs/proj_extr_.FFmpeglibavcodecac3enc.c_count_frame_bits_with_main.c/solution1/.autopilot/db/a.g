#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecac3enc.c_count_frame_bits_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}