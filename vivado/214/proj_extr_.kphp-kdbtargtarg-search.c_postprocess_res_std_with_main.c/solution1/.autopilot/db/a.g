#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.kphp-kdbtargtarg-search.c_postprocess_res_std_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
