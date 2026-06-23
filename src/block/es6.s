.global _start
_start:

	la a4,x
	ld a5,0(a4)
	ld a2,8(a4)
	ld a3,16(a4)
	ld a4,24(a4)
	sub a5,zero,a5
	slli a5,a5,1
	add a5,a5,a2
	slli a5,a5,1
	add a5,a5,a3
	slli a5,a5,1
	add a5,a5,a4
	la t0,c
	sd a5,0(t0)
