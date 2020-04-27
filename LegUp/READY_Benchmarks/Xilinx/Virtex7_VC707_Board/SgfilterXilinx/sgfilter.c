#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)

int sgfilter(int idx) {
	int i, k;
    unsigned short a[DATA_SIZE];
    unsigned short b[DATA_SIZE];
    unsigned short OUT[DATA_SIZE];

    for (k = 0; k < DATA_SIZE; ++k) {
        a[k] = k % 1024;
        b[k] = k % 1024;
        OUT[k] = 0;
    }
    for (i = 0; i < SAMPLES; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            OUT[k] = ((-984 * a[k] - 46) * a[k] - 46) * a[k] +
                     ((92 * a[k] - 39) * a[k] + (-76 * a[k] + 7 * b[k] + 7) * b[k] + 7) * b[k] - 75;
        }
    }
    int v = OUT[idx];
    return v;
}

int main() {
    int idx = 50;
    int r = sgfilter(idx);
    printf("%d\n", r);
    return 0;
}
