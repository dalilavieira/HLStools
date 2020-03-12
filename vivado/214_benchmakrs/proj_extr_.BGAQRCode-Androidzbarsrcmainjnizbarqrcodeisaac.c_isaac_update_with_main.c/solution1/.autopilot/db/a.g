#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.BGAQRCode-Androidzbarsrcmainjnizbarqrcodeisaac.c_isaac_update_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
