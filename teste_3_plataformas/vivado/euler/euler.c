#include <stdlib.h>
#include <stdio.h>

long long int fatorial (int n){

    if (n == 0)
        return 1;

    long long int y = 1;
    int i;
    for (i = 1; i <= n; i++){
        y *= i;
    }

    return y;
}

double euler (int n){

    double soma = 0;

    for (int i = 0; i < n; i++){
        soma += 1.0/fatorial(i);
    }
    return soma;

}

int main(){

    int m = 10;
    
    double v = euler(m);
    printf("euler = %lf\n", v);

    return 0;
}
