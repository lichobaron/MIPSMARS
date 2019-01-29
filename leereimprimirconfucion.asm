
.text
jal leer_numero
jal imprimir_num
li $v0,10
syscall
leer_numero:
li $v0,5
syscall
add $s1,$v0,$zero
jr $ra
imprimir_num:
li $v0,1
add $a0,$s1,$zero
syscall
jr $ra


