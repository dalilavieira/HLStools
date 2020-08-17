// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

struct complex {
	int n;
	double *s;
};

component struct complex foo(int n) {
	struct complex t;
	t.n = n;
	t.s = (double *)&n;

	return t;
}

int main() {

	struct complex t;

	t = foo(10);		

	return t.n;
}
