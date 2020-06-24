#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/rosetta-master/vivado/digit/sol/.autopilot/db/a.g.bc ${1+"$@"}
