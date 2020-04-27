#include "paeth.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;

    static int16_t part_a[DATA_SIZE];
    static int16_t part_b[DATA_SIZE];
    static int16_t part_c[DATA_SIZE];
    static int32_t out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        part_a[k] = k % 1024;
        part_b[k] = k % 1024;
        part_c[k] = k % 1024;
        out[k] = 0;
    }

    
    paeth(part_a,part_b,part_c,out);

    for (int k = 0; k < DATA_SIZE; ++k) {
        printf("%d\n",out[k]);
    }

    return 0;
}
