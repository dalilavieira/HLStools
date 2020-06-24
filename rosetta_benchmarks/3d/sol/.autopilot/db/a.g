#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/rosetta-master/vivado/3d/sol/.autopilot/db/a.g.bc ${1+"$@"}
