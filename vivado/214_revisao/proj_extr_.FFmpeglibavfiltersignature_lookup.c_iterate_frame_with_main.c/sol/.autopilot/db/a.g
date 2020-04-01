#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.FFmpeglibavfiltersignature_lookup.c_iterate_frame_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
