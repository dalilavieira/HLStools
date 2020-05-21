#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecsnow_dwt.c_ff_snow_horizontal_compose97i_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
