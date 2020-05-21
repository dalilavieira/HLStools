#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversttyserialip22zilog.c_ip22zilog_convert_to_zs_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
