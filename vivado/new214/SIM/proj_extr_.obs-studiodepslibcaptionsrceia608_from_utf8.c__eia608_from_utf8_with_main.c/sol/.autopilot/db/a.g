#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.obs-studiodepslibcaptionsrceia608_from_utf8.c__eia608_from_utf8_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
