#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediacommoncx2341x.c_cx2341x_set_ctrl_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
