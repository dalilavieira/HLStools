// Example 3

#include <stdlib.h>
#include <stdio.h>

unsigned char test(int a) {

	unsigned char *r;
	unsigned short c;

	r[0] = (a >> 8);
	r[1] = c & 0xff;

	return r;
}

int main() {

	int a = 1;

	unsigned char r;
	r = test(a);	

	return 0;
}
