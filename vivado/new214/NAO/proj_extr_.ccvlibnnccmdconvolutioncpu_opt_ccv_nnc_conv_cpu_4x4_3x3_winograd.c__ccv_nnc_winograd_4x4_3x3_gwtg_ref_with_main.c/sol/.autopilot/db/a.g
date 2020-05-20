#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.ccvlibnnccmdconvolutioncpu_opt_ccv_nnc_conv_cpu_4x4_3x3_winograd.c__ccv_nnc_winograd_4x4_3x3_gwtg_ref_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
