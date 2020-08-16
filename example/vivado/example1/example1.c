// Example 3

#include <stdlib.h>
#include <stdio.h>

char foo(void *a) {

	char *b = (char *) a;

	return *b;
}

int main() {

	int c = 0; 

	char b;
	int *a = &c;

	b = foo(a);	

	return (unsigned long) b;
}
