#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}