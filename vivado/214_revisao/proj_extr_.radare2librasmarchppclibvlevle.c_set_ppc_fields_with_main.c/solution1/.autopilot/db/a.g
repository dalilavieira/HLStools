#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.radare2librasmarchppclibvlevle.c_set_ppc_fields_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}