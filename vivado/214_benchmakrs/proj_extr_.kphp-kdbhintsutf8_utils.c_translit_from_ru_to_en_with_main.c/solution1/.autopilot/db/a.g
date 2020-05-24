#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_benchmakrs/proj_extr_.kphp-kdbhintsutf8_utils.c_translit_from_ru_to_en_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
