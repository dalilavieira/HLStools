#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavfilteraf_anequalizer.c_chebyshev2_fo_section_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
