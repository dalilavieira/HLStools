#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.tenginesrccorengx_parse_time.c_ngx_parse_http_time_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
