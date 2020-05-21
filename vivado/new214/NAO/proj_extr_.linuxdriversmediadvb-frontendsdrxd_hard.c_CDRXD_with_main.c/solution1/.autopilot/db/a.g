#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediadvb-frontendsdrxd_hard.c_CDRXD_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
