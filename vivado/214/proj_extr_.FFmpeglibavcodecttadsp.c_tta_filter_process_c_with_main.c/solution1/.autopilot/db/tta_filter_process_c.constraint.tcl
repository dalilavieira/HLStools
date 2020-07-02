set clock_constraint { \
    name clk \
    module tta_filter_process_c \
    port ap_clk \
    period 10 \
    uncertainty 1.25 \
}

set all_path {}

set false_path {}

