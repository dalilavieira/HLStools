#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/rosetta-master/vivado/face/sol/.autopilot/db/a.g.bc ${1+"$@"}
