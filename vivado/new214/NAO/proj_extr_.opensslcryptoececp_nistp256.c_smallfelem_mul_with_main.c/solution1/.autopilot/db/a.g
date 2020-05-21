#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.opensslcryptoececp_nistp256.c_smallfelem_mul_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
