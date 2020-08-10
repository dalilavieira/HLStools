// Example 3
#include "HLS/hls.h"
#include <stdlib.h>
#include <stdio.h>

typedef union U1 {int dummy;} U1;

component int main() {

	union U1 a;

	a.dummy = 0;	

	return a.dummy;
}
