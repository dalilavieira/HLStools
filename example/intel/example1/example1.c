// Example 3

#include <stdlib.h>
#include <stdio.h>

char *test(void *a) {

	int *b = (char *) a;

	return b;
}

int main() {

	int c = 0; 

	int *b;
	int *a = &c;

	b = test(a);	

	return (unsigned long) b;
}
