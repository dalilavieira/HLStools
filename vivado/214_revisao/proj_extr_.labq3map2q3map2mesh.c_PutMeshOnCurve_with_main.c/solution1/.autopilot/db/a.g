#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.labq3map2q3map2mesh.c_PutMeshOnCurve_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
