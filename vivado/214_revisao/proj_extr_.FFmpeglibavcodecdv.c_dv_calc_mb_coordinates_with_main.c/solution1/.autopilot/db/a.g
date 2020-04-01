#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
