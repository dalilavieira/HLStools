// Example simple const initialized

#include <stdlib.h>
#include <stdio.h>

int test(int a) {

	a = a + 5;

	return a;
}

int main() {

	const int a = 10; // const initialized
	int b = test(a);	

	return 0;
}
