#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/ultimaHora/projeto/sol/.autopilot/db/a.g.bc ${1+"$@"}
