#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.radare2librasmarchtms320c55x_plushashtable.c_get_hashfunc_02_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}