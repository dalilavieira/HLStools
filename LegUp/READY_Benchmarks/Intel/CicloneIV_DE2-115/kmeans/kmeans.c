#include <stdio.h>
#include <stdlib.h>

#define DATA_SIZE (1 << 10)
#define SAMPLES (100)
#define UINT16_MAX (65535U)

int kmeans(int idx, int num_clusters, int num_dim) {
	int i, j, sp;
	unsigned short c;
    unsigned short data_in[DATA_SIZE * num_dim];
    unsigned short data_out[DATA_SIZE];
    unsigned short centroids[num_clusters * num_dim];

    for (i = 0; i < DATA_SIZE * num_dim; i++) {
        data_in[i] = i;
    }
    for (i = 0; i < DATA_SIZE; i++) {
        data_out[i] = 0;
    }
    for (i = 0; i < num_clusters * num_dim; i++) {
        centroids[i] = i;
    }
    for (sp = 0; sp < SAMPLES; sp++) {
        for (i = 0; i < DATA_SIZE; i++) {
            unsigned short min = UINT16_MAX, min_id = 0;
            for (c = 0; c < num_clusters; c++) {
                unsigned short sum = 0;
                for (j = 0; j < num_dim; j++) {
                    sum += data_in[j * num_dim + i] - centroids[c * num_dim + j];
                }
                if (sum <= min) {
                    min = sum;
                    min_id = c;
                }
            }
            data_out[i] = min_id;
        }
    }
    int v = data_out[idx];
    return v;
}

int main() {
    int idx = 50;
    int r = kmeans(idx, 5, 8);
    printf("%d\n", r);
    return 0;
}
