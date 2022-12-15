	.file	"dotproduct.c"
# GNU C17 (Ubuntu 11.1.0-1ubuntu1~21.04) version 11.1.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mavx2 -mtune=generic -march=x86-64 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.p2align 4
	.globl	complex_Mult
	.type	complex_Mult, @function
complex_Mult:
.LFB5509:
	.cfi_startproc
	endbr64	
# dotproduct.c:7: {
	movq	%rdx, %r8	# tmp219, C
	movl	%ecx, %edx	# tmp220, N
# dotproduct.c:8: 	for(int i=0; i<N; i+=2)
	testl	%ecx, %ecx	# N
	jle	.L2	#,
	leal	-1(%rcx), %eax	#, _57
	movq	%r8, %rcx	# C, tmp167
	subq	%rdi, %rcx	# A, tmp167
	subq	$4, %rcx	#, tmp168
	cmpq	$24, %rcx	#, tmp168
	seta	%r9b	#, tmp170
	cmpl	$1, %eax	#, _57
	seta	%cl	#, tmp172
	testb	%cl, %r9b	# tmp172, tmp170
	je	.L10	#,
	movq	%r8, %rcx	# C, tmp175
	subq	%rsi, %rcx	# B, tmp175
	subq	$4, %rcx	#, tmp176
	cmpq	$24, %rcx	#, tmp176
	jbe	.L10	#,
	movl	%eax, %r9d	# _57, _81
	shrl	%r9d	# _81
	leal	1(%r9), %ecx	#, niters.14
	cmpl	$5, %eax	#, _57
	jbe	.L11	#,
	movl	%ecx, %edx	# niters.14, bnd.15
	xorl	%eax, %eax	# ivtmp.124
	shrl	$2, %edx	#,
	salq	$5, %rdx	#, _118
	.p2align 4,,10
	.p2align 3
.L5:
# dotproduct.c:10: 		float Ar = A[i];
	vpermilps	$245, (%rdi,%rax), %ymm0	#, MEM <vector(8) float> [(float *)A_22(D) + ivtmp.124_177 * 1], vect_Ar_23.29
# dotproduct.c:13: 		float Br = B[i];
	vpermilps	$177, (%rsi,%rax), %ymm2	#, MEM <vector(8) float> [(float *)B_25(D) + ivtmp.124_177 * 1], vect_Br_26.33
# dotproduct.c:10: 		float Ar = A[i];
	vpermilps	$160, (%rdi,%rax), %ymm1	#, MEM <vector(8) float> [(float *)A_22(D) + ivtmp.124_177 * 1], vect_Ar_23.21
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	%ymm2, %ymm0, %ymm0	# vect_Br_26.33, vect_Ar_23.29, vect__10.34
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	(%rsi,%rax), %ymm1, %ymm1	# MEM <vector(8) float> [(float *)B_25(D) + ivtmp.124_177 * 1], vect_Ar_23.21, vect__9.25
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vaddsubps	%ymm0, %ymm1, %ymm1	# vect__10.34, vect__9.25, tmp188
	vmovups	%ymm1, (%r8,%rax)	# tmp188, MEM <vector(8) float> [(float *)C_21(D) + ivtmp.124_177 * 1]
	addq	$32, %rax	#, ivtmp.124
	cmpq	%rax, %rdx	# ivtmp.124, _118
	jne	.L5	#,
	movl	%ecx, %edx	# niters.14, niters_vector_mult_vf.16
	andl	$-4, %edx	#,
	leal	(%rdx,%rdx), %eax	#, tmp.42
	cmpl	%edx, %ecx	# niters_vector_mult_vf.16, niters.14
	je	.L20	#,
	subl	%edx, %ecx	# niters_vector_mult_vf.16, niters.14
	cmpl	%edx, %r9d	# niters_vector_mult_vf.16, _81
	je	.L23	#,
	vzeroupper
.L4:
# dotproduct.c:10: 		float Ar = A[i];
	vpermilps	$245, (%rdi,%rdx,8), %xmm0	#, MEM <vector(4) float> [(float *)vectp_A.44_187], vect_Ar_87.54
