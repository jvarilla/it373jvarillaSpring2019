	.file	"threads.v1.c"
	.text
	.section	.rodata
.LC0:
	.string	"common_threads.h"
.LC1:
	.string	"rc == 0"
	.text
	.globl	Pthread_create
	.type	Pthread_create, @function
Pthread_create:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	%rcx, -48(%rbp)
	movq	-48(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rsi
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_create@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L3
	leaq	__PRETTY_FUNCTION__.3287(%rip), %rcx
	movl	$10, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L3:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	Pthread_create, .-Pthread_create
	.globl	Pthread_join
	.type	Pthread_join, @function
Pthread_join:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_join@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L6
	leaq	__PRETTY_FUNCTION__.3293(%rip), %rcx
	movl	$15, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L6:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	Pthread_join, .-Pthread_join
	.globl	Pthread_mutex_lock
	.type	Pthread_mutex_lock, @function
Pthread_mutex_lock:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_lock@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L9
	leaq	__PRETTY_FUNCTION__.3298(%rip), %rcx
	movl	$20, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L9:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	Pthread_mutex_lock, .-Pthread_mutex_lock
	.globl	Pthread_mutex_unlock
	.type	Pthread_mutex_unlock, @function
Pthread_mutex_unlock:
.LFB8:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	pthread_mutex_unlock@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L12
	leaq	__PRETTY_FUNCTION__.3303(%rip), %rcx
	movl	$25, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L12:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	Pthread_mutex_unlock, .-Pthread_mutex_unlock
	.globl	Pthread_mutex_init
	.type	Pthread_mutex_init, @function
Pthread_mutex_init:
.LFB9:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	pthread_mutex_init@PLT
	movl	%eax, -4(%rbp)
	cmpl	$0, -4(%rbp)
	je	.L15
	leaq	__PRETTY_FUNCTION__.3309(%rip), %rcx
	movl	$30, %edx
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	call	__assert_fail@PLT
.L15:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	Pthread_mutex_init, .-Pthread_mutex_init
	.comm	m,40,32
	.globl	counter
	.bss
	.align 4
	.type	counter, @object
	.size	counter, 4
counter:
	.zero	4
	.comm	loops,4,4
	.text
	.globl	worker
	.type	worker, @function
worker:
.LFB10:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L17
.L18:
	leaq	m(%rip), %rdi
	call	Pthread_mutex_lock
	movl	counter(%rip), %eax
	addl	$1, %eax
	movl	%eax, counter(%rip)
	leaq	m(%rip), %rdi
	call	Pthread_mutex_unlock
	addl	$1, -4(%rbp)
.L17:
	movl	loops(%rip), %eax
	cmpl	%eax, -4(%rbp)
	jl	.L18
	movl	$0, %edi
	call	pthread_exit@PLT
	.cfi_endproc
.LFE10:
	.size	worker, .-worker
	.section	.rodata
.LC2:
	.string	"usage: threads <value>\n"
.LC3:
	.string	"Initial value : %d\n"
.LC4:
	.string	"Final value   : %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	cmpl	$2, -36(%rbp)
	je	.L20
	movq	stderr(%rip), %rax
	movq	%rax, %rcx
	movl	$23, %edx
	movl	$1, %esi
	leaq	.LC2(%rip), %rdi
	call	fwrite@PLT
	movl	$1, %edi
	call	exit@PLT
.L20:
	movq	-48(%rbp), %rax
	addq	$8, %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	atoi@PLT
	movl	%eax, loops(%rip)
	movl	counter(%rip), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %esi
	leaq	m(%rip), %rdi
	call	Pthread_mutex_init
	leaq	-24(%rbp), %rax
	movl	$0, %ecx
	leaq	worker(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	Pthread_create
	leaq	-16(%rbp), %rax
	movl	$0, %ecx
	leaq	worker(%rip), %rdx
	movl	$0, %esi
	movq	%rax, %rdi
	call	Pthread_create
	movq	-24(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	Pthread_join
	movq	-16(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	call	Pthread_join
	movl	counter(%rip), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	xorq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.section	.rodata
	.align 8
	.type	__PRETTY_FUNCTION__.3287, @object
	.size	__PRETTY_FUNCTION__.3287, 15
__PRETTY_FUNCTION__.3287:
	.string	"Pthread_create"
	.align 8
	.type	__PRETTY_FUNCTION__.3293, @object
	.size	__PRETTY_FUNCTION__.3293, 13
__PRETTY_FUNCTION__.3293:
	.string	"Pthread_join"
	.align 16
	.type	__PRETTY_FUNCTION__.3298, @object
	.size	__PRETTY_FUNCTION__.3298, 19
__PRETTY_FUNCTION__.3298:
	.string	"Pthread_mutex_lock"
	.align 16
	.type	__PRETTY_FUNCTION__.3303, @object
	.size	__PRETTY_FUNCTION__.3303, 21
__PRETTY_FUNCTION__.3303:
	.string	"Pthread_mutex_unlock"
	.align 16
	.type	__PRETTY_FUNCTION__.3309, @object
	.size	__PRETTY_FUNCTION__.3309, 19
__PRETTY_FUNCTION__.3309:
	.string	"Pthread_mutex_init"
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
