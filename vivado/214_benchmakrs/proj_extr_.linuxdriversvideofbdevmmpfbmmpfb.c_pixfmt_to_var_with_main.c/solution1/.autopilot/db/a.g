#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevmmpfbmmpfb.c_pixfmt_to_var_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
