#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.FFmpeglibavfilteraf_anequalizer.c_chebyshev1_fo_section_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}