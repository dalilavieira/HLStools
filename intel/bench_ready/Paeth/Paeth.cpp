#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

component int paeth(int idx) {

    unsigned short *a, *b, *c, *out;

    unsigned short a[DATA_SIZE];
    unsigned short b[DATA_SIZE];
    unsigned short c[DATA_SIZE];
    unsigned short out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        b[k] = k % 1024;
        c[k] = k % 1024;
        out[k] = 0;
    }

    for (int i = 0; i < 100; i++) {
        
        for (int k = 0; k < DATA_SIZE; ++k) {
            int pas, pbs, pcs;
            bool test_1, test_2, test_3, test_4;
            pas = b[k] - c[k];
            pas = (pas < 0) ? -pas : pas;
            pbs = a[k] - c[k];
            pbs = (pbs < 0) ? -pbs : pbs;
            pcs = a[k] | (b[k] - 2 * c[k]);
            pcs = (pcs < 0) ? -pcs : pcs;
            test_1 = pas <= pbs;
            test_2 = pas <= pcs;
            test_4 = pbs <= pcs;
            test_3 = test_1 && test_2;
            if (test_3) out[k] = a[k];
            else if (test_4) out[k] = b[k];
            else out[k] = c[k];
        }
    }

    int v = out[idx];

    return v;
}

int main(int argc, char *argv[]) {

    int idx = 0;
    
    int r = paeth(idx);
    printf("%d\n", r);

    return 0;
}