# dotproduct.c:13: 		float Br = B[i];
	vpermilps	$177, (%rsi,%rdx,8), %xmm2	#, MEM <vector(4) float> [(float *)vectp_B.48_194], vect_Br_93.58
# dotproduct.c:10: 		float Ar = A[i];
	vpermilps	$160, (%rdi,%rdx,8), %xmm1	#, MEM <vector(4) float> [(float *)vectp_A.44_187], vect_Ar_87.46
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	%xmm2, %xmm0, %xmm0	# vect_Br_93.58, vect_Ar_87.54, vect__97.59
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	(%rsi,%rdx,8), %xmm1, %xmm1	# MEM <vector(4) float> [(float *)vectp_B.48_194], vect_Ar_87.46, vect__96.50
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vaddsubps	%xmm0, %xmm1, %xmm1	# vect__97.59, vect__96.50, tmp197
	vmovups	%xmm1, (%r8,%rdx,8)	# tmp197, MEM <vector(4) float> [(float *)vectp_C.63_219]
	movl	%ecx, %edx	# niters.14, niters_vector_mult_vf.41
	andl	$-2, %edx	#, niters_vector_mult_vf.41
	leal	(%rax,%rdx,2), %eax	#, tmp.42
	cmpl	%edx, %ecx	# niters_vector_mult_vf.41, niters.14
	je	.L2	#,
.L7:
# dotproduct.c:10: 		float Ar = A[i];
	cltq
# dotproduct.c:10: 		float Ar = A[i];
	vmovq	(%rdi,%rax,4), %xmm1	# MEM <vector(2) float> [(float *)_154], MEM <vector(2) float> [(float *)_154]
# dotproduct.c:13: 		float Br = B[i];
	vmovq	(%rsi,%rax,4), %xmm2	# MEM <vector(2) float> [(float *)_160], MEM <vector(2) float> [(float *)_160]
# dotproduct.c:10: 		float Ar = A[i];
	vmovsldup	%xmm1, %xmm0	# MEM <vector(2) float> [(float *)_154], vect_Ar_155.89
	vmovshdup	%xmm1, %xmm1	# MEM <vector(2) float> [(float *)_154], vect_Ar_155.97
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	%xmm2, %xmm0, %xmm0	# MEM <vector(2) float> [(float *)_160], vect_Ar_155.89, vect__164.93
# dotproduct.c:13: 		float Br = B[i];
	vshufps	$0xe1, %xmm2, %xmm2, %xmm2	# MEM <vector(2) float> [(float *)_160], vect_Br_161.101
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	%xmm2, %xmm1, %xmm1	# vect_Br_161.101, vect_Ar_155.97, vect__165.102
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vsubps	%xmm1, %xmm0, %xmm2	# vect__165.102, vect__164.93, vect__167.103
# dotproduct.c:17: 		C[i+1] = Ar * Bi + Ai * Br;
	vaddps	%xmm1, %xmm0, %xmm0	# vect__165.102, vect__164.93, vect__172.104
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmovss	%xmm2, %xmm0, %xmm0	# vect__167.103, vect__172.104, tmp207
	vmovlps	%xmm0, (%r8,%rax,4)	# tmp207, MEM <vector(2) float> [(float *)_166]
.L2:
# dotproduct.c:20: }
	movq	%r8, %rax	# C,
	ret	
	.p2align 4,,10
	.p2align 3
.L20:
	vzeroupper
	movq	%r8, %rax	# C,
	ret	
	.p2align 4,,10
	.p2align 3
.L10:
# dotproduct.c:8: 	for(int i=0; i<N; i+=2)
	xorl	%eax, %eax	# ivtmp.109
	.p2align 4,,10
	.p2align 3
.L3:
# dotproduct.c:10: 		float Ar = A[i];
	vmovq	(%rdi,%rax,4), %xmm0	# MEM <vector(2) float> [(float *)A_22(D) + ivtmp.109_196 * 4], MEM <vector(2) float> [(float *)A_22(D) + ivtmp.109_196 * 4]
