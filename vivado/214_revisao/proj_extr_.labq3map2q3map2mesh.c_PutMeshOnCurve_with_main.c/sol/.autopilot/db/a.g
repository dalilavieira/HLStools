#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.labq3map2q3map2mesh.c_PutMeshOnCurve_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
