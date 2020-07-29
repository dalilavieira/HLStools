// Example 3

#include <stdlib.h>
#include <stdio.h>

void test(void *a) {

	int *b = a;
}

int main() {

	int *a;

	test(a);	

	return 0;
}
