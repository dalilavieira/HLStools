#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.FFmpeglibavdevicepulse_audio_enc.c_pulse_map_channels_to_pulse_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
