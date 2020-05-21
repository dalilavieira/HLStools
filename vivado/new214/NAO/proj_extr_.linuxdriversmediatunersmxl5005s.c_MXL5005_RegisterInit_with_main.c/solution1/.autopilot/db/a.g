#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediatunersmxl5005s.c_MXL5005_RegisterInit_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
