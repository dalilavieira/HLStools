#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/Fernando_main_seed/main_seed/nao/1/proj/sol/.autopilot/db/a.g.bc ${1+"$@"}