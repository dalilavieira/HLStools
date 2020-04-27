#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES 100


int chebyshev(int idx) {
	int i, k, A;
    unsigned short data_in[DATA_SIZE];
    unsigned short data_out[DATA_SIZE];
    for (k = 0; k < DATA_SIZE; ++k) {
        data_in[k] = k;
        data_out[k] = 0;
    }
    for (i = 0; i < SAMPLES; i++) {
        for (k = 0; k < DATA_SIZE; ++k) {
            A = data_in[k];
            data_out[k] = (A * (A * (A * ((A * 16 * A) - 20)) + 5));
        }
    }
    int v = data_out[idx];
    return v;
}

int main() {
    int idx = 50;
    int r = chebyshev(idx);
    printf("%d\n", r);
    return 0;
}

