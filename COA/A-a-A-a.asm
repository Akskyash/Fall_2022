.MODEL SMALL
.STACK 100H
.DATA 

A DB 0AH, 0DH,"Enter a char: $"  
B DB 0AH, 0DH,"Output: $"

.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX    
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BH, AL 
    
    MOV AH,9
    LEA DX,B
    INT 21H
    
    CMP BH, 41h
    JL EXIT
    
    CMP BH, 5Ah
    JG COMP
       
    OR BH, 20h
    MOV AH,2
    MOV DL, BH
    INT 21H
    JMP EXIT
        
    COMP:

    CMP BH, 61h
    JL EXIT
    
    CMP BH, 7Ah
    
    XOR BH, 20h
    MOV AH, 2
    MOV DL, BH
    INT 21H
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN