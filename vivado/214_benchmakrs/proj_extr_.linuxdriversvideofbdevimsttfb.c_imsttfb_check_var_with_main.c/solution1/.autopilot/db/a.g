#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevimsttfb.c_imsttfb_check_var_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}