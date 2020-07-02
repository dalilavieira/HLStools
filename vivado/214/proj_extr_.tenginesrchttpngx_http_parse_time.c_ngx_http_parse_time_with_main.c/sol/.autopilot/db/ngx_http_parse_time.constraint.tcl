set clock_constraint { \
    name clk \
    module ngx_http_parse_time \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

