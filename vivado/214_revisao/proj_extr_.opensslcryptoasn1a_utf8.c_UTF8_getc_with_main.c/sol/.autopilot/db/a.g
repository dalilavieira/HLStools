#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.opensslcryptoasn1a_utf8.c_UTF8_getc_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}