# dotproduct.c:13: 		float Br = B[i];
	vmovq	(%rsi,%rax,4), %xmm2	# MEM <vector(2) float> [(float *)B_25(D) + ivtmp.109_196 * 4], MEM <vector(2) float> [(float *)B_25(D) + ivtmp.109_196 * 4]
# dotproduct.c:10: 		float Ar = A[i];
	vmovsldup	%xmm0, %xmm1	# MEM <vector(2) float> [(float *)A_22(D) + ivtmp.109_196 * 4], vect_Ar_38.68
	vmovshdup	%xmm0, %xmm0	# MEM <vector(2) float> [(float *)A_22(D) + ivtmp.109_196 * 4], vect_Ar_38.76
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	%xmm2, %xmm1, %xmm1	# MEM <vector(2) float> [(float *)B_25(D) + ivtmp.109_196 * 4], vect_Ar_38.68, vect__66.72
# dotproduct.c:13: 		float Br = B[i];
	vshufps	$0xe1, %xmm2, %xmm2, %xmm2	# MEM <vector(2) float> [(float *)B_25(D) + ivtmp.109_196 * 4], vect_Br_17.80
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmulps	%xmm2, %xmm0, %xmm0	# vect_Br_17.80, vect_Ar_38.76, vect__67.81
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vsubps	%xmm0, %xmm1, %xmm2	# vect__67.81, vect__66.72, vect__69.82
# dotproduct.c:17: 		C[i+1] = Ar * Bi + Ai * Br;
	vaddps	%xmm1, %xmm0, %xmm0	# vect__66.72, vect__67.81, vect__74.83
# dotproduct.c:16: 		C[i] = Ar * Br - Ai * Bi;
	vmovss	%xmm2, %xmm0, %xmm0	# vect__69.82, vect__74.83, tmp215
	vmovlps	%xmm0, (%r8,%rax,4)	# tmp215, MEM <vector(2) float> [(float *)C_21(D) + ivtmp.109_196 * 4]
# dotproduct.c:8: 	for(int i=0; i<N; i+=2)
	addq	$2, %rax	#, ivtmp.109
	cmpl	%eax, %edx	# ivtmp.109, N
	jg	.L3	#,
# dotproduct.c:20: }
	movq	%r8, %rax	# C,
	ret	
.L11:
# dotproduct.c:8: 	for(int i=0; i<N; i+=2)
	xorl	%edx, %edx	#
# dotproduct.c:8: 	for(int i=0; i<N; i+=2)
	xorl	%eax, %eax	# tmp.42
	jmp	.L4	#
.L23:
	vzeroupper
	jmp	.L7	#
	.cfi_endproc
.LFE5509:
	.size	complex_Mult, .-complex_Mult
	.p2align 4
	.globl	vect_complex_Mult_v1
	.type	vect_complex_Mult_v1, @function
vect_complex_Mult_v1:
.LFB5510:
	.cfi_startproc
	endbr64	
# dotproduct.c:28: 	const int n = (N/8);
	testl	%ecx, %ecx	# N
	leal	7(%rcx), %r8d	#, tmp99
# dotproduct.c:23: {
	movq	%rdi, %r9	# tmp112, A
	movq	%rdx, %rax	# tmp114, C
# dotproduct.c:28: 	const int n = (N/8);
	cmovns	%ecx, %r8d	# tmp99,, N, N
	sarl	$3, %r8d	#, tmp100
# dotproduct.c:29: 	for(int i=0; i<n; i++)
	cmpl	$7, %ecx	#, N
	jle	.L25	#,
	vmovaps	.LC0(%rip), %ymm2	#, tmp111
	xorl	%ecx, %ecx	# ivtmp.142
# dotproduct.c:29: 	for(int i=0; i<n; i++)
	xorl	%edi, %edi	# i
	.p2align 4,,10
	.p2align 3
.L26:
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:320:   return (__m256) ((__v8sf)__A * (__v8sf)__B);
	vmovaps	(%rsi,%rcx), %ymm3	# MEM[(__m256 * {ref-all})B_13(D) + ivtmp.142_28 * 1], tmp117
	vmulps	(%r9,%rcx), %ymm3, %ymm0	# MEM[(__m256 * {ref-all})A_12(D) + ivtmp.142_28 * 1], tmp117, tmp103
