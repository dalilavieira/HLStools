#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxarchpowerpckvmbooke_emulate.c_kvmppc_booke_emulate_mfspr_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
