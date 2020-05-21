#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.kphp-kdbcommoncrc32.c_crc32_partial_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
