#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.BGAQRCode-Androidzbarsrcmainjnilibiconv-1.15libcp50221_0212_ext.h_cp50221_0212_ext_wctomb_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
