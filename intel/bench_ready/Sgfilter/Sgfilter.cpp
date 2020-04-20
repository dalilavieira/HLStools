#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE ((1 << 10))
#define SAMPLES (100)

component int sgfilter(int idx) {

    unsigned short a[DATA_SIZE];
    unsigned short b[DATA_SIZE];
    unsigned short OUT[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        b[k] = k % 1024;
        OUT[k] = 0;
    }
    
    for (int i = 0; i < SAMPLES; i++) {
        
        for (int k = 0; k < DATA_SIZE; ++k) {
            OUT[k] = ((-984 * a[k] - 46) * a[k] - 46) * a[k] +
                     ((92 * a[k] - 39) * a[k] + (-76 * a[k] + 7 * b[k] + 7) * b[k] + 7) * b[k] - 75;
        }
        
    }

    int v = OUT[idx];

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;
     
    int r = sgfilter(idx);
    printf("%d\n", r);

    return 0;
}