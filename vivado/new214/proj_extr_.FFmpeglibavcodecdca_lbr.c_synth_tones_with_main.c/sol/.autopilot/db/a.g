#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecdca_lbr.c_synth_tones_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
