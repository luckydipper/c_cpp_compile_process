	.text
	.file	"add_two_integer.cpp"
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$32, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$3, -24(%rbp)
	movl	$4, -28(%rbp)
	movl	-24(%rbp), %edi
	movl	-28(%rbp), %esi
	callq	_Z3addii
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	addl	-20(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.globl	_Z3addii                # -- Begin function _Z3addii
	.p2align	4, 0x90
	.type	_Z3addii,@function
_Z3addii:                               # @_Z3addii
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	addl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end1:
	.size	_Z3addii, .Lfunc_end1-_Z3addii
	.cfi_endproc
                                        # -- End function
	.type	zi,@object              # @zi
	.bss
	.globl	zi
	.p2align	2
zi:
	.long	0                       # 0x0
	.size	zi, 4

	.type	rw,@object              # @rw
	.data
	.globl	rw
	.p2align	2
rw:
	.long	3                       # 0x3
	.size	rw, 4

	.type	relocate,@object        # @relocate
	.globl	relocate
	.p2align	2
relocate:
	.long	3                       # 0x3
	.size	relocate, 4


	.ident	"clang version 9.0.1-12 "
	.section	".note.GNU-stack","",@progbits
	.addrsig
	.addrsig_sym _Z3addii
