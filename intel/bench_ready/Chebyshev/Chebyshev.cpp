#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

component int chebyshev(int idx) {

    unsigned short *data_in, *data_out;

    data_in = new unsigned short[DATA_SIZE];
    data_out = new unsigned short[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_in[k] = k;
        data_out[k] = 0;
    }

    //high_resolution_clock::time_point s;
    //duration<double> diff = {};

    for (int i = 0; i < SAMPLES; i++) {
        //s = high_resolution_clock::now();
        for (int k = 0; k < DATA_SIZE; ++k) {
            int A = data_in[k];
            data_out[k] = (unsigned short) (A * (A * (A * ((A * 16 * A) - 20)) + 5));
        }
        //diff += high_resolution_clock::now() - s;
    }

    //double cpuExecTime = (diff.count() * 1000) / SAMPLES;

    //printf("Time(ms) CPU 1 Thread: %5.2lf\n", cpuExecTime);

    int v = data_out[idx];

    delete data_in;
    delete data_out;

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
    
    int r;
    r = chebyshev(idx);

    printf("%d\n",r);

    return 0;
}