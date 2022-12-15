	.file	"refrence.c"
# GNU C17 (Ubuntu 11.1.0-1ubuntu1~21.04) version 11.1.0 (x86_64-linux-gnu)
#	compiled by GNU C version 11.1.0, GMP version 6.2.1, MPFR version 4.1.0, MPC version 1.2.0, isl version isl-0.23-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mavx2 -mtune=generic -march=x86-64 -O3 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"initialised array."
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Time taken by normal for loop: %f\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Time taken by Version-1: %f\n"
.LC5:
	.string	"Time taken by Version-2: %f\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB5509:
	.cfi_startproc
	endbr64	
	pushq	%r15	#
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
# refrence.c:12: 	float* A1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:10: {
	pushq	%r14	#
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13	#
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12	#
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp	#
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx	#
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$184, %rsp	#,
	.cfi_def_cfa_offset 240
# refrence.c:10: {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp235
	movq	%rax, 168(%rsp)	# tmp235, D.33182
	xorl	%eax, %eax	# tmp235
# refrence.c:12: 	float* A1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:13: 	float* B1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:12: 	float* A1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, %rbp	# tmp212, A1
# refrence.c:13: 	float* B1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:14: 	float* A2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:13: 	float* B1 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, %r15	# tmp213, B1
# refrence.c:14: 	float* A2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:15: 	float* B2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:14: 	float* A2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, 8(%rsp)	# tmp214, %sfp
# refrence.c:15: 	float* B2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:16: 	float* A3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:15: 	float* B2 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, %rbx	# tmp215, B2
# refrence.c:16: 	float* A3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:17: 	float* B3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:16: 	float* A3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, 32(%rsp)	# tmp216, %sfp
# refrence.c:17: 	float* B3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:18: 	float* complex_X = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:17: 	float* B3 = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, 40(%rsp)	# tmp217, %sfp
# refrence.c:18: 	float* complex_X = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:19: 	float* vector_X_v1 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:18: 	float* complex_X = (float*)aligned_alloc(N*sizeof(float), ALIGN);
	movq	%rax, %r14	# tmp218, complex_X
# refrence.c:19: 	float* vector_X_v1 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	call	aligned_alloc@PLT	#
# refrence.c:20: 	float* vector_X_v2 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	movl	$64, %esi	#,
	movl	$256, %edi	#,
# refrence.c:19: 	float* vector_X_v1 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	movq	%rax, %r13	# tmp219, vector_X_v1
# refrence.c:20: 	float* vector_X_v2 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	call	aligned_alloc@PLT	#
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	leaq	.LC1(%rip), %rdi	#, tmp144
# refrence.c:20: 	float* vector_X_v2 = (float*)aligned_alloc(N*sizeof(float),ALIGN);
	movq	%rax, %r12	# tmp220, vector_X_v2
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	call	puts@PLT	#
	xorl	%ecx, %ecx	# ivtmp.30
	.p2align 4,,10
	.p2align 3
.L2:
	movq	%rcx, 24(%rsp)	# ivtmp.30, %sfp
# refrence.c:26: 		float ra = rand()%10;
	call	rand@PLT	#
# refrence.c:26: 		float ra = rand()%10;
	vxorps	%xmm5, %xmm5, %xmm5	# tmp239
# refrence.c:26: 		float ra = rand()%10;
	movslq	%eax, %rdx	# _1, _1
	movl	%eax, %esi	# _1, tmp150
	imulq	$1717986919, %rdx, %rdx	#, _1, tmp147
	sarl	$31, %esi	#, tmp150
	sarq	$34, %rdx	#, tmp149
	subl	%esi, %edx	# tmp150, tmp145
	leal	(%rdx,%rdx,4), %edx	#, tmp153
	addl	%edx, %edx	# tmp154
	subl	%edx, %eax	# tmp154, tmp155
# refrence.c:26: 		float ra = rand()%10;
	vcvtsi2ssl	%eax, %xmm5, %xmm1	# tmp155, tmp239, tmp227
	vmovss	%xmm1, 16(%rsp)	# ra, %sfp
# refrence.c:27: 		float rb = rand()%10;
	call	rand@PLT	#
