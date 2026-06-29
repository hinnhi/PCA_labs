.global _start
_start:
	
	li a4,1
	
.L5:
	mv t0,a4
	li t1,7
	bgt t0,t1,.L4
	mv t0,a4
	slli t0,t0,3
	la t1,v
	add t1,t0,t1
	ld t1,0(t1)
	mv a0,t1
	mv so,a4
	call f
	mv t1,a0
	mv a4,s0
	mv t0,a4
	mv t2,t1
	slli t0,t0,3
	la t1,v
	add t1,t0,t1
	sd t2,0(t1)
	mv t1,a4
	addi t1,t1,1
	mv a4,t1
	j .L5
	
.L4:
	
	
# solution:
#
# int64_t f(int64_t x){
# 	...
# }
# int64_t v[8];
# 
# int main(){
# 	...
# 	for(i=1; i<8; i++){
# 		v[i] = f(v[i]);
#	}
# }
