#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversgpudrmradeonr100.c_r100_cs_track_clear_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
