#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.emscriptentestsfuzz15.c_func_3_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
