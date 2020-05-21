#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.reactosdllopenglmesapointers.c_init_exec_pointers_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
