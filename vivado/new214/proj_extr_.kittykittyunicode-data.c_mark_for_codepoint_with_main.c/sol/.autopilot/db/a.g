#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.kittykittyunicode-data.c_mark_for_codepoint_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
