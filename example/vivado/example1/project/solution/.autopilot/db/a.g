#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/canesche/git/HLStools/example/vivado/example1/project/solution/.autopilot/db/a.g.bc ${1+"$@"}
