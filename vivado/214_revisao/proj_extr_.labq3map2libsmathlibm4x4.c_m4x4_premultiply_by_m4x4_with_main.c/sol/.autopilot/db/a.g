#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.labq3map2libsmathlibm4x4.c_m4x4_premultiply_by_m4x4_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}