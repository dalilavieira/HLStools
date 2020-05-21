#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
