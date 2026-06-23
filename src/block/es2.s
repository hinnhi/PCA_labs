.global _start
_start:
	
	mv t0,a2
	slli t1,t0,1
	mv t0,a3
	slli t0,t0,1
	add t0,t0,1
	add t0,t1,a3
	mv t1,a1
	add t1,t0,t1
	mv t0,a4
	slli t0,t0,2
	add t0,t1,t0
	srli t1,t0,2
	la t0,v
	sd t1,0(t0)

# solution:
#
# v[0] = (a + 2*b + 3*c + 4*d)/4;
