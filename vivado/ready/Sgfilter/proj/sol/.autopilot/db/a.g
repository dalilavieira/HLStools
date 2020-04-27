#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dalila/HLStools/vivado/ready/Sgfilter/proj/sol/.autopilot/db/a.g.bc ${1+"$@"}
