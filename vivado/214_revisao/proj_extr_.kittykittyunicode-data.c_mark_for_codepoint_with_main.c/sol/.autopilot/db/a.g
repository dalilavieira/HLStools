#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.kittykittyunicode-data.c_mark_for_codepoint_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
