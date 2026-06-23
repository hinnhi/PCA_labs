.global _start
_start:
	
	li a2,0
	li a1,0
	
.L3:
	li t1,7
	bgt a1,t1,.L2
	mv t0,a1
	slli t0,t0,3
	la t1,v
	add t1,t0,t1
	ld t1,0(t1)
	add a2,t1,a2
	addi a1,a1,1
	j .L3
	
.L2:
	srli a2,a2,3

# solution:
# a = 0;
# i = 0;
# while(i <= 7){
# 	a = a + v[i];
#   i++;
# }
# a = a / 8;
