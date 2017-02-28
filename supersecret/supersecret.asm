	.file	"supersecret.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 4
LC0:
	.ascii "Enter the super secret password:\0"
	.align 4
LC1:
	.ascii "Access granted.\12Hello, Batman!\0"
	.align 4
LC2:
	.ascii "Error: the CSI guys are now after you.\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	push	ebp
	mov	ebp, esp
	and	esp, -16
	sub	esp, 48
	call	___main
	mov	DWORD PTR [esp+38], 1919907699
	mov	DWORD PTR [esp+42], 1936287332
	mov	WORD PTR [esp+46], 104
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	_puts
	mov	eax, DWORD PTR __imp___iob
	mov	DWORD PTR [esp+8], eax
	mov	DWORD PTR [esp+4], 16
	lea	eax, [esp+22]
	mov	DWORD PTR [esp], eax
	call	_fgets
	lea	eax, [esp+22]
	mov	DWORD PTR [esp], eax
	call	_strlen
	sub	eax, 1
	mov	BYTE PTR [esp+22+eax], 0
	lea	eax, [esp+22]
	mov	DWORD PTR [esp+4], eax
	lea	eax, [esp+38]
	mov	DWORD PTR [esp], eax
	call	_strcmp
	test	eax, eax
	jne	L2
	mov	DWORD PTR [esp], OFFSET FLAT:LC1
	call	_puts
	jmp	L3
L2:
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_puts
L3:
	mov	eax, 0
	leave
	ret
	.ident	"GCC: (tdm64-1) 5.1.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
	.def	_fgets;	.scl	2;	.type	32;	.endef
	.def	_strlen;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
