#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/example_vivado/example3/base/sol/.autopilot/db/a.g.bc ${1+"$@"}
