#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.labq3map2libsmathlibm4x4.c_m4x4_premultiply_by_m4x4_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
