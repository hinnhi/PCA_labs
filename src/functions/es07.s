# given:
#
# #include <stdint.h>
#
# uint64_t  fRef(uint64_t n){ 
# 	uint64_t q = n;
#	q = q + 1;
#	return q;
# }


# Stack frame information for function 'f':
# - register a0 contains n (size: 8 bytes)
# - local var q at stack offset: 0

# function prologue
	.text
	.global f
f:
	addi sp,sp,-8
	
# function body
	sd a0,0(sp)
	ld a1,0(sp)
	addi a1,a1,1
	sd a1,0(sp)
	mv a0,a1

# function epilogue
fEPI:
	addi sp,sp,8
	ret
