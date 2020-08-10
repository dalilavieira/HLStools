// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

unsigned char test(int a) {

	unsigned char r[2];
	unsigned short c = 1;

	r[0] = (a >> 8);
	r[1] = c & 0xff;

	return r[0] != r[1];
}

component int main() {

	int a = 1;

	//unsigned char r;
	//r = test(a);	

	return test(a);
}
