#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecdv.c_dv_calc_mb_coordinates_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
