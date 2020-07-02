#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/proj_extr_.linuxdriversnetethernetintelixgbeixgbe_dcb_nl.c_ixgbe_copy_dcb_cfg_with_main/sol/.autopilot/db/a.g.bc ${1+"$@"}
