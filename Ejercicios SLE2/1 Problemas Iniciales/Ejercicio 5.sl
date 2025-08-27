var
	W_VAR1 = 0
	W_VAR2 = 0
	W_VAR3 = 0
	W_VAR4 = 0
	W_VAR5 = 0
inicio
	imprimir ("Ingrese 4 variables:\n")
	leer (W_VAR1, W_VAR2, W_VAR3, W_VAR4)
	W_VAR5 = W_VAR1
	W_VAR1 = (W_VAR1 + W_VAR2) * W_VAR3
	imprimir ("El resultado parcial es: \t", W_VAR1)
	W_VAR2 = (W_VAR1 - W_VAR4) * W_VAR5
	imprimir ("\nEl resultado final es: \t", W_VAR2)
fin