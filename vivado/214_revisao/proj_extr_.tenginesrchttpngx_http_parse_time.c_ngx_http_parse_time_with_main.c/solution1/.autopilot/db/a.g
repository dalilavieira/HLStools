#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/vivado/aut/proj_extr_.tenginesrchttpngx_http_parse_time.c_ngx_http_parse_time_with_main.c/solution1/.autopilot/db/a.g.bc ${1+"$@"}
