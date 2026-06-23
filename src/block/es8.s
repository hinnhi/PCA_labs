.global _start
_start:
	
	mv a4,a2
	mv a5,a3
	add a5,a4,a5
	mv a4,a1
	bgtu a5,a4,.L2
	mv a5,a1
	mv a4,a5
	mv a5,a3
	add a5,a4,a5
	mv a1,a5
	
.L2:
