#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.FFmpeglibavdevicepulse_audio_enc.c_pulse_map_channels_to_pulse_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
