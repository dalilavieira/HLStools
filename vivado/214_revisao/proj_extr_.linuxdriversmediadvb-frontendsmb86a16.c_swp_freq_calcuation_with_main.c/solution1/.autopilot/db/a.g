#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediadvb-frontendsmb86a16.c_swp_freq_calcuation_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
