#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/rosetta-master/vivado/spam/sol/.autopilot/db/a.g.bc ${1+"$@"}
