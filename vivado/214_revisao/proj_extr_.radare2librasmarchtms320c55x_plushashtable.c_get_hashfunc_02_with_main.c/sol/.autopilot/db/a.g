#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.radare2librasmarchtms320c55x_plushashtable.c_get_hashfunc_02_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
