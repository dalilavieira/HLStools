#include "sgfilter.h"

int main(int argc, char *argv[]) {

    static int16_t data_a[DATA_SIZE];
    static int16_t data_b[DATA_SIZE];
    static int32_t OUT[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_a[k] = k % 1024;
        data_b[k] = k % 1024;
        OUT[k] = 0;
    }

    int idx = 0;
    int test = 0;

    sgfilter(data_a,data_b,OUT);

    for (int k = 0; k < DATA_SIZE; ++k) {
        printf("%d\n", OUT[k]);
    }

    return 0;
}