# refrence.c:27: 		float rb = rand()%10;
	vxorps	%xmm5, %xmm5, %xmm5	# tmp241
# refrence.c:29: 		A1[i] = ra;
	movq	24(%rsp), %rcx	# %sfp, ivtmp.30
	vmovss	16(%rsp), %xmm1	# %sfp, ra
# refrence.c:27: 		float rb = rand()%10;
	movl	%eax, %edx	# tmp222, _3
# refrence.c:27: 		float rb = rand()%10;
	cltq
	imulq	$1717986919, %rax, %rax	#, _3, tmp158
	movl	%edx, %esi	# _3, tmp161
# refrence.c:29: 		A1[i] = ra;
	vmovss	%xmm1, 0(%rbp,%rcx)	# ra, MEM[(float *)A1_60 + ivtmp.30_137 * 1]
# refrence.c:27: 		float rb = rand()%10;
	sarl	$31, %esi	#, tmp161
	sarq	$34, %rax	#, tmp160
	subl	%esi, %eax	# tmp161, tmp156
	leal	(%rax,%rax,4), %eax	#, tmp164
	addl	%eax, %eax	# tmp165
	subl	%eax, %edx	# tmp165, tmp166
# refrence.c:31: 		A2[i] = ra;
	movq	8(%rsp), %rax	# %sfp, A2
# refrence.c:27: 		float rb = rand()%10;
	vcvtsi2ssl	%edx, %xmm5, %xmm0	# tmp166, tmp241, tmp228
# refrence.c:31: 		A2[i] = ra;
	vmovss	%xmm1, (%rax,%rcx)	# ra, MEM[(float *)A2_64 + ivtmp.30_137 * 1]
# refrence.c:30: 		B1[i] = rb;
	vmovss	%xmm0, (%r15,%rcx)	# rb, MEM[(float *)B1_62 + ivtmp.30_137 * 1]
# refrence.c:32: 		B2[i] = rb;
	vmovss	%xmm0, (%rbx,%rcx)	# rb, MEM[(float *)B2_66 + ivtmp.30_137 * 1]
# refrence.c:24: 	for(int i=0; i<N; i++)
	addq	$4, %rcx	#, ivtmp.30
	cmpq	$256, %rcx	#, ivtmp.30
	jne	.L2	#,
	leaq	64(%rsp), %rax	#, tmp268
	movl	$5000, 16(%rsp)	#, %sfp
	movq	%rax, 48(%rsp)	# tmp268, %sfp
	leaq	80(%rsp), %rax	#, tmp207
# refrence.c:39: 	double time_taken1=0.0;
	movq	$0x000000000, 24(%rsp)	#, %sfp
	movq	%rax, 56(%rsp)	# tmp207, %sfp
	.p2align 4,,10
	.p2align 3
.L3:
# refrence.c:41: 	clock_gettime(CLOCK_REALTIME, &t1);
	movq	48(%rsp), %rsi	# %sfp,
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# refrence.c:42: 	complex_X = complex_Mult(A1, B1, complex_X, N);
	movq	%r14, %rdx	# complex_X,
	movl	$64, %ecx	#,
	movq	%r15, %rsi	# B1,
	movq	%rbp, %rdi	# A1,
	call	complex_Mult@PLT	#
# refrence.c:43: 	clock_gettime(CLOCK_REALTIME, &t2);	
	movq	56(%rsp), %rsi	# %sfp,
	xorl	%edi, %edi	#
# refrence.c:42: 	complex_X = complex_Mult(A1, B1, complex_X, N);
	movq	%rax, %r14	# tmp223, complex_X
