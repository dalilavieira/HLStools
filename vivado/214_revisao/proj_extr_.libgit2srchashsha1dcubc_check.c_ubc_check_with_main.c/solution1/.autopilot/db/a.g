#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.libgit2srchashsha1dcubc_check.c_ubc_check_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
