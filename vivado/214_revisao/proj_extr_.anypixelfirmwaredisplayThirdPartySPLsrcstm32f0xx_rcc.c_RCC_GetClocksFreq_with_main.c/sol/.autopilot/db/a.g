#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.anypixelfirmwaredisplayThirdPartySPLsrcstm32f0xx_rcc.c_RCC_GetClocksFreq_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}