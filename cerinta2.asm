.data
	str: .space 100
	chDelim: .asciz " "
	formatScanf: .asciz "[^\n]s"
	formatPrintfnr: .asciz "%d\n"
	formatPrintfchr: .asciz "%s\n"
	sirnou: .space 100
	lung: .space 4
	
	x: .space 4
	y: .space 4
	res: .space 4
	eval: .space 4
.text

.global main

main:

	pushl $str
	call gets
	popl %ebx
	
	pushl $str
	call strlen
	popl %ebx

	subl $1, %eax
	movl %eax, lung
	
	pushl lung
	pushl $str
	pushl $sirnou
	call strncpy
	popl %ebx
	popl %ebx
	popl %ebx
	
	xorl %eax, %eax
	
	pushl $chDelim
	pushl $sirnou
	call strtok 
	popl %ebx
	popl %ebx
	
	
	pushl %eax
	call atoi
	popl %ebx
	
	pushl %eax
	
et_for:
	xorl %eax, %eax
	pushl $chDelim
	pushl $0
	call strtok
	popl %ebx
	popl %ebx 
	
	
	cmp $0, %eax
	je exit
	
	movl %eax, res
	pushl %eax
	call atoi
	popl %ebx

	
	cmp $0, %eax
	je operatie
	
	cmp $0, %eax
	ja numar
		
	
operatie:

	movl res, %edi
	
	xorl %ecx, %ecx
	movb (%edi, %ecx, 1), %al
	
	
	cmp $97, %al
	je f_add
	
	cmp $115, %al
	je f_sub
	
	cmp $109, %al
	je f_mul
	
	cmp $100, %al
	je f_div
	
numar:
	pushl %eax
	jmp et_for
	
f_add:

	xorl %eax, %eax
	popl x
	popl y
	movl x, %eax
	addl y, %eax
	pushl %eax
	
	jmp et_for
	
f_sub:
	xorl %eax, %eax
	popl x
	popl y
	movl y, %eax
	subl x, %eax
	pushl %eax
	jmp et_for
	
f_mul:
	xorl %eax, %eax
	popl x
	popl y
	
	cmp $48, x
	je af_0
	
	cmp $48, y
	je af_0
	
	movl x, %eax
	mull y
	pushl %eax
	jmp et_for
	
af_0:
	movl $0, %eax
	pushl %eax
	jmp et_for
	
f_div:
	xorl %eax, %eax
	xorl %edx, %edx
	popl x
	popl y
	movl y, %eax
	divl x
	pushl %eax
	jmp et_for
	
	
	
exit:
	popl eval
	
	pushl eval
	pushl $formatPrintfnr
	call printf
	popl %ebx
	popl %ebx
	
	
	movl $1, %eax
	xorl %ebx, %ebx
	int $0x80
