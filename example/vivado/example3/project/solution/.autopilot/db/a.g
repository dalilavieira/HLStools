#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/canesche/git/HLStools/example/vivado/example3/project/solution/.autopilot/db/a.g.bc ${1+"$@"}
