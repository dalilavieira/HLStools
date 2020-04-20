#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/ready/Qspline/proj/sol/.autopilot/db/a.g.bc ${1+"$@"}
