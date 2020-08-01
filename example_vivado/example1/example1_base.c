// Example simple

#include <stdlib.h>
#include <stdio.h>

int test(int a) {

	a = a + 5;

	return a;
}

int main() {

	int a = 10;
	int b = test(a);	

	return 0;
}
