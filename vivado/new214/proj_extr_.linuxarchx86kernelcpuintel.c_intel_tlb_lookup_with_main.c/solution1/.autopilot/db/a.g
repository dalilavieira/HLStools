#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxarchx86kernelcpuintel.c_intel_tlb_lookup_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
