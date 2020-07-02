set clock_constraint { \
    name clk \
    module calc_crc8 \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

