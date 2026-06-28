# given:
#
# /* Calculate the number of steps to solve the Hanoi problem */
#
# #include <stdint.h>
#
# uint64_t  fRef(uint64_t n){ 
# 	if (n == 1)
#		return 1;
#	else
#		return 2 * fRef(n - 1) + 1;
# }


# Stack frame information for function 'f':
# - register a0 contains n (size: 8 bytes)
# - local reg ra at stack offset: 0

# function prologue
	.text
	.global f
f:
	addi sp,sp,-8
	sd ra,0(sp)
	
# function body
	li t0,1
	beq a0,t0,Then
	
Else:
	addi a0,a0,-1
	call f
	slli a0,a0,1
	addi a0,a0,1
	j fEPI

Then:
	li a0,1
	j fEPI
	
# function epilogue
fEPI:
	ld ra,0(sp)
	addi sp,sp,8
	ret
