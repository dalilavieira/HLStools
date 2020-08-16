// Example 3

#include <stdlib.h>
#include <stdio.h>

int foo(int t) {
	
	if(t > 0){
		return 1;
	}
	return foo(t-1) + 1;
}

int main() {

	int n = 10;
	
	return foo(n);
}
