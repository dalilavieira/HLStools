#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.labenginecoderenderergl2tr_extramath.c_Mat4Multiply_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}