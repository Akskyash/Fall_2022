.MODEL SMALL
.STACK 100H
.DATA

A DB 0AH, 0DH,"Enter a number: $"
B DB 0AH, 0DH,"The number is Even $"
C DB 0AH, 0DH,"The number is Odd $" 

.CODE  

MAIN PROC
                 
       MOV AX, @DATA
       MOV DS, AX          

       LEA DX, A
       MOV AH, 9
       INT 21H
       
       MOV AH, 1
       INT 21H
       
       MOV BL,2
       DIV BL
       CMP AH,0
       JE EVEN 
       
       LEA DX,C
       MOV AH,9
       INT 21H
       JMP EXIT
       
       EVEN:
       LEA DX, B
       MOV AH,9
       INT 21H
       
       EXIT:
       MOV AH, 4CH
       INT 21H
       MAIN ENDP
END MAIN

