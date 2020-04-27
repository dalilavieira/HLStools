#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int loopback(int idx) {
	int i, k;
    unsigned short a[DATA_SIZE];
    unsigned short out[DATA_SIZE];
    for (k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        out[k] = 0;
    }
    for (i = 0; i < SAMPLES; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            out[k] = a[k];
        }
    }
    int v = out[idx];
    return v;
}

int main() {
    int idx = 50;
    int r = loopback(idx);
    printf("%d\n", r);
    return 0;
}
