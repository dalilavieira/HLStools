#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/problema/proj_extr_.linuxdriversnetethernetatherosatlxatl1.c_atl1_inc_smb_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
