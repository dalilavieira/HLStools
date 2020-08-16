#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/canesche/git/HLStools/example/vivado/example4/project/solution/.autopilot/db/a.g.bc ${1+"$@"}
