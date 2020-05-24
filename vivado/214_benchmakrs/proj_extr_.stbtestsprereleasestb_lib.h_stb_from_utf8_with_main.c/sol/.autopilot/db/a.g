#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.stbtestsprereleasestb_lib.h_stb_from_utf8_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
