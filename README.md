# GPGPU CUDA TUTORIAL

## Environment

- OS : Windows
- IDE : Visual Studio 2019
- GPU : GeForce GTX 3080 10GB (GPU) / Compute Capability 8.6
- CUDA : 11.1

## CUDA Device Check

```cuda
#include <stdio.h>

int count;
cudaGetDeviceCount(&count);

printf("available cuda device : %d", count);
```

```cmd
(cmd)>available cuda device : 1
```
