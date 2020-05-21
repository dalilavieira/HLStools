#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.kphp-kdbisearchutf8_utils.c_translit_from_en_to_ru_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
