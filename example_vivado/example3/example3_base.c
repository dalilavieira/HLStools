// Example 3

#include <stdlib.h>
#include <stdio.h>

unsigned char test(int a) {

	unsigned char r;
	unsigned char c;

	r = (a >> 8);

	return r;
}

int main() {

	int a = 1;

	unsigned char r;
	r = test(a);	

	return 0;
}
