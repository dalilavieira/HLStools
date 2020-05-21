#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversnetwirelessathath9kantenna.c_ath_ant_div_conf_fast_divbias_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
