#Comentarios
	.data	#Zona de datos
numUno:	.word	4	#Entero de 32 bits
numDos:	.word	5	#Entero de 32 bits
texto:	.asciiz "hola MIPS\n"	#Cadena con terminador nulo

	.text	#Zona de programa
main:	
	la $s0,numUno	#Cargar dirección de numUno
	lw $s1,0($s0)	#Cargar dato numUno
	la $s0,numDos	#Cargar dirección de numDos
	lw $s2,0($s0)	#Cargar dato numDos
	add $t0,$s1,$s2	#t0 = s1 + s2
	addi $t0,$t0,30	#t0 = t0 + 30
	beq $t0,24,label
	j otroLabel
label:
	and $t1,$s2,$s1
	j finalizar
otroLabel:
	li $v0,4	#Llamada para imprimir string
	la $a0,texto	#Cargar dirección de texto
	syscall		#Imprimir la cadena
	li $v0,1	#Llamada para imprimir entero
	add $a0,$t0,$zero
	syscall		#Imprimir el número
	sll $t0,$t0,4
	j leerNumero
finalizar:
	li $v0,10	#Llamada para finalizar
	syscall
leerNumero:
	li $v0,5	#Llamada para leer entero
	syscall
	add $s4,$v0,$zero