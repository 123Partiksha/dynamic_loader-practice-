#ifndef DOT_PRODUCT_DOT_H    /* This is an "include guard" */
#define DOTPROCT_DOT_H    /* prevents the file from being included twice. */
                     /* Including a header file twice causes all kinds */
                     /* of interesting problems.*/

/**
 *  * This is a function declaration.
 *   * It tells the compiler that the function exists somewhere.
 *    */
float* complex_Mult(float* A, float* B, float* C, int N);
float* vect_complex_Mult_v1(float* A, float* B, float* C, int N);
float* vect_complex_Mult_v2(float* A, float* B, float* C, int N);
void buffer();
#endif /* FOO_DOT_H */
