#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversnetethernetsfcef10.c_efx_ef10_filter_match_flags_from_mcdi_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
