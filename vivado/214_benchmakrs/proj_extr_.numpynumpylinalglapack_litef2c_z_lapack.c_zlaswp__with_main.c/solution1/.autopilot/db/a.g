#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.numpynumpylinalglapack_litef2c_z_lapack.c_zlaswp__with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
