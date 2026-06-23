.global _start
_start:
	
.L3:
	blez a1,.L2
	add a1,a1,a2
	j .L3
	
.L2:

# solution:
#
# while(a > 0){
# 	a = a + b;
# }
