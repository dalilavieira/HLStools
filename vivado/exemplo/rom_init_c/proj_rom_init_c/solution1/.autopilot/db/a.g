#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/rom_init_c/proj_rom_init_c/solution1/.autopilot/db/a.g.bc ${1+"$@"}