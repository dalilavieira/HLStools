#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecttadsp.c_tta_filter_process_c_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