# refrence.c:43: 	clock_gettime(CLOCK_REALTIME, &t2);	
	call	clock_gettime@PLT	#
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	vxorpd	%xmm2, %xmm2, %xmm2	# tmp244
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	movq	88(%rsp), %rax	# t2.tv_nsec, t2.tv_nsec
	subq	72(%rsp), %rax	# t1.tv_nsec, tmp169
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	vcvtsi2sdq	%rax, %xmm2, %xmm0	# tmp169, tmp244, tmp229
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	movq	80(%rsp), %rax	# t2.tv_sec, t2.tv_sec
	subq	64(%rsp), %rax	# t1.tv_sec, tmp174
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	vdivsd	.LC2(%rip), %xmm0, %xmm0	#, tmp171, tmp172
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	vcvtsi2sdq	%rax, %xmm2, %xmm1	# tmp174, tmp245, tmp230
# refrence.c:40: 	for(int i=0; i<5000; i++){
	subl	$1, 16(%rsp)	#, %sfp
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	vaddsd	%xmm1, %xmm0, %xmm0	# tmp176, tmp172, tmp177
# refrence.c:44: 	time_taken1 += ((t2.tv_sec - t1.tv_sec) + (t2.tv_nsec - t1.tv_nsec) / BILLION);
	vaddsd	24(%rsp), %xmm0, %xmm5	# %sfp, tmp177, time_taken1
	vmovsd	%xmm5, 24(%rsp)	# time_taken1, %sfp
# refrence.c:40: 	for(int i=0; i<5000; i++){
	jne	.L3	#,
	movl	$5000, %ebp	#, ivtmp_9
	leaq	96(%rsp), %r14	#, tmp211
	leaq	112(%rsp), %r15	#, tmp204
# refrence.c:47: 	double time_taken2=0.0;	
	movq	$0x000000000, 16(%rsp)	#, %sfp
	.p2align 4,,10
	.p2align 3
.L4:
# refrence.c:49: 	clock_gettime(CLOCK_REALTIME, &t3);
	movq	%r14, %rsi	# tmp211,
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# refrence.c:50: 	vector_X_v1 = vect_complex_Mult_v1(A2, B2, vector_X_v1, N);
	movq	8(%rsp), %rdi	# %sfp,
	movq	%r13, %rdx	# vector_X_v1,
	movq	%rbx, %rsi	# B2,
	movl	$64, %ecx	#,
	call	vect_complex_Mult_v1@PLT	#
# refrence.c:51: 	clock_gettime(CLOCK_REALTIME, &t4);
	movq	%r15, %rsi	# tmp204,
	xorl	%edi, %edi	#
# refrence.c:50: 	vector_X_v1 = vect_complex_Mult_v1(A2, B2, vector_X_v1, N);
	movq	%rax, %r13	# tmp224, vector_X_v1
# refrence.c:51: 	clock_gettime(CLOCK_REALTIME, &t4);
	call	clock_gettime@PLT	#
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	vxorpd	%xmm3, %xmm3, %xmm3	# tmp249
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	movq	120(%rsp), %rax	# t4.tv_nsec, t4.tv_nsec
	subq	104(%rsp), %rax	# t3.tv_nsec, tmp180
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	vcvtsi2sdq	%rax, %xmm3, %xmm0	# tmp180, tmp249, tmp231
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	movq	112(%rsp), %rax	# t4.tv_sec, t4.tv_sec
	subq	96(%rsp), %rax	# t3.tv_sec, tmp185
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	vdivsd	.LC2(%rip), %xmm0, %xmm0	#, tmp182, tmp183
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	vcvtsi2sdq	%rax, %xmm3, %xmm1	# tmp185, tmp250, tmp232
	vaddsd	%xmm1, %xmm0, %xmm0	# tmp187, tmp183, tmp188
# refrence.c:52: 	time_taken2 += ((t4.tv_sec - t3.tv_sec) + (t4.tv_nsec - t3.tv_nsec) / BILLION);
	vaddsd	16(%rsp), %xmm0, %xmm7	# %sfp, tmp188, time_taken2
	vmovsd	%xmm7, 16(%rsp)	# time_taken2, %sfp
# refrence.c:48: 	for(int i=0; i<5000; i++){
	subl	$1, %ebp	#, ivtmp_9
	jne	.L4	#,
# refrence.c:55: 	double time_taken3=0.0;	
	movq	$0x000000000, 8(%rsp)	#, %sfp
	movl	$5000, %ebx	#, ivtmp_54
	leaq	128(%rsp), %r13	#, tmp206
	leaq	144(%rsp), %rbp	#, tmp209
	.p2align 4,,10
	.p2align 3
