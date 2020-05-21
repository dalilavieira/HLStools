#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversmediapciivtvivtv-yuv.c_ivtv_yuv_window_setup_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
