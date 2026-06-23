.global _start
_start:
	
	mv a5,a1
	beqz a5,.L2
	li a4,1
	beq a5,a4,.L3
	j .L7
	
.L2:
	addi a3,a3,1
	j .L5
	
.L3:
	mv a3,a2
	j .L5
	
.L7:
	li a3,0

.L5:

# solution:
#
# switch(a){
# 	case 0: c++; break;
#   case 1: c=b; break;
#   default: c=0;
# }
