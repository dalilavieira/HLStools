#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.reactosdllopenglmesapointers.c_init_exec_pointers_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}