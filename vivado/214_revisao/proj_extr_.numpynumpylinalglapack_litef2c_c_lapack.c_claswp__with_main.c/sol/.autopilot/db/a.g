#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.numpynumpylinalglapack_litef2c_c_lapack.c_claswp__with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
