.include "mips2.asm"
.data
num: .word 34

.eqv FIN_PROGRAMA 10
.eqv NUM_UNO 5
.text
la $s0, num #direccion
lw $s1, 0($s0) #Dato--> s1= 34
SumaInmediata ($t2,$s1,NUM_UNO)  #t2=s1+5

#fin del programa
Fin
