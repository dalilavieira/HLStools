#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/proj_extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp932ext.h_cp932ext_wctomb_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
