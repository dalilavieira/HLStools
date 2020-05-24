#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.opensslcryptoasn1a_utf8.c_UTF8_getc_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
