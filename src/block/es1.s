.global _start
_start:
	
	mv t0,a4
	add t0,t0,a5
	slli t0,t0,3
	la t1,b				
	add t1,t1,t0
	ld t1,0(t1)			
	sub t1,t1,a2		
	
	li t2,12			
	sub t3,t2,a4
	slli t3,t3,3
	la t2,b
	add t2,t2,t3
	
	sd t1,0(t1)
