#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.opensslcryptoeccurve25519.c_fe_sq_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
