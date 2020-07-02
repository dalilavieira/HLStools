#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.Craftsrccube.c_make_cube_faces_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
