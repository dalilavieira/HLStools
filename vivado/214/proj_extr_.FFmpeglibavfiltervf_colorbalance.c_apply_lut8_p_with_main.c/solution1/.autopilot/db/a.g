#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavfiltervf_colorbalance.c_apply_lut8_p_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
