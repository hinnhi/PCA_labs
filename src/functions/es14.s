# given:
#
# /* To convert (x % y) use: __umoddi(x,y); */
#
# #include <stdint.h>
#
# uint64_t  fRef(char *s){ 
# 	if (s[0])
#		return fRef(&s[1]) + 1;
#	else
#		return 0;
# }


# Stack frame information for function 'f':
# - register a0 contains s (size: 8 bytes)
# - saved reg ra at stack offset: 0

# function prologue
	.text
	.global f
f:
	addi sp,sp,-8
	sd ra,0(sp)
	
# function body
	lbu t0,0(a0)
	beqz t0,Then
	
Else:
	li a0,0
	j fEPI

Then:
	addi a0,a0,1
	call f
	addi a0,a0,1
	j fEPI
	
# function epilogue
fEPI:
	ld ra,0(sp)
	addi sp,sp,8
	ret
