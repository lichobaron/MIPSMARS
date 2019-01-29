	.data
num1:	.word 4
texto:	.asciiz "Cantidad de unos: "
	.text
main:
	la $t2,num1
	lw $s0,0($t2)
	li $v0,5
	syscall
	add $s1,$v0,$s0
	addi $s2,$zero,1
	division:
		beq  $s1,1,imprimirMensaje
		add $s4,$s1,$zero
		div  $s1,$s1,2,
		resto:
			mul $s3,$s1,2
			sub $s5,$s4,$s3
			beq $s5,1,sumarUnos
			j division
			sumarUnos:
				addi $s2,$s2,1
				j division
	imprimirMensaje:
		li $v0,4
		la $a0,texto
		syscall
		li $v0,1
		add $a0,$s2,$zero
		syscall
	finalizarProg:
		li $v0,10
		syscall

	
