.data
texto2:	.asciiz "hola"	#Cadena con terminador nulo
texto:	.asciiz
.text
#Llamada al sistema
li $v0, 8 #Llamada para leer una cadena de caracteres
la $a0, texto #Cargar direccion del buffer de lectura
li $a1, 10 #Numero de caracteres a leer
syscall #Hacer la llamada para leer el texto
#Imprimir el texto leido
li $v0, 4 #Lamada para imprimir
la $a0, texto #Direccion de la cadena que vamos a leer
syscall
li $v0, 4 #Lamada para imprimir
la $a0, texto2 #Direccion de la cadena que vamos a leer
syscall
la $t0, texto
lb $t1, 0($t0)
addi $t0, $t0, 1
lb $t1, 0($t0)
li $t5, 0
sb $t5, 0($t0)

	li $v0,10	#Llamada para finalizar
	syscall