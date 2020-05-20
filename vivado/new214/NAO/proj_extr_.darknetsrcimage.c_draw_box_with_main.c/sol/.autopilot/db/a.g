#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.darknetsrcimage.c_draw_box_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
