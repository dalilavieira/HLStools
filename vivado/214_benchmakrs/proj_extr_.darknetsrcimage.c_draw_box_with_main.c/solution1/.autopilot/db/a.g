#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.darknetsrcimage.c_draw_box_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
