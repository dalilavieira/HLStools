#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversnetethernetmellanoxmlx5corecmd.c_mlx5_command_str_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
