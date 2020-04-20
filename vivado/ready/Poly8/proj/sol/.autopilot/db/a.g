#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/ready/Poly8/proj/sol/.autopilot/db/a.g.bc ${1+"$@"}
