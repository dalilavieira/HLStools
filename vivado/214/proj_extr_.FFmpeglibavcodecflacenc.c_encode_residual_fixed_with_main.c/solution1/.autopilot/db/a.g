#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecflacenc.c_encode_residual_fixed_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
