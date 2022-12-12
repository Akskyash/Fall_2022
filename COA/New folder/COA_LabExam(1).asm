.MODEL SMALL
.STACK 100H
.DATA 

STR1 DB 0AH,0DH, 'Enter number: $'
STR2 DB 0AH,0DH, 'The number is greater than 9 $'   
STR3 DB 0AH,0DH, 'The number is lesser than 9 $'  
STR4 DB 0AH,0DH, 'Equals to 9 $'

.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX    
    
    MOV CL,9
     
    LEA DX,STR1
    MOV AH,9H
    INT 21H
     
    MOV AH,1
    INT 21H
    MOV DL,AL
    SUB DL, 30H
    
    CMP CL, DL
    JL GREATER 
    JG LOWER
    JE EQUAL 
        
    GREATER:
        LEA DX,STR2
        MOV AH,9H
        INT 21H
        JMP EXIT
        
    LOWER:
        LEA DX,STR3
        MOV AH,9H
        INT 21H
        JMP EXIT
        
    EQUAL:
        LEA DX,STR4
        MOV AH,9H
        INT 21H
        JMP EXIT
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN