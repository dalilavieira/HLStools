// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

typedef union U1 {int dummy;} U1;

void test(union U1 a, int b) {

	a.dummy = b;

}

component int main() {

	union U1 a;

	int b;

	test(a, b);	

	return 0;
}
