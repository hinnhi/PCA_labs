.global _start
_start:
	
	li s0,0
	j .L2
	
.L3:
	addi s0,s0,1

.L2:
	slli t0,s0,3
	la t1,v
	add t1,t0,t1
	ld t1,0(t1)
	mv a0,t1
	call f
	bnez a0,.L3

# uint64_t v[4]; //global
#
# uint64_t i; //local, stored in s0

# solution:
#
# while(f(v[i]) > 0) i++;
