//
// CUDA 11.7
// _0001multiples_of_3_or_5.cu
// 
// Copyright 2025 @GitHub JoergEm
// 
// This program is WITHOUT ANY WARRANTY; without even the implied
// warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
//

#include <iostream>
#include <cuda_runtime.h>
#include <stdio.h>

__global__ void _0001multiples_of_3_or_5(int* result) {

    int nummer = blockIdx.x * blockDim.x + threadIdx.x + 1;
    if (nummer < 1000) {
        if (nummer % 3 == 0 || nummer % 5 == 0) {
            atomicAdd(result, nummer);
        }
    }
}

int main() {
    int *d_result;
    int summe = 0;

    cudaMalloc(&d_result, sizeof(int));
    cudaMemcpy(d_result, &summe, sizeof(int), cudaMemcpyHostToDevice);

    // 999 threads 1..999?
    _0001multiples_of_3_or_5<<<(999 + 255) / 256, 256>>>(d_result);

    cudaError_t errSync = cudaGetLastError();
    cudaError_t errAsync = cudaDeviceSynchronize();

    if (errSync != cudaSuccess)
        printf("Sync error: %s\n", cudaGetErrorString(errSync));
    if (errAsync != cudaSuccess)
        printf("Async error: %s\n", cudaGetErrorString(errAsync));

    cudaMemcpy(&summe, d_result, sizeof(int), cudaMemcpyDeviceToHost);

    printf("%d\n", summe);

    cudaFree(d_result);

    return 0;
}