#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

component int chebyshev(int idx) {

     *data_in, *data_out;

    unsigned short data_in[DATA_SIZE];
    unsigned short data_out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_in[k] = k;
        data_out[k] = 0;
    }

    for (int i = 0; i < SAMPLES; i++) {
        for (int k = 0; k < DATA_SIZE; ++k) {
            int A = data_in[k];
            data_out[k] = (unsigned short) (A * (A * (A * ((A * 16 * A) - 20)) + 5));
        }
    }

    int v = data_out[idx];

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
    
    int r;
    r = chebyshev(idx);

    printf("%d\n",r);

    return 0;
}