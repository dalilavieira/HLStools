#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
