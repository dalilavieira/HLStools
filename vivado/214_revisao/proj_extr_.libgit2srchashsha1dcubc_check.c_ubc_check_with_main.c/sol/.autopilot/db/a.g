#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.libgit2srchashsha1dcubc_check.c_ubc_check_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}