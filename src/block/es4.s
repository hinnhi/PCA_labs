.global _start
_start:
	
	mv a5,a1
	slli a5,a5,1
	mv a4,a2
	add a4,a5,a4
	la t0,v
	sd a4,0(t0)

# solution:
#
# v = 4;
