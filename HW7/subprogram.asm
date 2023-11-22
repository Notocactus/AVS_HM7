.include "macro.asm"
.global DisplayNum

.text
DisplayNum: 
	mv 	a3, a0
	CountNum(a3, a2)
	
	CountDis(a3, a2, t1)
	
	lui	t3, 0xffff0    # MMIO address high half
	li	t2, 0x0
	
	beqz	a1, Right
	Left:
	sb      t1, 0x11(t3)
	sb 	t2, 0x10(t3)
	b 	fin
	
	Right: 
    	sb      t1, 0x10(t3)
    	sb	t2, 0x11(t3) 
    	
    	fin: 
    	ret
    	
    	
