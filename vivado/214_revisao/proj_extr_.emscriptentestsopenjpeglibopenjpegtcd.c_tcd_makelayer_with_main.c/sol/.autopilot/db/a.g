#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.emscriptentestsopenjpeglibopenjpegtcd.c_tcd_makelayer_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
