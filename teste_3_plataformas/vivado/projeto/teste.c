#include <stdio.h>
#define n 100

void sum_vector(__int32_t a[n], __int32_t b[n], __int32_t c[n]) {

    for (int i = 0; i < n; ++i) {
        c[i] = a[i] + b[i];
    }
}

int main(){
    int i;

    int a[n], b[n], c[n];
    for (i = 0; i < n; i++) {
        a[i] = i;
        b[i] = n-i;
        c[i] = 0;
    }

    sum_vector(a, b, c);

    for (i = 0; i < n; ++i) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
    }

    return 0;
}