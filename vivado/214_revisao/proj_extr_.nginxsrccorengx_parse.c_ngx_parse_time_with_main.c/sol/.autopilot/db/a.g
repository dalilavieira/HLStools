#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/HLStools/vivado/214_revisao/proj_extr_.nginxsrccorengx_parse.c_ngx_parse_time_with_main.c/sol/.autopilot/db/a.g.bc ${1+"$@"}