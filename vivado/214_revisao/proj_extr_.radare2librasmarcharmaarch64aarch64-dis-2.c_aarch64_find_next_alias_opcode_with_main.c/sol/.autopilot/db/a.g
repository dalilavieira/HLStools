#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.radare2librasmarcharmaarch64aarch64-dis-2.c_aarch64_find_next_alias_opcode_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}