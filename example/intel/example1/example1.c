// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

component char foo(void *a) {

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
