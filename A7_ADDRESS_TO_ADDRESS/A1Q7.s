		AREA MYCODE,CODE, READONLY
		EXPORT start
		ENTRY
start	PROC
		LDR R0,=0X20000100 ; location where 10 bytes is stored
		LDR R1,=0X20000600 ; result stored
		MOV R4,#10; counter	;counter to count down from 10
		MOV R3,#0; carry count
		MOV R2,#0; sum
		STR R4,[R0]
		
LOOP	LDRB R5,[R0],#1 ; ; laoding the value at r0 to r5
		ADDS R2,R2,R5	
		ADC R3,R3,#0	; add with carry
		SUBS R4,R4,#1	;decrement counter
		BNE LOOP
		
		STR R2,[R1]
		STR R3,[R1,#4]
L		B L
		ENDP
		END