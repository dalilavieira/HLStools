#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.anypixelfirmwaredisplayThirdPartySPLsrcstm32f0xx_rcc.c_RCC_GetClocksFreq_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
