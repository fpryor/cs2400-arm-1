		;		ARM Programming Assignment #1: 16 bit multiplier
		;
		;		Write a 16-bit multiplier, meaning numbers that have their high 16 bits set to 0.
		;		Use the standard shift-and-add operation.
		;		Note that we cannot address half-words here. We can only address words and bytes (B).
		;		Use the two numbers as an example but write it so it works for any two 16-bit numbers.
		;		Write the result in the provided "fill" word.
		;		Indicate if there was a high-bit carry using the provided "fill" word.
		
		;		Your code here
		        ADR		r0, numbers
                		ADR		r8, carry
                		MOV		r9, #0
                		MOV		r6, #16
                		MOV		r3, #1
                		MOV		r5, #0
                		LDR		r1, [r0]
                		LDR		r2, [r0, #4]
                loop

                		AND		r4, r1, r3
                		SUBS		r4, r4, r3
                		ADDSpl	r5, r5, r2
                		LSLS		r2, r2, #1
                		LSR		r1, r1, #1
                		SUBS		r6, r6, #1
                		BNE		loop
                		ADR		r10, result
                		STR		r5, [r10]
                		ADDpl	r9, r9, #1
                		STR		r9, [r8]
                		END

        numbers	DCD		0b1100101010010001, 0b1111010101000011
        result	FILL		4
        carry	FILL		4
		

