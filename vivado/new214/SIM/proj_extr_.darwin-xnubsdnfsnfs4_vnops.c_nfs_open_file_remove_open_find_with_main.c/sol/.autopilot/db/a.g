#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.darwin-xnubsdnfsnfs4_vnops.c_nfs_open_file_remove_open_find_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
