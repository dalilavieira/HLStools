#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.FFmpeglibavcodecsnow_dwt.c_ff_snow_horizontal_compose97i_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
