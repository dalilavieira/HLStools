#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversvideofbdevrivariva_hw.c_nv10CalcArbitration_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
