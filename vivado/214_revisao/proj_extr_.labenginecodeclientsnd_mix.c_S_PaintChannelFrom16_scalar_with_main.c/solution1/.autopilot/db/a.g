#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.labenginecodeclientsnd_mix.c_S_PaintChannelFrom16_scalar_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
