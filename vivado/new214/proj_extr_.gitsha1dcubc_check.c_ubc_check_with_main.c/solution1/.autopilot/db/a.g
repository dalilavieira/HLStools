#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.gitsha1dcubc_check.c_ubc_check_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
