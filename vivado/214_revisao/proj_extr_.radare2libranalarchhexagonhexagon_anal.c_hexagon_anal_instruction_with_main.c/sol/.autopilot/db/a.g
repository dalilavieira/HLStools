#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.radare2libranalarchhexagonhexagon_anal.c_hexagon_anal_instruction_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
