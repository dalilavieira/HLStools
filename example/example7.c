// Example 3

#include <stdlib.h>
#include <stdio.h>

int static foo(int t) {
	return t;
}

int main() {

	int n = 5, t;

	t = foo(n);		

	return t;
}
