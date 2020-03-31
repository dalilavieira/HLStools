#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/ultimaHora/projeto2/sol2/.autopilot/db/a.g.bc ${1+"$@"}
