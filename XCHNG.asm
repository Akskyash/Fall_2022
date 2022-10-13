.MODEL SMALL
.STACK 100H
.DATA
   
 STR1 DB 0AH,0DH, 'ENTER THE INPUT: $'
 STR2 DB 0AH,0DH, 'ENTER THE INPUT: $'
 STR3 DB 0AH,0DH, 'AFTER XCHANGE: $'
 
 CHAR1 DB ?, '$'
 CHAR2 DB ?, '$'

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
     
    LEA DX,STR1         
    MOV AH,9          
    INT 21H
    
    ;
    MOV AH,1          
    INT 21H                   
    MOV CHAR1,AL        
   
    LEA DX,STR2         
    MOV AH,9            
    INT 21H 
    
    ;
    MOV AH,1          
    INT 21H                   
    MOV CHAR2,AL
                   
    LEA DX,STR3         
    MOV AH,9          
    INT 21H 
    
    MOV BH,CHAR1
    XCHG BH, CHAR2
    MOV CHAR1, BH
               
   
    MOV DL,CHAR1
    MOV AH,2
    INT 21H 
    
    MOV DL,CHAR2
    MOV AH,2
    INT 21H 
    
    
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
     
    
    
            
