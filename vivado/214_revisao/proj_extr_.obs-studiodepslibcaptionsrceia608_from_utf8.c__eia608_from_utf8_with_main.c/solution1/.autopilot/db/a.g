#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.obs-studiodepslibcaptionsrceia608_from_utf8.c__eia608_from_utf8_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
