# given:
#
# #include <stdint.h>
#
# uint64_t  fRef(char *s){ 
# 	uint64_t i;
# 	for (i=0; s[i]; i++);
#	return i;
# }


# Stack frame information for function 'f':
# - register a0 contains s (size: 8 bytes)
# - local var i at stack offset: 0

# function prologue
  .text
	.global f
f:
  addi sp,sp,-8

# function body
  sd zero,0(sp)

for:
  ld t0,0(sp)
  add t0,t0,a0
  lb t1,0(t0)    # char has dimension 1 byte
  beqz t1,endFor
  ld t0,0(sp)
  addi t0,t0,1
  sd t0,0(sp)
  j for
  
endFor:
  ld a0,0(sp)

# function epilogue
fEPI:
  addi sp,sp,8
  ret
