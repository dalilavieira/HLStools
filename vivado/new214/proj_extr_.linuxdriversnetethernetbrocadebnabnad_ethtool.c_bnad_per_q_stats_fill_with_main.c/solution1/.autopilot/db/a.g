#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversnetethernetbrocadebnabnad_ethtool.c_bnad_per_q_stats_fill_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
