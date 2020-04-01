#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxcryptocast5_generic.c_key_schedule_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
