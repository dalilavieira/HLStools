#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.labq3map2libsddslibddslib.c_DDSDecodeAlpha3BitLinear_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}