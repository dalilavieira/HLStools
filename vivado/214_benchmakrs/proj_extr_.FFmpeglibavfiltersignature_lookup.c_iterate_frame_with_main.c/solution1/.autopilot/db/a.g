#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavfiltersignature_lookup.c_iterate_frame_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}