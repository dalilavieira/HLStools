#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxfsafsmisc.c_afs_abort_to_error_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
