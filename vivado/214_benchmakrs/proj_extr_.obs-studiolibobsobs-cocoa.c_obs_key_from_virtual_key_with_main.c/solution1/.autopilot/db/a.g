#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.obs-studiolibobsobs-cocoa.c_obs_key_from_virtual_key_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}