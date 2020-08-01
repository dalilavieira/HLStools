// Example 3

#include <stdlib.h>
#include <stdio.h>

int *test(void *a) {

	int *b = a;

	return b;
}

int main() {

	int *a, *b;

	b = test(a);	

	return 0;
}
