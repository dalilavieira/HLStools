#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
