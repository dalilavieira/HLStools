#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.radare2librbinpdbtpi.c_init_stype_info_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}