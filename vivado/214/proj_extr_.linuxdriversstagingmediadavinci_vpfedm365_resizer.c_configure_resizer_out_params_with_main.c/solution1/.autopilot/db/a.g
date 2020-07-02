#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversstagingmediadavinci_vpfedm365_resizer.c_configure_resizer_out_params_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
