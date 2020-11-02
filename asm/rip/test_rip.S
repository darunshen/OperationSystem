loadflags:
		.byte	8
.global	_start

_start:
		leaq	loadflags(%rip), %rdi
		leaq	loadflags, %rbx
1:
		jmp 1b
