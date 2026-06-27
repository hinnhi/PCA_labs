.global _start
_start:
	
.LC0:
	.string "%d"
	blez a4,.L2
	
	mv a1,a3
	la a0,.LC0
	call pritnf
	j .L3
	
.L2:
	mv a1,a4
	la a0,.LC0
	call printf

.L3:
	
# solution:
#
# if(i>0) 
# 	printf("%d", a);
# else 
# 	printf("%d", i);
