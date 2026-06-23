.global _start
_start:
	
	li s1,0
	li s0,v
	j .L2
	
.L3:
	slli t0,s0,3
	la t1,w
	add t1,t0,t1
	ld t0,0(t1)
	
	slli t2,s0,3
	la t1,v
	add t1,t2,t1
	ld t1,0(t1)
	
	add t1,t0,t1
	mv a0,t1
	
	call f
	mv t1,a0
	srli t1,t1,2
	add  s1,s1,t1
	addi s0,s0,1

.L2:
	li t1,3
	bleu s0,t1,.L3

# uint64_t v[4]; //global
# uint64_t w[4]; //global
#
# uint64_t i; //local, stored in s0
# uint64_t a; //local, stored in s1

# solution:
#
# for(i=0, a=0; i<=3; i++){
# 	a = a + f(w[i] + v[i])/4;
# }
