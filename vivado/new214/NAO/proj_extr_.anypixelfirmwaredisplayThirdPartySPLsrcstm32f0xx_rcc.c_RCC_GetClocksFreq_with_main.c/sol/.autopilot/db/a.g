#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/new214/NAO/proj_extr_.anypixelfirmwaredisplayThirdPartySPLsrcstm32f0xx_rcc.c_RCC_GetClocksFreq_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
