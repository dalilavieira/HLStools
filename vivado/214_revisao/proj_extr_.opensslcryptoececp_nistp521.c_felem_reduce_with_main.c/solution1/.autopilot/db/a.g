#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.opensslcryptoececp_nistp521.c_felem_reduce_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
