.text
main:
	li 	a0, 1 # Display number
	li 	a1, 0 # Right(0) or Left(1)
	li	a4, 2
	
	loop: 
	mv	s0, a0
	li	a2, 0 # No dot(0) or with dot(1)
	
	jal DisplayNum
	
	li	a7, 32 #call the waiting for 1 second
	li	a0, 1000
	ecall
	
	addi	a0, s0, 1
	addi	a1, a1, 1
	rem	a1, a1, a4
	
	b 	loop
	
	