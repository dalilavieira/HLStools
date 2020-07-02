#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecmdct15.c_fft5_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
