#include <stdlib.h>
#include <stdio.h>

component void prod_matrix(int v[][100], int r[][100], int row, int col) {
    int i, j, k;
    for (i = 0; i < row; ++i) {
        for (j = 0; j < col; ++j) {
            for (k = 0; k < row; ++k)
                r[i][j] = v[i][k] * v[k][j]; 
        }
    }
}

int main() {

    int n = 5;
    int v[n][100];
    int r[n][100];
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