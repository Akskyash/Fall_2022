.MODEL SMALL
.STACK 100H
.DATA ;VARIABLE
A DB 0AH,0DH, "Name: Asif Sharif Akash $" 
B DB 0AH,0DH, "ID: 20-42647-1 $"   
C DB 0AH,0DH, "Dept: CSE $" 
D DB 0AH,0DH, "Course: COA $"   


.CODE
MAIN PROC
    ;1 FOR SINGLE USER INPUT
    ;2 FOR SINGLE OUTPUT
    ;9 FOR STRING OUTPUT
    
    MOV AX,@DATA
    MOV DS,AX  
    
     ;STRING 1 
    MOV AH,9
    LEA DX,A
    INT 21H
    
     ;STRING 2 
    MOV AH,9
    LEA DX,B
    INT 21H
     
     ;STRING 3 
    MOV AH,9
    LEA DX,C
    INT 21H 
    
    ;STRING 4 
    MOV AH,9
    LEA DX,D
    INT 21H   
     
     ;EXIT
    MOV AH,4CH 
    INT 21H
    MAIN ENDP
END
    