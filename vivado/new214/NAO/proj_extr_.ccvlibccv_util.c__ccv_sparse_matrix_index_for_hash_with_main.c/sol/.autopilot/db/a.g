#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.ccvlibccv_util.c__ccv_sparse_matrix_index_for_hash_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
