#include<stdio.h>
#include <stdlib.h>
#define ALIGN 64
#define BILLION 1000000000.0
#include <immintrin.h>
#include "dotproduct.h"
#include <time.h>

void main()
{
	const int N = 64;
	float* A1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* B1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* A2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* B2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* A3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* B3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* complex_X = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	float* vector_X_v1 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	float* vector_X_v2 = (float*)aligned_alloc(N*sizeof(float),ALIGN);


        printf("=========== INITIALISED VECTOR A AND B ==========\n");
	for(int i=0; i<N; i++)
	{
		float ra = rand()%10;
		float rb = rand()%10;
		
		A1[i] = ra;
		B1[i] = rb;
		A2[i] = ra;
		B2[i] = rb;
		A3[i] = ra;
		B3[i] = rb;
		//printf("%d %f, %f\n",i, ra, rb); 
	}
	printf("========= ARRAYS INITIALISED. =========\n");

	struct timespec t,t1,t2,t3,t4,t5,t6;
	
	double time_taken1=0.0;
	for(int i=0; i<5000; i++){
		clock_gettime(CLOCK_REALTIME, &t1);
		complex_X = complex_Mult(A1, B1, complex_X, N);
		clock_gettime(CLOCK_REALTIME, &t2);	
		time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	}

	double time_taken2=0.0;	
	for(int i=0; i<5000; i++){
		clock_gettime(CLOCK_REALTIME, &t3);
		vector_X_v1 = vect_complex_Mult_v1(A2, B2, vector_X_v1, N);
		clock_gettime(CLOCK_REALTIME, &t4);
		time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	}

	double time_taken3=0.0;	
	for(int i=0; i<5000; i++){
		clock_gettime(CLOCK_REALTIME, &t5);
		vector_X_v2 = vect_complex_Mult_v2(A3, B3, vector_X_v2, N);
		clock_gettime(CLOCK_REALTIME, &t6);
		time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	}

	printf("\nVector multiplication result in interleaved format are:- \nREFRENCE VS VERSION1 VS VERSION2\n");

	
	for(int i=0; i<N; i++)
	{
		//printf("%d, %f, %f, %f \n",i, complex_X[i], vector_X_v1[i], vector_X_v2[i]);
	}
	
	// time taken by function1
	printf("\n\nTime taken by refrence method: %f\n", time_taken1);

	// time taken by function2
	printf("Time taken by Version-1: %f\n", time_taken2);
	
	// time taken by function3
	printf("Time taken by Version-2: %f\n", time_taken3);	
	
	buffer();
}
