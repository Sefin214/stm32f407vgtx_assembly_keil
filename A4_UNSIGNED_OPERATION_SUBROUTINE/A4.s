;Write  a programto  call  two  separate  subroutines  for  doing  unsigned  32  bit  additions  & subtraction.  Initially  load  the parameters  in registers  R0  and  R1  before  calling  subroutine,  in subroutines store the result in general purpose register. 
			AREA MYCODE1,CODE,READONLY
			ENTRY
			EXPORT start
start		PROC
			MOV32 R0,#0X00000005
			MOV32 R1,#0X00000006
			PUSH {R0-R1}
			BL ADDITION
			POP {R0-R1}
			BL SUBTRACTION
			B .
ADDITION    ADD R0,R1
			MOV R2,R0
			MOV PC,LR
SUBTRACTION	SUB R0,R1
			MOV R3,R0
			MOV PC,LR
			ENDP
			END