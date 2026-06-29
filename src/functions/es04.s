.global _start
_start:
	
	ld t0,x
	ld t1,x
	mv a1,t1
	mv a0,t0
	call __muldi3
	mv t2,a0
	ld t1,x
	srli t0,t1,63		#extract sign bits
	add t1,t0,t1		#now my division approximates to zero like C and not to minus infinity
	srai t1,t1,1
	add t0,t2,t1
	la t1,x
	sd t0,0(t1)
	
# solution:
#
# x = x*x + x/2;
