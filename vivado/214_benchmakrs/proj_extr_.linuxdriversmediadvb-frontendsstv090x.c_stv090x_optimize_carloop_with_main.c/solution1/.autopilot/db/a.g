#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediadvb-frontendsstv090x.c_stv090x_optimize_carloop_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}