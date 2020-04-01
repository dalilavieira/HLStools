#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecj2kenc.c_copy_frame_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
