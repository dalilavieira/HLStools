#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.ccvlibccv_util.c__ccv_sparse_matrix_index_for_hash_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
