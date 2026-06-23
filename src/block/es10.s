.global _start
_start:
	
	la a5,w
	la a3,v
	slli a4,t0,3
	add a5,a4,a5
	add a4,a4,a3
	ld a2,0(a5)
	ld a3,0(a4)
	bne a2,a3,.L4
	ld t0,0(a5)
	ld a5,0(a4)
	add t0,t0,a5
	
.L4:

# uint64_t v[4]; //global
# uint64_t w[4]; //global
#
# uint64_t i; //local, stored in t0
