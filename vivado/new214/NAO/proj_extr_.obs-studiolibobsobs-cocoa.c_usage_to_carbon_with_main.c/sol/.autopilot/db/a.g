#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.obs-studiolibobsobs-cocoa.c_usage_to_carbon_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