# dotproduct.c:29: 	for(int i=0; i<n; i++)
	addl	$1, %edi	#, i
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:670:   return (__m256) __builtin_ia32_vpermilps256 ((__v8sf)__X, __C);
	vpermilps	$177, (%rsi,%rcx), %ymm1	#, MEM[(__m256 * {ref-all})B_13(D) + ivtmp.142_28 * 1], tmp101
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:320:   return (__m256) ((__v8sf)__A * (__v8sf)__B);
	vmulps	(%r9,%rcx), %ymm1, %ymm1	# MEM[(__m256 * {ref-all})A_12(D) + ivtmp.142_28 * 1], tmp101, tmp106
	vmulps	%ymm2, %ymm0, %ymm0	# tmp111, tmp103, tmp104
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:272:   return (__m256) __builtin_ia32_haddps256 ((__v8sf)__X, (__v8sf)__Y);
	vhaddps	%ymm1, %ymm0, %ymm0	# tmp106, tmp104, tmp107
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:670:   return (__m256) __builtin_ia32_vpermilps256 ((__v8sf)__X, __C);
	vpermilps	$19, %ymm0, %ymm0	#, tmp107, tmp108
# dotproduct.c:36: 		c[i] = _mm256_permute_ps(c[i], 0b0010011);	
	vmovaps	%ymm0, (%rax,%rcx)	# tmp108, MEM[(__m256 * {ref-all})C_14(D) + ivtmp.142_28 * 1]
# dotproduct.c:29: 	for(int i=0; i<n; i++)
	addq	$32, %rcx	#, ivtmp.142
	cmpl	%edi, %r8d	# i, tmp100
	jg	.L26	#,
	vzeroupper
.L25:
# dotproduct.c:40: }
	ret	
	.cfi_endproc
.LFE5510:
	.size	vect_complex_Mult_v1, .-vect_complex_Mult_v1
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%f\n"
	.text
	.p2align 4
	.globl	vect_complex_Mult_v2
	.type	vect_complex_Mult_v2, @function
vect_complex_Mult_v2:
.LFB5511:
	.cfi_startproc
	endbr64	
	leaq	8(%rsp), %r10	#,
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp	#,
	movq	%rdi, %r8	# tmp133, A
	pushq	-8(%r10)	#
# dotproduct.c:45: 	const int n = (N / 8);
	leal	7(%rcx), %edi	#, tmp110
# dotproduct.c:43: {
	pushq	%rbp	#
	movq	%rsp, %rbp	#,
	.cfi_escape 0x10,0x6,0x2,0x76,0
	pushq	%r14	#
	pushq	%r13	#
	pushq	%r12	#
	.cfi_escape 0x10,0xe,0x2,0x76,0x78
	.cfi_escape 0x10,0xd,0x2,0x76,0x70
	.cfi_escape 0x10,0xc,0x2,0x76,0x68
	movq	%rdx, %r12	# tmp135, C
	pushq	%r10	#
	.cfi_escape 0xf,0x3,0x76,0x60,0x6
	pushq	%rbx	#
	subq	$8, %rsp	#,
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
# dotproduct.c:45: 	const int n = (N / 8);
	testl	%ecx, %ecx	# N
	cmovns	%ecx, %edi	# tmp110,, N, N
	sarl	$3, %edi	#, tmp111
# dotproduct.c:47: 	for(int i=0; i<n; i++)
	cmpl	$7, %ecx	#, N
	jle	.L29	#,
	vmovaps	.LC0(%rip), %ymm3	#, tmp132
	xorl	%eax, %eax	# ivtmp.160
# dotproduct.c:47: 	for(int i=0; i<n; i++)
	xorl	%edx, %edx	# i
	.p2align 4,,10
	.p2align 3
