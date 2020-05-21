#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversvideofbdevnvidianv_hw.c_nv4CalcArbitration_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
