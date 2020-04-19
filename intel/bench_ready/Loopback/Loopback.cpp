#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 5)
#define SAMPLES (1)

component int loopback(int idx) {

    unsigned short *a, *out;

    a = new unsigned short[DATA_SIZE];
    out = new unsigned short[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        out[k] = 0;
    }

    for (int i = 0; i < SAMPLES; i++) {
        
        for (int k = 0; k < DATA_SIZE; ++k) {
            out[k] = a[k];
        }
    }

    int v = out[idx];

    delete a;
    delete out;

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
 
    int r = loopback(idx);
    printf("%d\n", r);

    return 0;
}