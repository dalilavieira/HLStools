#include <stdlib.h>
#include <stdio.h>
#define n 100

void prod_matrix(__int32_t v[100][100], __int32_t r[100][100], int row, int col) {
    int i, j, k;
    for (i = 0; i < row; ++i) {
        for (j = 0; j < col; ++j) {
            for (k = 0; k < row; ++k)
                r[i][j] = v[i][k] * v[k][j]; 
        }
    }
}

int main() {

    int v[n][n];
    int r[n][n];
    int i, j;
    for (i = 0; i < n; ++i) {
        for (j = 0; j <n; ++j) {
            v[i][j] = i * n + j;
        }
    }

    prod_matrix(v, r, n, n);

    for (i = 0; i < n; ++i) {
        for (j = 0; j <n; ++j) {
            printf("%d ", v[i][j]);
        }
        printf("\n");
    }

    return 0;
}
