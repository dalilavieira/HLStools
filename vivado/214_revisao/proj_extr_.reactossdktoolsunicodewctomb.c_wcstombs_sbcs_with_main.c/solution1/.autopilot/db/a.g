#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.reactossdktoolsunicodewctomb.c_wcstombs_sbcs_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
