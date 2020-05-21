#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.tmuxscreen.c_screen_check_selection_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
