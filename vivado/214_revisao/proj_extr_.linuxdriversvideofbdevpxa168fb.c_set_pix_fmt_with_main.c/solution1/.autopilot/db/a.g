#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevpxa168fb.c_set_pix_fmt_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}