.global _start
_start:
	
.LC0:
	.string "true condition"
	
.LC1:
	.string "false condition"
	
	blez a4,.L2
	la a0,.LC0
	call printf
	j .L3

.L2:
	la a0,.LC1
	call printf

.L3:
	
# solution:
#
# if(i>0) 
# 	printf("true condition");
# else 
# 	printf("false condition");
