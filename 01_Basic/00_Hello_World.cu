#include "cuda_runtime.h"
#include <stdio.h>

__global__ void kernel(void) {
}

int main(void) {
	kernel<<<1,1>>> ();
	printf("Hello Cuda!\n");

	return 0;
}