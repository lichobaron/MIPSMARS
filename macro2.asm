.macro Fin
li $vo,10 #10 es la llamada a la funcion para finalizar
syscall
.end_macro 
.macro SumaInmediata($rd,$ro,$cte)
add $rd,$ro,$cte
.end_macro