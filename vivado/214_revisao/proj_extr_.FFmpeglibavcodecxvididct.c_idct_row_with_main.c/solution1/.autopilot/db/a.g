#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecxvididct.c_idct_row_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
