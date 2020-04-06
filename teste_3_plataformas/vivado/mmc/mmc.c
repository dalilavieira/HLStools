#include <stdlib.h>
#include <stdio.h>

int mmc(int a, int b) {
    int F1 = a, F2 = b;

    while (F1 != F2){
        if (F1 > F2)
            F2 += b;
        else
            F1 += a;
    }
    return F1;
}

int main(){
    int a = 6, b = 7;
    
    int r;
    r = mmc(a, b);

    printf("mmc of %d and %d is %d\n", a, b, r);

    return 0;
}
