# given:
#
# #include <stdint.h>
#
# uint64_t  fRef(uint64_t n) { return n + 1; }


# Stack frame information for function 'f':
# - register a0 contains n (size: 8 bytes)

# function prologue
	.text
	.global f
f:
	
# function body
	addi a0,a0,1

# function epilogue
fEPI:
	ret
