#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/problema/proj_extr_.linuxdriversisdnhardwareeiconmessage.c_chi_to_channel_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
