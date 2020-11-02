.global	_start
_start:
	movq	print_code(%rip),%rax
	pushq	$0		# fake return address to stop unwinder
	pushq	$51	# set correct cs
	pushq	%rax		# target address in negative space
	lretq

.global print_code;
print_code:
    .quad	print