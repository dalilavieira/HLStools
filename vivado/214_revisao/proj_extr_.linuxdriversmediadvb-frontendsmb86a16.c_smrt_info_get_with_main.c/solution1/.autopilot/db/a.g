#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversmediadvb-frontendsmb86a16.c_smrt_info_get_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
