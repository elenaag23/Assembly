.data

	sirb2: .space 400
	sirb16: .space 100 
	formatScanf: .asciz "%s"
	formatPrintfchr: .asciz "%c"
	formatPrintfstr: .asciz "%s"
	formatPrintfnr: .asciz "%d"
	indexSb2: .long 0
	trei: .long 3
	x: .byte 10
	
	a: .long 97
	b: .long 98
	d: .long 100
	e: .long 101
	i: .long 105
	l: .long 108
	m: .long 109
	u: .long 117
	v: .long 118
	s: .long 115
	t: .long 116
	space: .long 32
	
	p7: .long 128
	p6: .long 64
	p5: .long 32
	p4: .long 16
	p3: .long 8
	p2: .long 4
	p1: .long 2
	p0: .long 1
	
	minus: .long 45
	
	cifra: .space 4
	valoare: .space 4

.text

.global main

main:

	pushl $sirb16
	pushl $formatScanf
	call scanf
	popl %ebx
	popl %ebx
	
	movl $sirb16, %edi			# dest. index
	movl $sirb2, %esi			# source index
	xorl %ecx, %ecx
	
transformare:

	movb (%edi, %ecx, 1), %al 
	cmp $0, %al 
	je decodare

	
	// instructiuni
	cmp $48, %al
	je cif0
	cmp $49, %al
	je cif1
	cmp $50, %al
	je cif2
	cmp $51, %al
	je cif3
	cmp $52, %al
	je cif4
	cmp $53, %al
	je cif5
	cmp $54, %al
	je cif6
	cmp $55, %al
	je cif7
	cmp $56, %al
	je cif8
	cmp $57, %al
	je cif9
	cmp $65, %al
	je cifA
	cmp $66, %al
	je cifB
	cmp $67, %al
	je cifC
	cmp $68, %al
	je cifD
	cmp $69, %al
	je cifE
	cmp $70, %al
	je cifF

cont:
	incl %ecx
	jmp transformare

cif0:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif1:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif2:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif3:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif4:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif5:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	
        movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
	
cif6:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
        movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif7:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
        movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif8:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cif9:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	

	
cifA:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cifB:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cifC:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cifD:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cifE:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $48, (%esi, %ecx, 1)
	incl %ecx
	
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont
	
cifF:
	pushl %ecx
	
	movl indexSb2, %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	movb $49, (%esi, %ecx, 1)
	incl %ecx
	
	movl %ecx, indexSb2
	
	popl %ecx
	jmp cont	
	
decodare:

	xorl %edi, %edi
	mov %esi, %edi
	xorl %ecx, %ecx
	
	
et_for:
	
	movb (%edi, %ecx, 1), %al
	cmp $0, %al
	je et_exit
	
	inc %ecx      #b1
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je operatie
	
	cmp $48, %al
	je num_var
	
	
operatie:
	add $8, %ecx     #b9
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je afis_div
	
	inc %ecx  #b10
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je sm
	
	cmp $48, %al
	je la
	
sm:
	inc %ecx        #b11
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je afis_mul
	
	cmp $48, %al
	je afis_sub
	
la:
	inc %ecx        #b11
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je afis_add
	
	cmp $48, %al
	je afis_let
	

num_var:
	add $3, %ecx  #b4
	movl $0, valoare
	movl $0, cifra

 
	xorl %eax, %eax          #b4
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx


	mull p7
	addl %eax, valoare
	inc %ecx
	
	
	xorl %eax, %eax	#b5
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx

	
	mull p6
	addl %eax, valoare
	inc %ecx
	

 	xorl %eax, %eax	#b6
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx

	
	mull p5
	addl %eax, valoare
	inc %ecx
	
	
 	xorl %eax, %eax	#b7
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx

	
	mull p4
	addl %eax, valoare
	inc %ecx
	

 	xorl %eax, %eax	#b8
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx
	
	mull p3
	addl %eax, valoare
	inc %ecx

	
	
 	xorl %eax, %eax	#b9
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx


	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx
	
	mull p2
	addl %eax, valoare
	inc %ecx
	
	
	
 	xorl %eax, %eax	#b10
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx
	
	mull p1
	addl %eax, valoare
	inc %ecx
	
	
 	xorl %eax, %eax	#b11
	movb (%edi, %ecx, 1), %al
	movb %al, cifra
	
	pushl %ecx

	pushl $cifra
	call atoi
	popl %ebx

	popl %ecx
	
	mull p0
	addl %eax, valoare
	
	xorl %eax, %eax
	sub $9, %ecx
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je afis_variabila
	
	cmp $48, %al
	jb afis_numar
	
afis_numar:
	inc %ecx	#b3
	movb (%edi, %ecx, 1), %al
	
	cmp $49, %al
	je nr_neg
	
	cmp $48, %al
	je nr_poz
	
nr_neg:

	pushl %ecx
	
	pushl minus
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl valoare
	pushl $formatPrintfnr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	add $9, %ecx
	jmp et_for
	
nr_poz:
	pushl %ecx
	
	pushl valoare
	pushl $formatPrintfnr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	add $9, %ecx
	jmp et_for

	
	
afis_variabila:

	pushl %ecx
	
	pushl valoare
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	
	add $10, %ecx
	jmp et_for
	

afis_div:
	pushl %ecx
	
	pushl d
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl i
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl v
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	add $3, %ecx
	jmp et_for
	
afis_mul:
	pushl %ecx
	
	pushl m
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl u
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl l
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	inc %ecx
	jmp et_for
	
afis_sub:
	pushl %ecx
	
	pushl s
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl u
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl b
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	inc %ecx
	jmp et_for
	
afis_add:
	pushl %ecx
	
	pushl a
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl d
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl d
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	inc %ecx
	jmp et_for
	
afis_let:
	pushl %ecx
	
	pushl l
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl e
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	pushl t
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl space
	pushl $formatPrintfchr
	call printf
	popl %ebx
	popl %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	popl %ecx
	
	inc %ecx
	jmp et_for
	
	
	
et_exit:
	push x
	pushl $formatPrintfchr
	call printf
	popl %ebx
	pop %ebx
	
	pushl $0
	call fflush
	popl %ebx
	
	mov $1, %eax
	xor %ebx, %ebx
	int $0x80 
