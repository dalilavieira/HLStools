#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/Fernando_main_seed/main_seed/sim/7/proj/sol/.autopilot/db/a.g.bc ${1+"$@"}
