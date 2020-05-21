#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
