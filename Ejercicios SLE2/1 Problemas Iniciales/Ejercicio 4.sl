var
	W_VAR1 = 0
	W_VAR2 = 0
	W_VAR3 = 0
	W_VAR4 = 0
	W_VAR5 = 0
	W_VAR6 = 0
	W_VAR7 = 0

inicio
	imprimir ("Ingrese 5 variables:\n")
	leer (W_VAR1, W_VAR2, W_VAR3, W_VAR4, W_VAR5)
	W_VAR6 = W_VAR1 * W_VAR2
	W_VAR6 = W_VAR6 + W_VAR3 +W_VAR4 + W_VAR5
	imprimir ("El resultado parcial es: \t", W_VAR6)
	W_VAR7 = (W_VAR6 / 2) + W_VAR6
	imprimir ("El resultado final es: \t", W_VAR7)
fin