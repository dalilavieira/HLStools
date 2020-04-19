#include "HLS/hls.h"
#include <stdio.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

component int poly5(int idx) {

    unsigned short *a, *b, *c, *out;

    a = new unsigned short[DATA_SIZE];
    b = new unsigned short[DATA_SIZE];
    c = new unsigned short[DATA_SIZE];
    out = new unsigned short[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        a[k] = k;
        b[k] = k;
        c[k] = k;
        out[k] = 0;
    }

    for (int i = 0; i < 100; i++) {
        
        for (int k = 0; k < DATA_SIZE; ++k) {
            out[k] = ((a[k] * (a[k] * (a[k - 432]) + 62208) - 2985984) * b[k] *
                      (a[k] * (78 * a[k] - 9504) + b[k] * (288 * a[k] - 5184)) +
                      c[k] * b[k] * (a[k] * (a[k] - 207) + 3456 - b[k] * (2 * a[k] - c[k] + 144))) * c[k];
        }
        
    }

    int v = out[idx];

    delete a;
    delete b;
    delete c;
    delete out;

    return v;
}


int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;
     
    int r = poly5(idx);
     printf("%d\n", r);

    return 0;
}

