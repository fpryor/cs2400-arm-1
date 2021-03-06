		;		ARM Programming Assignment #1: Capitalizer
		;
		;		Write a program that goes through the characters in chars,
		;		and Capitalizes every lower-case letter that it finds.
		;		Assume you are given the count of array elements.
		;		Write the number of capitalizations the program performed
		;		In the caps "fill" memory provided.
		
		;		Your code here
		                    ADR		r2, chars
                			ADR		r6,	 caps
                			MOV		r5, #11
                			MOV		r7, #0
                loop
                			LDR		r3, [r2]
                			CMP		r3, #95
                			BGT		capitalize
                			ADD		r2, r2, #4
                			SUBS		r5, r5, #1
                			BNE		loop
                			END

                capitalize
                			SUB		r4, r3, #32
                			STR		r4, [r2]
                			ADD		r2, r2, #4
                			ADD		r7, r7, #1
                			STR		r7, [r6]
                			SUBS		r5, r5, #1
                			B		loop

        chars	DCD		'a', 'B', '5', 'q', '0', 'O', '1', 's', 'b', 'i', 'G'
        caps		FILL		4

		