.L30:
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:670:   return (__m256) __builtin_ia32_vpermilps256 ((__v8sf)__X, __C);
	vpermilps	$160, (%r8,%rax), %ymm1	#, MEM[(__m256 * {ref-all})A_22(D) + ivtmp.160_61 * 1], tmp114
	vpermilps	$177, (%rsi,%rax), %ymm2	#, MEM[(__m256 * {ref-all})B_24(D) + ivtmp.160_61 * 1], tmp116
# dotproduct.c:47: 	for(int i=0; i<n; i++)
	addl	$1, %edx	#, i
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:670:   return (__m256) __builtin_ia32_vpermilps256 ((__v8sf)__X, __C);
	vpermilps	$245, (%r8,%rax), %ymm0	#, MEM[(__m256 * {ref-all})A_22(D) + ivtmp.160_61 * 1], tmp112
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:320:   return (__m256) ((__v8sf)__A * (__v8sf)__B);
	vmulps	%ymm2, %ymm1, %ymm1	# tmp116, tmp114, tmp119
	vmulps	(%rsi,%rax), %ymm0, %ymm0	# MEM[(__m256 * {ref-all})B_24(D) + ivtmp.160_61 * 1], tmp112, tmp118
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:149:   return (__m256) ((__v8sf)__A + (__v8sf)__B);
	vaddps	%ymm1, %ymm0, %ymm0	# tmp119, tmp118, tmp120
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:320:   return (__m256) ((__v8sf)__A * (__v8sf)__B);
	vmulps	%ymm3, %ymm0, %ymm0	# tmp132, tmp120, tmp121
# /usr/lib/gcc/x86_64-linux-gnu/11/include/avxintrin.h:887:   *(__m256 *)__P = __A;
	vmovaps	%ymm0, (%r12,%rax)	# tmp121, MEM[(__m256 * {ref-all})C_20(D) + ivtmp.160_61 * 1]
# dotproduct.c:47: 	for(int i=0; i<n; i++)
	addq	$32, %rax	#, ivtmp.160
	cmpl	%edx, %edi	# i, tmp111
	jg	.L30	#,
	vzeroupper
.L31:
	leal	-1(%rcx), %eax	#, tmp124
	movq	%r12, %rbx	# C, ivtmp.151
	leaq	.LC1(%rip), %r13	#, tmp131
	leaq	4(%r12,%rax,4), %r14	#, _62
	.p2align 4,,10
	.p2align 3
.L33:
# dotproduct.c:61:        for(int i=0; i<N; i++)printf("%f\n", C[i]);
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp140
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movq	%r13, %rsi	# tmp131,
	movl	$1, %edi	#,
# dotproduct.c:61:        for(int i=0; i<N; i++)printf("%f\n", C[i]);
	addq	$4, %rbx	#, ivtmp.151
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	movl	$1, %eax	#,
# dotproduct.c:61:        for(int i=0; i<N; i++)printf("%f\n", C[i]);
	vcvtss2sd	-4(%rbx), %xmm4, %xmm0	# MEM[(float *)_69], tmp140, tmp138
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	__printf_chk@PLT	#
# dotproduct.c:61:        for(int i=0; i<N; i++)printf("%f\n", C[i]);
	cmpq	%r14, %rbx	# _62, ivtmp.151
	jne	.L33	#,
.L32:
# dotproduct.c:63: }
	addq	$8, %rsp	#,
	movq	%r12, %rax	# C,
	popq	%rbx	#
	popq	%r10	#
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12	#
	popq	%r13	#
	popq	%r14	#
	popq	%rbp	#
	leaq	-8(%r10), %rsp	#,
	.cfi_def_cfa 7, 8
	ret	
	.p2align 4,,10
	.p2align 3
.L29:
	.cfi_restore_state
# dotproduct.c:61:        for(int i=0; i<N; i++)printf("%f\n", C[i]);
	testl	%ecx, %ecx	# N
	jle	.L32	#,
	jmp	.L31	#
	.cfi_endproc
.LFE5511:
	.size	vect_complex_Mult_v2, .-vect_complex_Mult_v2
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC0:
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.long	1065353216
	.long	-1082130432
	.ident	"GCC: (Ubuntu 11.1.0-1ubuntu1~21.04) 11.1.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
