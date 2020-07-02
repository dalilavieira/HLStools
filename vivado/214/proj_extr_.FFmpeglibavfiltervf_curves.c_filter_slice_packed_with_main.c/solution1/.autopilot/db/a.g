#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavfiltervf_curves.c_filter_slice_packed_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
