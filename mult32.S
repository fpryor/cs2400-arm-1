		;		ARM Programming Assignment #1: 32 bit multiplier
		;
		;		Write a 32-bit multiplier.
		;		Use the standard shift-and-add operation.
		;		Use the two numbers as an example but write it so it works for any two 16-bit numbers.
		;		Write the result in the provided "fill" word.
		;		Indicate if there was a high-bit carry using the provided "fill" word.
		
		;		Your code here

		ADR		r0, numbers

		LDR		r1, [r0]
		LDR		r2, [r0, #4]
		MOV		r3, #0
		MOV		r4, #0
		MOV		r5, #0
loop
		TST		r2, #1
		BEQ		shift
		ADDS	r4, r4, r1
		ADC		r5, r5, r3
shift
		LSR		r2, r2, #1
		LSLS	r1, r1, #1
		ADC		r3, r3, #0
		CMP		r2, #0
		BGT		loop
		ADR		r0, result
		STR		r4, [r0]
		ADR		r0, carry
		STR		r5, [r0]
		END

numbers	DCD		0xA0BCFF0D, 0xFFF0ADEA
result			FILL		8
carry			FILL		4



