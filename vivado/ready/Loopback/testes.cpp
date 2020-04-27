#include "loopback.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;
     
    static int16_t data_a[DATA_SIZE];
    static int32_t out[DATA_SIZE];

    for (int k = 0; k < DATA_SIZE; ++k) {
        data_a[k] = k % 1024;
        //out[k] = 0;
    }

    loopback(data_a,out);

    for (int k = 0; k < DATA_SIZE; ++k) {
        printf("%d\n",out[k]);
    }

    return 0;
}
