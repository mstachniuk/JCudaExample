extern "C"
__global__ void add(int n, float *a, float *b, float *sum)
{
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    while(i < n) {
		sum[i] = a[i] + b[i];
	    i = i + blockDim.x * gridDim.x;
    }
}
