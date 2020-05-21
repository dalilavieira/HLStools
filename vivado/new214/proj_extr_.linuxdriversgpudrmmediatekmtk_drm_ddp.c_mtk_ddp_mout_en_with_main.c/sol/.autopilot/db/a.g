#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}
