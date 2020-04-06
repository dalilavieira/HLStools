extern void __legup_label(char* label);
#include <stdio.h>

void sum_vector(int *a, int *b, int *c, int n) {
	int i;
    for (i = 0; i < n; ++i) {
        c[i] = a[i] + b[i];
    }
}

int main(){
    int n = 100;
    int i;

    int a[n], b[n], c[n];
    for (i = 0; i < n; i++) {
        a[i] = i;
        b[i] = n-i;
        c[i] = 0;
    }

    sum_vector(a, b, c, n);

    for (i = 0; i < n; ++i) {
        printf("%d + %d = %d\n", a[i], b[i], c[i]);
    }

    return 0;
}
