#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.obs-studiolibobsobs-nix.c_get_keysym_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
