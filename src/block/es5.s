.global _start
_start:

	#uit64_t x[3] = {1, 2, 3};
	
	la a5,x
	ld a4,16(a5)
	ld a5,8(a5)
	add a4,a4,a5
	ld a5,x
	add a5,a4,a5
	li a1,3
	mv a0,a5
	call __udivdi3
	mv a5,a0
	mv a4,a5
	la a5,x
	sd a4,16(a5)
	
	#uint64_t x[3] = {1, 2, 2};
