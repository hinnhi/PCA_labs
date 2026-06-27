.global _start
_start:
	
	slli t0,a5,1
	mv t1,a4
	mv t1,t0,t1
	slli t1,t1,3
	la t0,b
	add t0,t0,t1
	ld t0,0(t0)
	mv t1,a2
	slli s1,a4,2
	mv a1,t1
	mv a0,t0
	call __muldi3 	# a0 = b[] * x
	mv t1,a0
	slli t2,s1,3
	la t0,b
	add t0,t2,t0
	sd t1,0(t0) 	# b[ ... ] = b[] * x	
	
	
# solution:
#
# uint64_t b[10];
#
# int main(){
# 	/*...*/
# 	b[i*2] = b[i + j*2] * x;
#	/*...*/
# }
