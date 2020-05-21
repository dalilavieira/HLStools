#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.linuxdriversgpudrmmediatekmtk_drm_ddp.c_mtk_ddp_mout_en_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
