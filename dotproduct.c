#include "dotproduct.h"
#include <stdio.h>
#include <stdlib.h>
#include <immintrin.h>

float* complex_Mult(float *A, float *B, float *C, int N)
{
	for(int i=0; i<N; i+=2)
	{
		float Ar = A[i];
		float Ai = A[i+1];

		float Br = B[i];
		float Bi = B[i+1];

		C[i] = Ar * Br - Ai * Bi;
		C[i+1] = Ar * Bi + Ai * Br;
	}
	return C;
}

float* vect_complex_Mult_v1(float *A, float *B, float *C, int N)
{
	const __m256 conj = _mm256_set_ps(-1, 1, -1, 1, -1, 1, -1, 1);
	__m256* a = (__m256*)A;
	__m256* b = (__m256*)B;
	__m256* c = (__m256*)C;
	const int n = (N/8);
	for(int i=0; i<n; i++)
	{
		__m256 cr = _mm256_mul_ps(a[i], b[i]);
		cr = _mm256_mul_ps(cr, conj);
		__m256 bflip = _mm256_permute_ps(b[i], 0b10110001);
		__m256 ci = _mm256_mul_ps(a[i], bflip);
		c[i] = _mm256_hadd_ps(cr,ci);
		c[i] = _mm256_permute_ps(c[i], 0b11011000);	
	}	
	float* req_C = (float*)c;
	return req_C;
}

float* vect_complex_Mult_v2(float *A, float *B, float *C, int N)
{
	const __m256 conj = _mm256_set_ps(-1, 1, -1, 1, -1, 1, -1, 1);
	const int n = (N / 8);


	for(int i=0; i<n; i++)
	{
		__m256 n1 = _mm256_load_ps(&A[i*8]);            // A
	        __m256 n2 = _mm256_load_ps(&B[i*8]);            // B
		__m256 n3 = _mm256_permute_ps(n1, 0b11110101);  // Imag A
		__m256 n4 = _mm256_permute_ps(n1, 0b10100000);  // REal A
		__m256 n5 = _mm256_permute_ps(n2, 0b10110001);  // fliped B
		__m256 n6 = _mm256_mul_ps(n4,n2);               // rA * B
		__m256 n7 = _mm256_mul_ps(n3,n5);               // iA * fliped_B
//		__m256 n8 = _mm256_mul_ps(conj,n7);             // conj(iA * fliped_B)
                __m256 n9 = _mm256_addsub_ps(n6,n7);            
//		n9 = _mm256_mul_ps(conj,n9);                    
//              n9 = _mm256_permute_ps(n9,0b10110001);           
		_mm256_store_ps(&C[i*8],n9);

	}
       // printf("%f\n", c);
       //for(int i=0; i<N; i++)printf("%f\n", C[i]);
       return C;
}

void buffer()
{
	printf("same one\n");
	return;
}

