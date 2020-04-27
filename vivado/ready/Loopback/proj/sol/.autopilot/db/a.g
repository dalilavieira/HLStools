#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/dalila/HLStools/vivado/ready/Loopback/proj/sol/.autopilot/db/a.g.bc ${1+"$@"}
