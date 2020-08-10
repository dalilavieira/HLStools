// Example: return pointer

#include <stdlib.h>
#include <stdio.h>

int *test(int a) {

	int *b = 0;

	return b;
}

int main(int argc, char **argv) {

	int a = 10;
	int *b;

	b = test(a);	

	return *b;
}
