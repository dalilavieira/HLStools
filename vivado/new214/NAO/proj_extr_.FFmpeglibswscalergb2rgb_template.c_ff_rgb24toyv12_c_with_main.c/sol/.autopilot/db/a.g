#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.FFmpeglibswscalergb2rgb_template.c_ff_rgb24toyv12_c_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
