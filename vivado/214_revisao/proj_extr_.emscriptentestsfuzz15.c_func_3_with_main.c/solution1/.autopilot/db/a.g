#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.emscriptentestsfuzz15.c_func_3_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