.L5:
# refrence.c:57: 	clock_gettime(CLOCK_REALTIME, &t5);
	movq	%r13, %rsi	# tmp206,
	xorl	%edi, %edi	#
	call	clock_gettime@PLT	#
# refrence.c:58: 	vector_X_v2 = vect_complex_Mult_v2(A3, B3, vector_X_v2, N);
	movq	40(%rsp), %rsi	# %sfp,
	movq	32(%rsp), %rdi	# %sfp,
	movq	%r12, %rdx	# vector_X_v2,
	movl	$64, %ecx	#,
	call	vect_complex_Mult_v2@PLT	#
# refrence.c:59: 	clock_gettime(CLOCK_REALTIME, &t6);
	movq	%rbp, %rsi	# tmp209,
	xorl	%edi, %edi	#
# refrence.c:58: 	vector_X_v2 = vect_complex_Mult_v2(A3, B3, vector_X_v2, N);
	movq	%rax, %r12	# tmp225, vector_X_v2
# refrence.c:59: 	clock_gettime(CLOCK_REALTIME, &t6);
	call	clock_gettime@PLT	#
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	vxorpd	%xmm4, %xmm4, %xmm4	# tmp253
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	movq	152(%rsp), %rax	# t6.tv_nsec, t6.tv_nsec
	subq	136(%rsp), %rax	# t5.tv_nsec, tmp191
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	vcvtsi2sdq	%rax, %xmm4, %xmm0	# tmp191, tmp253, tmp233
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	movq	144(%rsp), %rax	# t6.tv_sec, t6.tv_sec
	subq	128(%rsp), %rax	# t5.tv_sec, tmp196
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	vdivsd	.LC2(%rip), %xmm0, %xmm0	#, tmp193, tmp194
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	vcvtsi2sdq	%rax, %xmm4, %xmm1	# tmp196, tmp254, tmp234
	vaddsd	%xmm1, %xmm0, %xmm0	# tmp198, tmp194, tmp199
# refrence.c:60: 	time_taken3 += ((t6.tv_sec - t5.tv_sec) + (t6.tv_nsec - t5.tv_nsec) / BILLION);
	vaddsd	8(%rsp), %xmm0, %xmm6	# %sfp, tmp199, time_taken3
	vmovsd	%xmm6, 8(%rsp)	# time_taken3, %sfp
# refrence.c:56: 	for(int i=0; i<5000; i++){
	subl	$1, %ebx	#, ivtmp_54
	jne	.L5	#,
# /usr/include/x86_64-linux-gnu/bits/stdio2.h:112:   return __printf_chk (__USE_FORTIFY_LEVEL - 1, __fmt, __va_arg_pack ());
	vmovsd	24(%rsp), %xmm0	# %sfp,
	movl	$1, %edi	#,
	movl	$1, %eax	#,
	leaq	.LC3(%rip), %rsi	#, tmp200
	call	__printf_chk@PLT	#
	vmovsd	16(%rsp), %xmm0	# %sfp,
	movl	$1, %edi	#,
	leaq	.LC4(%rip), %rsi	#, tmp201
	movl	$1, %eax	#,
	call	__printf_chk@PLT	#
	vmovsd	8(%rsp), %xmm0	# %sfp,
	movl	$1, %edi	#,
	leaq	.LC5(%rip), %rsi	#, tmp202
	movl	$1, %eax	#,
	call	__printf_chk@PLT	#
# refrence.c:80: }
	movq	168(%rsp), %rax	# D.33182, tmp236
	subq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp236
	jne	.L14	#,
	addq	$184, %rsp	#,
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx	#
	.cfi_def_cfa_offset 48
	popq	%rbp	#
	.cfi_def_cfa_offset 40
	popq	%r12	#
	.cfi_def_cfa_offset 32
	popq	%r13	#
	.cfi_def_cfa_offset 24
	popq	%r14	#
	.cfi_def_cfa_offset 16
	popq	%r15	#
	.cfi_def_cfa_offset 8
	ret	
.L14:
	.cfi_restore_state
	call	__stack_chk_fail@PLT	#
	.cfi_endproc
.LFE5509:
	.size	main, .-main
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC2:
	.long	0
	.long	1104006501
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
