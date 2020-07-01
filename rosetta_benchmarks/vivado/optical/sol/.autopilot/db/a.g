#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/rosetta-master/vivado/optical/sol/.autopilot/db/a.g.bc ${1+"$@"}
