#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.labenginecoderenderergl2tr_extramath.c_Mat4Multiply_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
