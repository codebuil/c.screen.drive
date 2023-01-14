	.file	"emulator.c"
	.intel_syntax noprefix
	.comm	_scr2, 4160, 5
	.text
	.globl	_scrollb8000
	.def	_scrollb8000;	.scl	2;	.type	32;	.endef
_scrollb8000:
LFB13:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-12], OFFSET FLAT:_scr2
	mov	DWORD PTR [ebp-4], 0
	jmp	L2
L3:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp-12]
	add	edx, eax
	mov	eax, DWORD PTR [ebp-4]
	lea	ecx, [eax+160]
	mov	eax, DWORD PTR [ebp-12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-4], 1
L2:
	cmp	DWORD PTR [ebp-4], 3839
	jle	L3
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.globl	_copyb8000
	.def	_copyb8000;	.scl	2;	.type	32;	.endef
_copyb8000:
LFB14:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 16
	mov	DWORD PTR [ebp-4], 0
	mov	DWORD PTR [ebp-8], 0
	mov	DWORD PTR [ebp-12], OFFSET FLAT:_scr2
	jmp	L5
L6:
	mov	edx, DWORD PTR [ebp+8]
	mov	eax, DWORD PTR [ebp-8]
	add	eax, edx
	mov	edx, eax
	mov	eax, DWORD PTR [ebp-12]
	add	edx, eax
	mov	ecx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, ecx
	movzx	eax, BYTE PTR [eax]
	mov	BYTE PTR [edx], al
	add	DWORD PTR [ebp-8], 1
	add	DWORD PTR [ebp-8], 1
	add	DWORD PTR [ebp-4], 1
L5:
	mov	edx, DWORD PTR [ebp-4]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L6
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE14:
	.globl	_teste
	.def	_teste;	.scl	2;	.type	32;	.endef