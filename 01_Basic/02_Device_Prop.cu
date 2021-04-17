#include "cuda_runtime.h"
#include <stdio.h>

int main(void) {
	cudaDeviceProp prop;
	int count;

	cudaGetDeviceCount(&count);
	for (int i=0; i<count; i++){
		cudaGetDeviceProperties(&prop, i);

		printf("---General information for device %d---\n", i);
		printf("Name : %s\n", prop.name);
		printf("Compute Capability : %d.%d\n", prop.major, prop.minor);

		printf("\n---Memory information for device %d---\n", i);
		printf("Total global Mem : %lu\n", prop.totalGlobalMem);
		printf("Total constant Mem : %lu\n", prop.totalConstMem);
	}

	return 0;
}