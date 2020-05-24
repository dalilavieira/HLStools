#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.tmuxscreen.c_screen_check_selection_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
