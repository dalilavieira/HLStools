#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversstagingxgifbXGI_main_26.c_XGIfb_validate_mode_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}