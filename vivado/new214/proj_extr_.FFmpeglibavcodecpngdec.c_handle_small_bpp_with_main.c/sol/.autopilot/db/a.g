#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.FFmpeglibavcodecpngdec.c_handle_small_bpp_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
