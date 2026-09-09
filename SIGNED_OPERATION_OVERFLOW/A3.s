;Write a program to do 32-bit signed additions and 32 bit signed subtraction and take care if there are overflows.
						AREA MYCODE,CODE,READONLY
						EXPORT start
						ENTRY
start 					PROC
						MOV32 R0,#0X7FFFFFFF
						MOV32 R1,#0X00000002
						ADDS R0,R1
						BVS OVERFLOW_ADDITION
CONTINUE				SUBS R0,R1
						BVS OVERFLOW_SUBTRACTION
L1						B L1
OVERFLOW_ADDITION 		MOV R2,#1
						B CONTINUE
OVERFLOW_SUBTRACTION	MOV R3,#1
						B L1
						ENDP
						END