// Example 3

#include <stdlib.h>
#include <stdio.h>

typedef union U2 {int dummy;} U2;
typedef union U1 {int dummy;} U1 ;

void test(int a) {

	int **b;
	const int *d = b[a&7];
}

int main() {

	int a = 10;

	test(a);	

	return 0;
}
