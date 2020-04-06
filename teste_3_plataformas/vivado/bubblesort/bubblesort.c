#include <stdlib.h>
#include <stdio.h>
# define n 100

void bubbleSort(__int32_t v[n]) {
    int i, j;
    for (i = 0; i < n; ++i) {
        for (j = i+1; j < n; ++j) {
            if (v[i] > v[j]) {
                int aux = v[i];
                v[i] = v[j];
                v[j] = aux;
            }
        }
    }
}

int main() {

    int v[n];
    int i;
    for (i = 0; i < n; ++i) {
        v[i] = n-i;
    }

    bubbleSort(v);

    for (i = 0; i < n; ++i) {
        printf("%d ", v[i]);
    }
    printf("\n");

    return 0;
}
