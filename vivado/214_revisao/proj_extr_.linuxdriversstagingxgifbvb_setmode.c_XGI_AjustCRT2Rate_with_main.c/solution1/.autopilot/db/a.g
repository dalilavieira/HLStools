#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversstagingxgifbvb_setmode.c_XGI_AjustCRT2Rate_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}