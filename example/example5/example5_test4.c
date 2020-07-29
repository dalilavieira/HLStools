// Example 3

#include <stdlib.h>
#include <stdio.h>

typedef union U1 {int dummy;} U1;

union U1* test(union U1 a, int b) {

	a.dummy = b;

	return &a;
}

int main() {

	union U1 a;
	union U1 *c;

	int b;

	c = test(a, b);	

	return 0;
}
