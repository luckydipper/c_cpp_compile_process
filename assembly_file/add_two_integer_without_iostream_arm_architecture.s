	.text
	.syntax unified
	.eabi_attribute	67, "2.09"	@ Tag_conformance
	.cpu	arm7tdmi
	.eabi_attribute	6, 2	@ Tag_CPU_arch
	.eabi_attribute	8, 1	@ Tag_ARM_ISA_use
	.eabi_attribute	9, 1	@ Tag_THUMB_ISA_use
	.eabi_attribute	34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute	17, 1	@ Tag_ABI_PCS_GOT_use
	.eabi_attribute	20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute	21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute	23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute	24, 1	@ Tag_ABI_align_needed
	.eabi_attribute	25, 1	@ Tag_ABI_align_preserved
	.eabi_attribute	38, 1	@ Tag_ABI_FP_16bit_format
	.eabi_attribute	18, 4	@ Tag_ABI_PCS_wchar_t
	.eabi_attribute	26, 2	@ Tag_ABI_enum_size
	.eabi_attribute	14, 0	@ Tag_ABI_PCS_R9_use
	.file	"add_two_integer.cpp"
	.globl	main                    @ -- Begin function main
	.p2align	2
	.type	main,%function
	.code	32                      @ @main
main:
	.fnstart
@ %bb.0:
	push	{r11, lr}
	mov	r11, sp
	sub	sp, sp, #32
	mov	r2, #0
	str	r2, [r11, #-4]
	str	r0, [r11, #-8]
	str	r1, [r11, #-12]
	mov	r0, #3
	str	r0, [sp, #12]
	mov	r0, #4
	str	r0, [sp, #8]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	bl	_Z3addii
	str	r0, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #16]
	add	r0, r1, r0
	str	r0, [sp, #16]
	ldr	r0, [sp, #16]
	mov	sp, r11
	pop	{r11, lr}
	bx	lr
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.fnend
                                        @ -- End function
	.globl	_Z3addii                @ -- Begin function _Z3addii
	.p2align	2
	.type	_Z3addii,%function
	.code	32                      @ @_Z3addii
_Z3addii:
	.fnstart
@ %bb.0:
	sub	sp, sp, #8
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	add	r0, r0, r1
	add	sp, sp, #8
	bx	lr
.Lfunc_end1:
	.size	_Z3addii, .Lfunc_end1-_Z3addii
	.cantunwind
	.fnend
                                        @ -- End function
	.type	zi,%object              @ @zi
	.bss
	.globl	zi
	.p2align	2
zi:
	.long	0                       @ 0x0
	.size	zi, 4

	.type	rw,%object              @ @rw
	.data
	.globl	rw
	.p2align	2
rw:
	.long	3                       @ 0x3
	.size	rw, 4

	.type	relocate,%object        @ @relocate
	.globl	relocate
	.p2align	2
relocate:
	.long	3                       @ 0x3
	.size	relocate, 4


	.ident	"clang version 9.0.1-12 "
	.section	".note.GNU-stack","",%progbits
	.addrsig
	.addrsig_sym _Z3addii
