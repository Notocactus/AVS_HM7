.macro CountNum(%n, %i)
	li 	t0, 16
	
	blt 	%n, t0, end
	rem 	%n, %n, t0
	addi 	%i, %i, 1 # the number is larger than 16
	end:  
.end_macro

.macro CountDis(%n, %i, %r)
	li	t3, 1
	li	t0, 0
	
	bgt	%n, t0, One
	li	%r, 0x3f
	beq	%i, t3, Dot
	b 	end
	One: 
	addi	t0, t0, 1
	bgt	%n, t0, Two
	li	%r, 0x6
	beq	%i, t3, Dot
	b 	end
	Two: 
	addi	t0, t0, 1
	bgt	%n, t0, Three
	li	%r, 0x5b
	beq	%i, t3, Dot
	b 	end
	Three:
	addi	t0, t0, 1
	bgt	%n, t0, Four
	li	%r, 0x4f
	beq	%i, t3, Dot
	b 	end
	Four: 
	addi	t0, t0, 1
	bgt	%n, t0, Five
	li	%r, 0x66
	beq	%i, t3, Dot
	b 	end
	Five: 
	addi	t0, t0, 1
	bgt	%n, t0, Six
	li	%r, 0x6d
	beq	%i, t3, Dot
	b 	end
	Six: 
	addi	t0, t0, 1
	bgt	%n, t0, Seven
	li	%r, 0x7d
	beq	%i, t3, Dot
	b 	end
	Seven: 	
	addi	t0, t0, 1
	bgt	%n, t0, Eight
	li	%r, 0x7
	beq	%i, t3, Dot
	b 	end
	Eight: 
	addi	t0, t0, 1
	bgt	%n, t0, Nine
	li	%r, 0x7f
	beq	%i, t3, Dot
	b 	end
	Nine: 
	addi	t0, t0, 1
	bgt	%n, t0, Ten
	li	%r, 0x6f
	beq	%i, t3, Dot
	b 	end
	Ten:
	addi	t0, t0, 1
	bgt	%n, t0, Eleven
	li	%r, 0x77
	beq	%i, t3, Dot
	b 	end
	Eleven: 
	addi	t0, t0, 1
	bgt	%n, t0, Twelve
	li	%r, 0x7c
	beq	%i, t3, Dot
	b 	end
	Twelve:
	addi	t0, t0, 1
	bgt	%n, t0, Thirteen
	li	%r, 0x39
	beq	%i, t3, Dot
	b 	end
	Thirteen:
	addi	t0, t0, 1
	bgt	%n, t0, Fourteen
	li	%r, 0x5e
	beq	%i, t3, Dot
	b 	end
	Fourteen:
	addi	t0, t0, 1
	bgt	%n, t0, Fifteen
	li	%r, 0x79
	beq	%i, t3, Dot
	b 	end
	Fifteen:
	addi	t0, t0, 1
	li	%r, 0x71
	beq	%i, t3, Dot
	b 	end
	
	Dot: 
	li	t3, 0x80
	add	%r, %r, t3
	b 	end
	end:
.end_macro

.macro Push(%x)
	addi	sp, sp, -4
	sw	%x, (sp)
.end_macro

.macro Pop(%x)
	lw	%x, (sp)
	addi	sp, sp, 4
.end_macro
