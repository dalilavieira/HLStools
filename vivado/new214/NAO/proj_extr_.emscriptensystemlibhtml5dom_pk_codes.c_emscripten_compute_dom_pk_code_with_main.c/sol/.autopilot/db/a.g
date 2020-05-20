#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.emscriptensystemlibhtml5dom_pk_codes.c_emscripten_compute_dom_pk_code_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
