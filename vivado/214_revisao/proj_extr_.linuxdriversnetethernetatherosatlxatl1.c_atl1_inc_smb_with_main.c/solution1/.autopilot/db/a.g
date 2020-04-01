#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversnetethernetatherosatlxatl1.c_atl1_inc_smb_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
