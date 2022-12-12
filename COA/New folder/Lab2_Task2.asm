.MODEL SMALL
.STACK 100H
.DATA ;VARIABLE
A DB 0AH,0DH, "Enter Character 1: $" 
B DB 0AH,0DH, "Enter Character 2: $"   
C DB 0AH,0DH, "Output: $" 
  
.CODE
MAIN PROC
    ;1 FOR SINGLE USER INPUT
    ;2 FOR SINGLE OUTPUT
    ;9 FOR STRING OUTPUT
    
    MOV AX,@DATA
    MOV DS,AX  
    
    ;Character 1    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    ;input 1 user
    MOV AH,1
    INT 21H
    MOV BH,AL

     
    ;Character 2  
    MOV AH,9
    LEA DX,B
    INT 21H
       
    ;input 2 user
    MOV AH,1
    INT 21H
    MOV CH,AL
   
    
    ;Output          
    MOV AH,9
    LEA DX,C
    INT 21H
                
    MOV AH,2
    MOV DL,BH
    INT 21H
         
    ;string output B  
   
    MOV AH,2
    MOV DL,CH
    INT 21H
         
 
    ;EXIT
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END
    