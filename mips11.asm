.data
.eqv BASE 0xFFFF0000
.eqv ROJO 0x00FF0000
.text
li $t1, BASE #Direccion base del display
li $t0, ROJO #Valor rojo
sw $t0, 0($t1) #Enviar color a la memoria
addi $t1, $t1, 4 #Incrementar
sw $t0, 0($t1)
#Pintartoda una fila
li $t1, BASE
addi $t1, $t1, 256 #pasar a la tercera fila
li $t2, 1 #Contador
loop:
sw $t0, 0($t1) #Enviar color a la memoria
addi $t1, $t1, 4 #Incrementar pos de memoria
addi $t2, $t2, 1#Incrementar contador
ble $t2, 32, loop

j fin


fin: 
li $v0, 10
syscall