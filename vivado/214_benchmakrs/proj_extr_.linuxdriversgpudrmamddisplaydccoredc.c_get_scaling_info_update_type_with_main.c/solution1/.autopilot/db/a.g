#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversgpudrmamddisplaydccoredc.c_get_scaling_info_update_type_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}