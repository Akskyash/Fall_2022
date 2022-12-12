.MODEL SMALL
.STACK 100H
.DATA

A DB 0AH, 0DH,"BEFORE REVERSE: $"
B DB 0AH, 0DH,"AFTER REVERSE: $"
 

.CODE  

MAIN PROC
                 
       MOV AX, @DATA
       MOV DS, AX          

       
       LEA DX, A
       MOV AH, 9
       INT 21H
       
       MOV AH, 1
       MOV DX, 0000H
       MOV CX,0
       
   IP: INT 21H 
       MOV DL,AL
       INC CX
       PUSH DX
       CMP DL,13
       JNE IP
       
       LEA DX, B
       MOV AH, 9
       INT 21H
       
       MOV AH,2
       MOV DL,10
       INT 21H
       MOV DL,13
       
   OP: POP DX
       INT 21H
       LOOP OP
       
       MOV AH, 4CH
       INT 21H
       MAIN ENDP
END MAIN

