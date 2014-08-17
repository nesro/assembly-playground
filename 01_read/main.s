	.file	"main.c"
	.section	.rodata
	.align 8
.LC0:
	.string	"Write a string (up to 50 characters): "
.LC1:
	.string	"Read error.\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movl	$38, %edx
	movl	$.LC0, %esi
	movl	$1, %edi
	call	write
	leaq	-64(%rbp), %rax
	movl	$50, %edx
	movq	%rax, %rsi
	movl	$1, %edi
	call	read
	movl	%eax, -4(%rbp)
	cmpl	$-1, -4(%rbp)
	jne	.L2
	movl	$12, %edx
	movl	$.LC1, %esi
	movl	$2, %edi
	call	write
	movl	$1, %edi
	call	_exit
.L2:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	leaq	-64(%rbp), %rax
	movq	%rax, %rsi
	movl	$1, %edi
	call	write
	movl	$0, %edi
	call	_exit
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.1"
	.section	.note.GNU-stack,"",@progbits
