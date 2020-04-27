#include "kmeans.h"

int main(int argc, char *argv[]) {

    int idx = 0;
    int test = 0;
  //  int num_dim =8, num_clusters=5;

    static int16_t d_in[DATA_SIZE * 100];
    static int32_t d_out[DATA_SIZE];
    static int16_t centroids[9999 * 100];

    for (int i = 0; i < DATA_SIZE * 8; i++) {
        d_in[i] = i;
    }

    for (int i = 0; i < 5 * 8; i++) {
        centroids[i] = i;
    }
     

    kmeans(d_in, d_out, centroids, 5, 8);

    for (int i = 0; i < DATA_SIZE; i++) {
	printf("%d\n",d_out[i]);
    }

    return 0;
}
