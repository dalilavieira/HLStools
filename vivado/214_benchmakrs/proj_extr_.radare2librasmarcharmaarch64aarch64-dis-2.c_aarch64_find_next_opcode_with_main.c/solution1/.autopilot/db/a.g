#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_opcode_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
