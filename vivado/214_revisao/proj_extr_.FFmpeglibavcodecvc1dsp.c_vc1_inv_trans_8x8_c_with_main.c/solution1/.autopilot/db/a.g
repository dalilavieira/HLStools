#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecvc1dsp.c_vc1_inv_trans_8x8_c_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}