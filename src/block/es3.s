.global _start
_start:
	
	ld a4,v
	li a0,0
	ld a5,8(a4)
	ld a3,16(a4)
	add a5,a5,a3
	srli a5,a5,1
	sd a5,0(a4)

# solution:
#
# v[0] = (v[1] + v[2])/2;
