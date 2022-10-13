.MODEL SMALL
.STACK 100H
.DATA
   
 STR1 DB 0AH,0DH, 'ENTER A LOWERCASE LETTER: $'
 STR2 DB 0AH,0DH, 'UPPER-CASE: $'
 STR3 DB 0AH,0DH, 'ENTER A UPPERCASE LETTER: $'
 STR4 DB 0AH,0DH, 'LOWER-CASE: $' 
 
 CHAR1 DB ?,'$' 

.CODE

MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
     
    ;a-A 
    LEA DX,STR1         
    MOV AH,9          
    INT 21H        
   
    MOV AH,1          
    INT 21H          
    SUB AL, 20H         
    MOV CHAR1,AL        
    
    LEA DX,STR2         
    MOV AH,9            
    INT 21H             
        
    MOV DL,CHAR1
    MOV AH,2
    INT 21H
    
    ;A-a
    LEA DX,STR3         
    MOV AH,9          
    INT 21H        
   
    MOV AH,1          
    INT 21H          
    ADD AL, 20H         
    MOV CHAR1,AL        
    
    LEA DX,STR4         
    MOV AH,9            
    INT 21H             
        
    MOV DL,CHAR1
    MOV AH,2
    INT 21H  
    
      
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
     
            
