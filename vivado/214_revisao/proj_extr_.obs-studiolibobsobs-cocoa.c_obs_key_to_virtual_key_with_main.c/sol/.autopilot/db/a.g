#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.obs-studiolibobsobs-cocoa.c_obs_key_to_virtual_key_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
