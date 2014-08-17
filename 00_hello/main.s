	.file	"main.c"
	.section	.rodata
.LC0:
	.string	"Hello World!\n"
.LC1:
	.string	"How are you today?\n"
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
	movl	$13, %edx
	movl	$.LC0, %esi
	movl	$1, %edi
	call	write
	movl	$19, %edx
	movl	$.LC1, %esi
	movl	$1, %edi
	call	write
	movl	$0, %edi
	call	_exit
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.9.1"
	.section	.note.GNU-stack,"",@progbits
