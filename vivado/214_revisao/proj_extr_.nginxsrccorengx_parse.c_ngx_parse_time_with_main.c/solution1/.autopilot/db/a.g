#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.nginxsrccorengx_parse.c_ngx_parse_time_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}