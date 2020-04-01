#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecalphasimple_idct_alpha.c_idct_col_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
