;Push the contents of registers R0-R5, R14 and PSR on the stack and pop them back into the registers R7-R12, R14 and PSR respectively.	
;Note: before  pushing  setup  your  stack  and  load some  values  in  registers.
				AREA MYCODE1,CODE,READONLY
				ENTRY
				EXPORT start
start			PROC
				MOV32 R0,#0X00000001
				MOV32 R1,#0X00000002
				MOV32 R2,#0X00000003
				MOV32 R3,#0X00000004
				MOV32 R4,#0X00000005
				MOV32 R5,#0X00000006
				PUSH {R0-R5}
				PUSH {R14}
				MRS R0,APSR
				PUSH{R0}
				POP {R0}
				MSR APSR,R0
				POP {R14}
				POP {R7-R12}
				B .
				ENDP
				END