#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavcodecpngdec.c_handle_small_bpp_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}