global _start
_start:
	
	#part 1, b[i+j] - x:
	mv t0,a4
	add t0,t0,a5
	slli t0,t0,3
	la t1,b				#load address
	add t1,t1,t0
	ld t1,0(t1)			#load doubleword
	sub t1,t1,a2		
	
	#part 2, b[12-i]:
	li t2,12			#load imm --> because it is used as minuend
	sub t3,t2,a4
	slli t3,t3,3
	la t2,b
	add t2,t2,t3
	
	#part 3, write in memory:
	sd t1,0(t1)
