#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.radare2librbinpdbtpi.c_init_stype_info_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}