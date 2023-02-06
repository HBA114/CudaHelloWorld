// // #include "cuda_runtime.h"
// // #include "device_launch_parameters.h"

// #include <stdio.h>
// #include <cuda.h>


// //! https://www.youtube.com/watch?v=cvo3gnInQ7M&ab_channel=JashKhatri

// using namespace std;

// __global__ void cuda_hello(){
//     printf("Hello World from GPU!\n");
// }


// int main() {
//     cuda_hello<<<1,1>>>();
//     cuda_hello<<<1,1>>>();
//     printf("Hello World from CPU!\n");
//     cudaDeviceSynchronize();
//     cudaDeviceReset();
//     return 0;
// }


#include <stdio.h>

__global__ void print_kernel() {
    printf("Hello from block %d, thread %d\n", blockIdx.x, threadIdx.x);
}

int main() {
    print_kernel<<<10, 10>>>();
    cudaDeviceSynchronize();
}

/*

hbasri@HP-ProBook:~/.../cuda-Projects/HelloWorld$ nvcc -arch compute_50 hello.cu
hbasri@HP-ProBook:~/.../cuda-Projects/HelloWorld$ ./a.out 

*/